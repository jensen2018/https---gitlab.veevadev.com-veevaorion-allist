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
REMOTE_PATH = "/data/salesdatas"
SUCCESS_PATH_REGISTER = "/data/salesdatas/success"
FAIL_PATH_REGISTER = "/data/salesdatas/fail"
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


@custom_advanced_action_factory.register('sales_data_allocation_cs_import')
class ImportSalesDataAllocation(AbstractCustomAdvancedAction):
    """
     AdvancedActionResult = namedtuple('AdvancedActionResult',['status','message','data'])
     data：业务函数返回结果，需要与前端协调
     message: 提示信息
     status: SUCCESS/ERROR
    """
    def __init__(self, request, action, config=None):
        self.user_id = get_current_user().user_id
        super(ImportSalesDataAllocation, self).__init__(request, action, config)
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
            save_obj = SaveDatabase(self.user_id)
            result,messages = save_obj.import_salesdata_data()
            if result == 'success':
                message = u'岗位销量数据导入成功,关闭后自动刷新页面.'
                return self.AdvancedActionResult('SUCCESS', message, [])
            elif result == 'fail':
                message = u'岗位销量数据导入失败,%s' % (messages)
                return self.AdvancedActionResult('SUCCESS', message, [])
        except Exception as e:
            logger.info(e, exc_info=True)
            logger.error('fail to import sales data')
            logger.error(e)
            message = u'岗位销量数据导入失败,失败原因: %s,请重试.'%(e.message)
            return self.AdvancedActionResult('ERROR', message, [])


