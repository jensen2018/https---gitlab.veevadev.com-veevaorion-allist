#!/usr/bin/python
# -*- coding: utf-8 -*-
import functools
import datetime
import time
from orion.common.advanced_action import custom_advanced_action_factory, AbstractCustomAdvancedAction
from orionbase.common import models
from django.db import connection
from orionbase.common.orion_function import *
from orionbase.common.orion_function import send_email_notification
from email.mime.text import MIMEText
import json
import logging
import paramiko
import os
import re
import unicodecsv as csv
from orion.common.notification import Notification, Message
from orionbase.common.orion_function import get_connection
logger = logging.getLogger('orion.advanced_action')

DOWN_DIR_NAME = "ftp_download"
ERROR_DIR_NAME = "error_upload"
REMOTE_PATH = "/data/tths"
SUCCESS_PATH_REGISTER = "/data/tths/success"
FAIL_PATH_REGISTER = "/data/tths/fail"
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
LOCAL_PATH = os.path.join(BASE_DIR, DOWN_DIR_NAME)
LOCAL_PATH_ERR = os.path.join(BASE_DIR, ERROR_DIR_NAME)



def log_function_call(logger_function):
    def decorator(f):
        @functools.wraps(f)
        def _(*args, **kwargs):
            logger_function('Start calling %s', f.__name__)
            rv = f(*args, **kwargs)
            logger_function('Finish %s', f.__name__)
            return rv
        return
    return decorator


@custom_advanced_action_factory.register('tth_cs_import')
class ImportTTHs(AbstractCustomAdvancedAction):
    """
     AdvancedActionResult = namedtuple('AdvancedActionResult',['status','message','data'])
     data：业务函数返回结果，需要与前端协调
     message: 提示信息
     status: SUCCESS/ERROR
    """
    def __init__(self, request, action, config=None):
        self.user_id = get_current_user().user_id
        super(ImportTTHs, self).__init__(request, action, config)
        params = request.query_params["page_params"]
        dictparams = json.loads(params)
        if 'primary-filter' in dictparams.keys():
            primary_filter = json.loads(dictparams['primary-filter'])
            self.yearmonth =  primary_filter.get('value')[0]
        else:
            # 默认当前月
            self.yearmonth = datetime.datetime.now().strftime("%Y-%m")


    def process(self):
        try:
            save_obj = SaveDatabase(self.user_id,self.yearmonth)
            result,messages = save_obj.import_tths_data()
            if result == 'success':
                message = u'%s流向数据导入成功,关闭后自动刷新页面.'%(self.yearmonth)
                return self.AdvancedActionResult('SUCCESS', message, [])
            elif result == 'fail':
                message = u'%s流向数据导入失败,%s' % (self.yearmonth,messages)
                return self.AdvancedActionResult('SUCCESS', message, [])
        except Exception as e:
            logger.info(e, exc_info=True)
            logger.error('fail to import tths data')
            logger.error(e)
            message = u'%s流向数据导入失败,失败原因: %s,请重试.'%(self.yearmonth,e.message)
            return self.AdvancedActionResult('ERROR', message, [])