class SaveDatabase(object):

    def __init__(self,user_id):
        self.db = self.get_conn()
        self.user_id = user_id
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

    def get_positionhistory_dic(self,yearmonth):
        positionhistoy_dic = dict(models.PositionHistories.objects.filter(deleted=0,version__name=yearmonth).values_list('code','id'))
        return positionhistoy_dic

    def get_position_dic(self, yearmonth):
        position_dic = dict(models.PositionHistories.objects.filter(deleted=0, version__name=yearmonth).values_list('code', 'org_position_id'))
        return position_dic

    def isVaildDate(self, date, by_month=True):
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
        if not row['yearmonth'] or not self.isVaildDate(row['yearmonth']):
            error_message += u'yearmonth格式错误;'
        if not row['account'] or row['account'] not in self.account.keys():
            error_message += u'account不存在;'
        if not row['package'] or row['package'] not in self.package.keys():
            error_message += u'package不存在;'
        if not row['position'] or row['position'] not in self.get_position_dic(row['yearmonth']).keys():
            error_message += u'position不存在;'
        return error_message


    def import_salesdata_data(self):
        logger.info('start import sales_data data.')
        # 获取SFTP信息
        sftp_info = self.get_sftp_info()
        sent_message_list = self.sent_message_info()
        if not sftp_info:
            logger.error('Not find sftp info!')
            message = u"失败原因:未找到SFTP信息!"
            result = 'fail'
            return result, message
        else:
            # 从SFTP 下载csv文件到本地
            tans_obj = SftpRetr(host=sftp_info['SFTP_HOST'], port=int(sftp_info['SFTP_PORT']),
                                username=sftp_info['SFTP_USER'], password=sftp_info['SFTP_PASS'])
            tans_obj.get_trans()
            download_field = tans_obj.download_file(remotepath=REMOTE_PATH, localpath=LOCAL_PATH)
            logger.info('End download sftp file')
            if download_field:
                file_path = os.path.join(BASE_DIR, DOWN_DIR_NAME, download_field)
                files = read_csv(file_path)
                # 保存csv文件中数据到cs_salesdata,校验数据是否有错误
                has_error,import_id = self.save_sales_data_import_data(files)
                # 如果文件有错误，则返回错误数据，并发送邮件通知
                if has_error:
                    error_filename = self.create_err_csv(filename=download_field,import_id=import_id)
                    tans_obj.upload_file(remotepath=FAIL_PATH_REGISTER, localpath=LOCAL_PATH_ERR, filename=error_filename)
                    # 操作完成之后将已处理文件删除
                    tans_obj.delete(remotepath=REMOTE_PATH, filename=download_field)
                    title = u"岗位销量接口数据导入失败"
                    message = u"失败文件名 - %s"% (error_filename)
                    if sent_message_list:
                        send_email_notification('sales_data_allocation', import_id, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
                    result = 'fail'
                    return result, message
                # 如果文件内容正确，则插入到sales data中并发送邮件通知
                else:
                    self.save_correct_data(file_path)
                    # 操作完成之后将已处理文件移动到success文件夹中
                    tans_obj.move_file(oldpath=REMOTE_PATH, newpath=SUCCESS_PATH_REGISTER, filename=download_field)
                    title = u"岗位销量接口数据导入成功"
                    message = u"成功文件名 - %s"% (download_field)
                    if sent_message_list:
                        send_email_notification('sales_data_allocation', import_id, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
                    result = 'success'
                    return result,message
            else:
                # 如果没有找到文件，则发送邮件通知
                title = u"岗位销量接口数据导入失败"
                message = u"失败原因:文件下载失败，请检查流向数据是否上传到SFTP或网络!"
                if sent_message_list:
                    send_email_notification('sales_data_allocation', None, sent_message_list, title, MIMEText(message, _subtype='plain', _charset='UTF-8'))
                result = 'fail'
                return result,message

    def save_sales_data_import_data(self, sales_data):
        has_error = False
        self.cursor = self.db.cursor()
        self.cursor.execute("""SELECT IFNULL(MAX(`import_id`),0) FROM `cs_sales_datas` WHERE `deleted`='0'""")
        row = self.cursor.fetchone()
        max_import_id = row[0] if row else 0
        import_id = int(max_import_id) + 1
        logger.info("Start save import data")
        txt = ''
        value_list = []
        insert_sql = """
INSERT INTO `cs_sales_datas` (`deleted`, `created_on`, `created_by`, `yearmonth`, `position`, `position_id`, `account`, `account_id`, `package`, `package_id`, `quantity`, `error_msg`, `import_id`) \
VALUES """
        insert_value = u"""
('{deleted}', NOW(), '{created_by}','{yearmonth}', '{position}','{position_id}','{account}','{account_id}','{package}','{package_id}','{quantity}','{error_msg}','{import_id}')"""
        for item in sales_data:
            error_message = self.validation_row(item)
            if error_message:
                has_error = True
            position = models.PositionHistories.objects.filter(version__name=item['yearmonth'],deleted=0,code=item['position'])
            insert_args = insert_value.format(
                deleted=0,
                created_by=self.user_id or 1,
                yearmonth=item['yearmonth'] or 'None',
                position=item['position'] or 'None',
                position_id=position[0].org_position_id if position else 'None',
                account=item['account'] or 'None',
                account_id=self.account.get(item['account']) or 'None',
                package=item['package'] or 'None',
                package_id=self.package.get(item['package']) or 'None',
                quantity=item['quantity'] or 'None',
                error_msg=error_message,
                import_id=import_id
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
        logger.info("End of Save cs_sales_datas import data")
        return has_error, import_id


    def step_prepare(self,compensation_data):
        month_list = []
        for item in compensation_data:
            if item['yearmonth'] not in month_list:
                month_list.append(item['yearmonth'])
        # 如果sales_states中沒有对应月份，此处应该新建
        for month in month_list:
            if not models.SalesStates.objects.filter(yearmonth=month).exists():
                sales_state = models.SalesStates(
                    yearmonth = month,
                    deleted = 0,
                    created_by = models.User.objects.get(id=1),
                    modified_by = models.User.objects.get(id=1),
                    state_id = models.PicklistValues.objects.get(
                                picklist__name=models.SalesStates.STATE_PICKLIST_NAME,
                                name=models.SalesStates.INITIAL),
                    has_tth_relations=False
                )
                sales_state.save()
        logger.info("Start clear sales data!")
        self.cursor = self.db.cursor()
        self.cursor.execute('DELETE FROM sales_data_allocation_details WHERE yearmonth in %s', (month_list,))
        self.cursor.execute('DELETE FROM sales_data_allocations WHERE yearmonth in %s', (month_list,))
        self.cursor.execute('DELETE FROM sales_datas WHERE yearmonth in %s', (month_list,))
        self.close_cursor()
        self.commit_db()
        logger.info("End clear sales data!")


    def create_sales_data(self,compensation_data):
        logger.info('Start to create sales_datas.')
        terminal_type = models.ObjectRecordTypes.objects.get(object__name='sales_data', name='terminal')
        state = models.ObjectStates.objects.get(object__name='sales_data', name='freezed')
        shixiao_type = models.PicklistValues.objects.get(
            picklist__name='sales_data_sales_type_choices', name='shixiao')
        need_creates = []
        exist_data = []
        for item in compensation_data:
            if (item['yearmonth'],item['account'],item['package']) not in exist_data:
                exist_data.append((item['yearmonth'],item['account'],item['package']))
        if len(exist_data):
            for yearmonth,account,package in exist_data:
                new_sd = models.SalesDatas(
                    yearmonth = yearmonth,
                    account_id = self.account.get(account) or 'None',
                    package_id = self.package.get(package) or 'None',
                    record_type = terminal_type,
                    state = state,
                    sales_type=shixiao_type
                )
                new_sd.created_by_id = new_sd.modified_by_id = new_sd.owner_id = self.user_id
                for key in ('initial_quantity', 'price','adjustment','tth_in','tth_out','confirmed_quantity',
                        'available_quantity', 'position_count','final_stock', 'merged_stock'):
                    setattr(new_sd, key, 0)
                need_creates.append(new_sd)
        if len(need_creates):
            logger.info('Start bulk create %s instances.', len(need_creates))
            models.SalesDatas.objects.bulk_create(need_creates,ignore_signal=True, batch_size=200)
            logger.info('End of create sales_datas.')


    def create_sales_datas_allocations(self,compensation_data):
        """为 SalesData 产生对应的 SalesDataAllocation"""
        logger.info('Start to create allocations')
        sales_data_q = models.SalesDatas.objects.filter(deleted=0)
        sales_data_id = {}
        for sd in sales_data_q:
            sales_data_id[(sd.yearmonth,sd.account_id,sd.package_id)] = sd.id
        allocation_types = dict(models.ObjectRecordTypes.objects.filter(object__name='sales_data_allocation')
                                .values_list('name', 'id'))
        allocation_states = dict(models.ObjectStates.objects.filter(object__name='sales_data_allocation')
                                 .values_list('name', 'id'))
        logger.debug('Prepare instances.')
        need_creates = []
        month_list = []
        for item in compensation_data:
            if item['yearmonth'] not in month_list:
                month_list.append(item['yearmonth'])
            if sales_data_id.get((item['yearmonth'],self.account.get(item['account']),self.package.get(item['package']))):
                allocation = models.SalesDataAllocations(
                    yearmonth = item['yearmonth'],
                    sales_data_id = sales_data_id.get((item['yearmonth'],self.account.get(item['account']),self.package.get(item['package']))),
                    account_id = self.account.get(item['account']) or 'None',
                    package_id = self.package.get(item['package']) or 'None',
                    position_id = models.PositionHistories.objects.filter(version__name=item['yearmonth'],deleted=0,code=item['position'])[0].org_position_id or '1',
                    confirmed_quantity=item['quantity'] or 0,
                    position_history_id = models.PositionHistories.objects.filter(version__name=item['yearmonth'],deleted=0,code=item['position'])[0].id or '1',
                    record_type_id=allocation_types['shixiao'],
                    state_id=allocation_states['confirmed'],
                    user_id=None,
                    price=1,

                )
                allocation.created_by_id = allocation.modified_by_id = allocation.owner_id = self.user_id
                need_creates.append(allocation)
        logger.info('Start bulk create %s allocation instances.', len(need_creates))
        if len(need_creates):
            logger.info('Start bulk create %s allocation instances.', len(need_creates))
            models.SalesDataAllocations.objects.bulk_create(need_creates,ignore_signal=True, batch_size=100)
            logger.info('End of create sales_data_allocation.')
        # 填充用户 ID
        logger.debug('Start to update allocation.user')
        SQL_user = """
        UPDATE sales_data_allocations sda
            JOIN user_position_histories uph ON uph.position_history_id = sda.position_history_id AND uph.deleted = 0
            JOIN position_versions pv on pv.id = uph.version_id and pv.name = sda.yearmonth and pv.deleted = 0
        SET sda.user_id = uph.user_id;
        """
        with connection.cursor() as c:
            c.execute(SQL_user)
        logger.info('End of create allocations.')
        # 更新 sales_datas中 confirmed_quantity,allocate_to
        logger.debug('Start to update sales_datas.confirmed_quantity')
        SQL = """
            UPDATE sales_datas sd
            JOIN(
            SELECT sda.sales_data_id,group_concat(position_history_id SEPARATOR ';') AS allocate_to ,sum(confirmed_quantity) AS confirmed_quantity
            FROM sales_data_allocations sda WHERE yearmonth in %s group by sda.sales_data_id) as sda
            ON sda.sales_data_id=sd.id
            SET sd.confirmed_quantity = sda.confirmed_quantity,
            sd.allocate_to = sda.allocate_to
            WHERE sd.yearmonth in %s;
            """
        with connection.cursor() as c:
            c.execute(SQL, (month_list, month_list))
        logger.info('End of create allocations.')


    def create_detail_for_sales_datas(self,compensation_data):
        """为 SalesData 产生对应的 SalesDataAllocationDetail"""
        logger.info('Start to create allocations detail')
        month_list = []
        for item in compensation_data:
            if item['yearmonth'] not in month_list:
                month_list.append(item['yearmonth'])
        sales_data_allocations = models.SalesDataAllocations.objects.filter(yearmonth__in=month_list)
        need_creates = []
        for sales_data_allocation_id, sales_data_id, account_id, quantity, position,yearmonth in \
                sales_data_allocations.values_list('id', 'sales_data_id', 'account_id', 'confirmed_quantity',
                                                   'position_id','yearmonth'):
            allocation_detail = models.SalesDataAllocationDetails(
                sales_data_allocation_id=sales_data_allocation_id,
                account_id=account_id,
                yearmonth=yearmonth,
                sales_data_id=sales_data_id,
                position_id=position,
                quantity=quantity,
            )
            allocation_detail.created_by_id = allocation_detail.modified_by_id = allocation_detail.owner_id = self.user_id
            need_creates.append(allocation_detail)
        logger.debug('Start to bulk create detail.')
        models.SalesDataAllocationDetails.objects.bulk_create(need_creates, ignore_signal=True,batch_size=100)
        logger.info('End of create allocations detail.')



    def save_correct_data(self, file_path):
        # 先清除已经存在的流向数据
        logger.info("Start save correct sales data")
        compensation_data = read_csv(file_path)
        self.step_prepare(compensation_data)
        # sales data保存数据
        compensation_data = read_csv(file_path)
        self.create_sales_data(compensation_data)
        # sales_data_allocations保存数据
        compensation_data = read_csv(file_path)
        self.create_sales_datas_allocations(compensation_data)
        # sales_data_allocation_details保存数据
        compensation_data = read_csv(file_path)
        self.create_detail_for_sales_datas(compensation_data)
        logger.info("End of Save sales data")


    def create_err_csv(self,filename,import_id):
        logger.info('Start create error csv.')
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
                    `yearmonth`,
                    `position`, 
                    `account`,
                    `package`,
                    `quantity`
                FROM
                    `cs_sales_datas` WHERE `import_id`=%s"""
            self.cursor.execute(select_err_sql,(import_id,))
            err_data = self.cursor.fetchall()
            self.close_cursor()
            csv_writer = csv.writer(f)
            if err_data:
                fields = ["错误原因", "yearmonth", "position", "account", "package", "quantity"]
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