class SaveDatabase(object):

    def __init__(self,user_id,yearmonth):
        self.db = self.get_conn()
        self.user_id = user_id
        self.yearmonth = yearmonth
        self.account = self.get_account_type_dict()
        self.package = self.get_package_dic()


    def get_conn(self):
        try:
            conn = get_connection()
            return conn
        except Exception as e:
            raise Exception("Error connecting Database server,Please try again!")

    def commit_db(self):
        self.db.commit()

    def close_cursor(self):
        self.cursor.close()

    def close_db(self):
        self.db.close()


    def get_sftp_info(self):
        sql_fmt = "select `value` from `cs_custom_settings` where `key` = 'SFTP_INFO' and deleted = 0"
        with get_connection().cursor() as cursor:
            cursor.execute(sql_fmt)
            rows = cursor.fetchone()
            if rows:
                return json.loads(rows[0])
        return None

    def sent_message_info(self):
        sql_fmt = "select `value` from `cs_custom_settings` where `key` = 'sent_message' and deleted = 0"
        with get_connection().cursor() as cursor:
            cursor.execute(sql_fmt)
            rows = cursor.fetchone()
            if rows:
                return eval(rows[0])
        return None

    def get_account_type_dict(self):
        account_dic = dict(models.Accounts.objects.filter(deleted=0,record_type__name__in=('factory', 'hospital', 'pharma', 'distributor')).values_list('external_id', 'id'))
        return account_dic

    def get_package_dic(self):
        packages_dic = dict(models.Packages.objects.filter(deleted=0).values_list('package_code','id'))
        return packages_dic

    def isVaildDate(self,date, by_month=True):
        if by_month:
            try:
                datetime.datetime.strptime(date, "%Y-%m")
                return True
            except:
                return False
        else:
            try:
                datetime.datetime.strptime(date, "%Y-%m-%d")
                return True
            except:
                return False


    def validation_row(self,row):
        error_message = ''
        if not row['transaction_date'] or not self.isVaildDate(row['transaction_date'], by_month=False):
            error_message += u'transaction_date格式错误;'
        if not row['buyer'] or row['buyer'] not in self.account.keys():
            error_message += u'buyer不存在;'
        if not row['package'] or row['package'] not in self.package.keys():
            error_message += u'package不存在;'
        return error_message


    def import_tths_data(self):
        logger.info('start import tths data. yearmonth:: %s', self.yearmonth)
        # 获取SFTP信息
        sftp_info = self.get_sftp_info()
        sent_message_list = self.sent_message_info()
        if not sftp_info:
            logger.error('Not find sftp info!')
        # 从SFTP 下载csv文件到本地
        tans_obj = SftpRetr(host=sftp_info['SFTP_HOST'], port=int(sftp_info['SFTP_PORT']),
                            username=sftp_info['SFTP_USER'], password=sftp_info['SFTP_PASS'])
        tans_obj.get_trans()
        download_field = tans_obj.download_file(remotepath=REMOTE_PATH, localpath=LOCAL_PATH)
        logger.info('End download sftp file')
        if download_field:
            file_path = os.path.join(BASE_DIR, DOWN_DIR_NAME, download_field)
            files = read_csv(file_path)
            # 保存csv文件中数据到cs_tths
            has_error,import_id = self.save_tth_import_data(files)
            # 如果文件有错误，则返回错误数据，并发送邮件通知
            if has_error:
                error_filename = self.create_err_csv(filename=download_field,import_id=import_id)
                tans_obj.upload_file(remotepath=FAIL_PATH_REGISTER, localpath=LOCAL_PATH_ERR, filename=error_filename)
                # 操作完成之后将已处理文件删除
                tans_obj.delete(remotepath=REMOTE_PATH, filename=download_field)
                title = u"流向接口数据导入失败"
                message = u"失败文件名 - %s"% (error_filename)
                if sent_message_list:
                    send_email_notification('tth', import_id, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
                result = 'fail'
                return result, message
            # 如果文件内容正确，则插入到tths中并发送邮件通知
            else:
                self.save_correct_data(file_path)
                # 操作完成之后将已处理文件移动到success文件夹中
                tans_obj.move_file(oldpath=REMOTE_PATH, newpath=SUCCESS_PATH_REGISTER, filename=download_field)
                title = u"流向接口数据导入成功"
                message = u"成功文件名 - %s"% (download_field)
                if sent_message_list:
                    send_email_notification('tth', import_id, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
                result = 'success'
                return result,message
        else:
            # 如果没有找到文件，则发送邮件通知
            title = u"流向接口数据导入失败"
            message = u"失败原因:文件下载失败，请检查流向数据是否上传到SFTP或网络!"
            if sent_message_list:
                send_email_notification('tth', None, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
            result = 'fail'
            return result,message


    def step_prepare(self,compensation_data):
        month_list = []
        for item in compensation_data:
            if datetime.datetime.strptime(item['transaction_date'],'%Y-%m-%d').strftime('%Y-%m') not in month_list:
                month_list.append(datetime.datetime.strptime(item['transaction_date'],'%Y-%m-%d').strftime('%Y-%m'))
        # 如果sales_states中沒有对应月份，此处应该新建
        for month in month_list:
            if not models.SalesStates.objects.filter(yearmonth=month).exists():
                sales_state = models.SalesStates(
                    yearmonth=month,
                    deleted=0,
                    created_by=models.User.objects.get(id=1),
                    modified_by=models.User.objects.get(id=1),
                    state_id=models.PicklistValues.objects.get(
                        picklist__name=models.SalesStates.STATE_PICKLIST_NAME,
                        name=models.SalesStates.INITIAL),
                    has_tth_relations=False
                )
                sales_state.save()
        logger.info("Start clear tths data!")
        self.cursor = self.db.cursor()
        self.cursor.execute("""DELETE FROM tths WHERE yearmonth in %s""", (month_list,))
        self.close_cursor()
        self.commit_db()
        logger.info("End clear tths data!")


    def save_tth_import_data(self, tth_data):
        has_error = False
        self.cursor = self.db.cursor()
        self.cursor.execute("""SELECT IFNULL(MAX(`import_id`),0) FROM `cs_tths` WHERE `deleted`='0'""")
        row = self.cursor.fetchone()
        max_import_id = row[0] if row else 0
        import_id = int(max_import_id) + 1
        logger.info("Start save import data")
        txt = ''
        value_list = []
        insert_sql = """
INSERT INTO `cs_tths` (`deleted`, `created_on`, `created_by`, `transaction_date`,`seller`,`seller_code`, `buyer`,`buyer_id`,`package`, `package_id`, `quantity`, `price`,`error_msg`,`import_id`) \
VALUES """
        insert_value = u"""
('{deleted}', NOW(), '{created_by}','{transaction_date}', '{seller}','{seller_code}','{buyer}','{buyer_id}','{package}','{package_id}','{quantity}', '{price}','{error_msg}','{import_id}')"""
        for item in tth_data:
            error_message = self.validation_row(item)
            if error_message:
                has_error = True
            insert_args = insert_value.format(
                deleted = 0,
                created_by = self.user_id or 1,
                transaction_date=item['transaction_date'] or 'None',
                seller = item['seller'] or 'None',
                seller_code = item['seller_code'] or 'None',
                buyer = item['buyer'] or 'None',
                buyer_id = self.account.get(item['buyer']) or 'None',
                package = item['package'] or 'None',
                package_id = self.package.get(item['package']) or 'None',
                quantity = item['quantity'] or 'None',
                price = 'None',
                error_msg = error_message,
                import_id = import_id
            )
            value_list.append(insert_args)
            if len(value_list) >= 1000:
                txt += insert_sql + ','.join(value_list) + ';\n'
                self.cursor.execute(txt.replace("'None'", 'NULL'))
                self.cursor.close()
                self.db.commit()
                value_list = []

        if len(value_list):
            txt += insert_sql + ','.join(value_list) + ';\n'
            self.cursor.execute(txt.replace("'None'", 'NULL'))
            self.cursor.close()
            self.db.commit()
        logger.info("End of Save cs_tths import data")
        return has_error,import_id


    def save_correct_data(self, file_path):
        # 先清除已经存在的流向数据
        compensation_data = read_csv(file_path)
        self.step_prepare(compensation_data)
        logger.info("Start save correct tth data")
        txt = ''
        value_list = []
        insert_sql = """
INSERT INTO `tths` (`deleted`,`created_on`, `modified_on`, `created_by`, `modified_by`,`owner`,`transaction_date`,`yearmonth`,`seller_id`,`text_1`,`text_2`, `buyer_id`, `package_id`,`quantity`,`price`) VALUES """
        insert_value = u"""
('{deleted}', NOW(),NOW(), '{created_by}', '{modified_by}', '{owner}', '{transaction_date}','{yearmonth}','{seller_id}', '{seller}','{seller_code}', '{buyer}', '{package}', '{quantity}', '{price}')"""
        compensation_data = read_csv(file_path)
        for item in compensation_data:
            insert_args = insert_value.format(
                deleted = 0,
                created_by = self.user_id or 1,
                modified_by = self.user_id or 1,
                owner = self.user_id or 1,
                transaction_date = item['transaction_date'] or 'None',
                yearmonth = datetime.datetime.strptime(item['transaction_date'],'%Y-%m-%d').strftime('%Y-%m'),
                seller_id = 1,
                seller = item['seller'] or 'None',
                seller_code = item['seller_code'] or 'None',
                buyer = self.account.get(item['buyer']),
                package = self.package.get(item['package']),
                quantity = item['quantity'],
                price = 'None'
            )
            value_list.append(insert_args)
            if len(value_list) >= 1000:
                txt += insert_sql + ','.join(value_list) + ';\n'
                self.cursor = self.db.cursor()
                self.cursor.execute(txt.replace("'None'", 'NULL'))
                value_list = []
        if len(value_list):
            txt += insert_sql + ','.join(value_list) + ';\n'
            self.cursor = self.db.cursor()
            self.cursor.execute(txt.replace("'None'", 'NULL'))
            self.cursor.close()
            self.db.commit()
        logger.info("End of Save tth data")


    def create_err_csv(self,filename,import_id):
        logger.info('Start create_error_csv.')
        # tths_errors_201908190600_tth_YYYYMMDDhhmm.csv
        file_name = 'errors' + time.strftime('%Y%m%d%H%M') + '_' + filename
        err_local_path = LOCAL_PATH_ERR
        if not os.path.isdir(err_local_path):
            os.makedirs(err_local_path)
        file_path = os.path.join(err_local_path, file_name)
        with open(file_path, "wb") as f:
            self.cursor = self.db.cursor()
            select_err_sql = """
                SELECT 
                    `error_msg`,
                    `transaction_date`,
                    `seller`, 
                    `seller_code`, 
                    `buyer`,
                    `package`,
                    `quantity`
                FROM
                    `cs_tths` WHERE `import_id`=%s"""
            self.cursor.execute(select_err_sql,(import_id,))
            err_data = self.cursor.fetchall()
            self.close_cursor()
            csv_writer = csv.writer(f)
            if err_data:
                fields = ["错误原因", "transaction_date", "seller","seller_code", "buyer", "package", "quantity"]
                csv_writer.writerow(fields)
                for row in err_data:
                    csv_writer.writerow(row)
        return file_name


class SftpRetr(object):
    """
    from SFTP Server download files
    """

    def __init__(self, host, username, password, port=22):
        self.host = host
        self.port = port
        self.username = username
        self.password = password
        self._sftp = None

    def get_trans(self):
        """
        create SFTP connect and login Server
        :return:
        """
        try:
            trans = paramiko.Transport((self.host, self.port))
        except Exception as e:
            raise Exception("Error connecting SFTP server, Please try again!")
        try:
            trans.connect(username=self.username, password=self.password)
        except Exception as e:
            raise Exception("SFTP Authentication failed!")

        sftp = paramiko.SFTPClient.from_transport(trans)
        self._sftp = sftp



    def download_file(self, remotepath, localpath):
        """
        from remotepath download file to localpath and close SFTP Server
        :param remotepath:
        :param localpath:
        :return:
        """
        # datetime = '1200'
        # current_date = timezone.localtime(timezone.now()).strftime('%Y%m%d')

        if remotepath[-1] == '/':
            remotepath = remotepath[:-1]

        # remotefilename = u"compensationDaily_{}{}.csv".format(current_date,datetime)
        try:
            filelist = self._sftp.listdir(remotepath)
            # 去掉success,fail文件
            extend_file = ['success','fail']
            filelist = list(set(filelist) - set(extend_file))
            remotefilename = max(filelist)
            if not len(remotefilename):
                return False
        except Exception as e:
            return False


        if remotepath[-1] == "/":
            remotepath = "%s%s" % (remotepath, remotefilename)
        else:
            remotepath = "%s/%s" % (remotepath, remotefilename)

        if not os.path.isdir(localpath):
            os.makedirs(localpath)

        localpath = "%s/%s" % (localpath, remotefilename)
        logger.info("local address:%s",localpath)


        try:
            self._sftp.get(remotepath=remotepath, localpath=localpath)
            return remotefilename
        except Exception as e:
            return False

        self._sftp.close()


    def upload_file(self,remotepath,localpath,filename):
        """
        from localpath upload file to remotepath
        :return:
        """
        if self._sftp.sock.closed:
            self.get_trans()

        if remotepath[-1] == '/':
            remotepath = remotepath[:-1]

        if not os.path.isdir(remotepath):
            os.makedirs(remotepath)
        remotepathfull = "%s/%s" % (remotepath, filename)
        localpathfull = "%s/%s" % (localpath, filename)
        try:
            self._sftp.put(localpath=localpathfull,remotepath=remotepathfull)
            logger.info("Success upload error_file.")
        except Exception as e:
            return False
        self._sftp.close()

    def move_file(self, oldpath, newpath, filename):
        """
        from rawpath move file to archivepath and close SFTP Server
        :param rawpath:
        :param archivepath:
        :param filename:
        :return:
        """
        if self._sftp.sock.closed:
            self.get_trans()

        oldpathfull = "%s/%s" % (oldpath, filename)
        newpathfull = "%s/%s" % (newpath, filename)

        try:
            self._sftp.posix_rename(oldpath=oldpathfull, newpath=newpathfull)
            logger.info('End remove file')
        except Exception as e:
            return False
        self._sftp.close()

    def delete(self, remotepath, filename):
        '''
        删除ftp上指定的文件
        :param remotepath: ftp上待删除文件所在文件夹
        :param filename: ftp上待删除的文件名称
        :return:
        '''
        if self._sftp.sock.closed:
            self.get_trans()
        filepath = "%s/%s" % (remotepath, filename)
        try:
            self._sftp.remove(filepath)  # 删除sftp服务器上的文件
            logger.info('End delete file.')
        except Exception as e:
            return False


def read_csv(file_path):

    chartype = "UTF-8-SIG"
    if chartype == "UTF-8-SIG":
        with open(file_path,"rb") as f:
            reader = csv.DictReader(f,encoding="utf-8-sig")
            for item in reader:
                turn_dict = {}
                for k,v in item.items():
                    turn_dict[k] = v
                yield turn_dict
    else:
        with open(file_path,"rb") as f:
            reader = csv.DictReader(f,encoding = "gbk")
            for item in reader:
                turn_dict  = {}
                for k,v in item.items():
                    turn_dict[k] = v
                yield turn_dict