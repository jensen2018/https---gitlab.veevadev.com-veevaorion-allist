# -*- coding: UTF-8 -*-
import json
from django.db import connection
from django.utils import timezone
from orionbase.common.orion_function import *
from random import randint, choice, uniform
import datetime
from decimal import Decimal
# encoding=utf8
import sys

reload(sys)
sys.setdefaultencoding('utf8')


class ReportClass(object):
    def __init__(self):
        pass

    def index(self, *args):
        data = {"amount": 0, 'name': u'销量统计', 'month_growth': '--', 'year_growth': '--'}
        # 获取用户信息
        user = get_user()
        cur_userpositions = user.positions_ids
        # 获取当前月份
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # 获取所负责的产品
        packages = self.position_packages(cur_userpositions)
        hospitals = self.position_hospital(cur_userpositions)
        # 计算当前月份销量
        if len(packages) > 0 and len(hospitals) > 0:
            with get_connection().cursor() as cursor:
                sql_str2 = '''
                SELECT 
                      IFNULL(sum(cs_sum_month),0.0) ,
                      IFNULL(sum(cs_sum_last_month),0.0),
                      IFNULL(sum(cs_sum_month_of_last_year),0.0)
                FROM
                      cs_sales_data_summary
                WHERE
                      yearmonth = %s
                AND
                      package_id  in %s
                AND
                      hospital_id  in %s
                AND
                      cs_type = 'B'    
                AND 
                      position_id in %s;
                        '''
                sql_args = (current_yearmonth, packages, hospitals, cur_userpositions)
                cursor.execute(sql_str2, sql_args)
                results = cursor.fetchone()
                if results:
                    sum_month = results[0]
                    sum_last_month = results[1]
                    sum_month_of_last_year = results[2]
                    data['amount'] = self.format_amount_or_count(sum_month, 'B')
                    # 计算amount环比
                    data['month_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month, sum_last_month)) + '%' if sum_last_month != 0 else '--'
                    # 计算amount同比
                    data['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month,
                                           sum_month_of_last_year)) + '%' if sum_month_of_last_year != 0 else '--'
        return data


    def detail(self, *args):
        # args:{"month":month,"product":product}
        # 定义变量，存储返回数据
        data, amounts, counts, datas_amount, datas_count = {"args": args}, {}, {}, {}, {}
        # 获取用户信息
        user = get_user()
        cur_userpositions = user.positions_ids
        # 获取当前月份
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # 获取所负责的产品
        packages = self.position_packages(cur_userpositions)
        hospitals = self.position_hospital(cur_userpositions)
        # 获取参数
        if args and args[0]:
            yearmonth = args[0]['month']
            products = args[0]['product']
            if products == "":
                packages_id = packages
            else:
                packages_id = [products]
        else:
            yearmonth = current_yearmonth
            packages_id = packages
        # 计算当前用户用户岗位销量
        # A 指的是数量，B 指的是金额
        result_amount = self.sales_data(yearmonth, packages_id, hospitals, cur_userpositions, 'A')
        result_count = self.sales_data(yearmonth, packages_id, hospitals, cur_userpositions, 'B')
        amounts['result'] = result_amount
        counts['result'] = result_count
        # 柱状图数据计算
        echartdata_amount = self.sales_data_echart(yearmonth, packages_id, hospitals, cur_userpositions, 'A')
        echartdata_count = self.sales_data_echart(yearmonth, packages_id, hospitals, cur_userpositions, 'B')
        amounts['this_year_detail'] = echartdata_amount
        counts['this_year_detail'] = echartdata_count
        # 获取所负责医院的相关数据
        accounts_amount = self.sales_data_hospital(args, yearmonth, packages_id, cur_userpositions, hospitals, 'A')
        accounts_count = self.sales_data_hospital(args, yearmonth, packages_id, cur_userpositions, hospitals, 'B')
        amounts['accounts'] = accounts_amount
        counts['accounts'] = accounts_count

        data['amounts'] = amounts
        data['counts'] = counts
        return data


    def invoice_list(self, *args):
        # args: {"month":month,"product":product,"hospital":hospital}
        hospital = {}
        invoice_list = []
        # 获取当前岗位
        user = get_user()
        position_Id = user.current_position.id
        # 获取参数
        if args and args[0]:
            month = args[0]['month']
            hospital_id = args[0]['hospital']
            products_id = args[0]["product"]
            hospital['mon'] = args[0]['month']
            dates = month + '%'
            cur_userpositions = user.positions_ids
            # 查询医院名称
            with get_connection().cursor() as cursor:
                sql_str2 = """
                            select
                                  name,id
                            from
                                  accounts a
                            where
                                  a.id = %s;
                                  """
                cursor.execute(sql_str2, (hospital_id,))
                result = cursor.fetchone()
                hospital['hospital_name'] = result[0]
                hospital['hospital_id'] = result[1]

            if products_id == "":
                hospital['package'] = '剂型'
                hospital['package_id'] = ''
                packages = self.position_packages(cur_userpositions)
            else:
                with get_connection().cursor() as cursor:
                    sql_str = """
                         select distinct pg.name,pg.id
                         from packages as pg
                         where id = %s ;"""
                    cursor.execute(sql_str, (products_id,))
                    results = cursor.fetchone()
                    hospital['package'] = results[0]
                    hospital['package_id'] = results[1]
                    packages = [products_id]

            with get_connection().cursor() as cursor:
                sql_str = """
                select
                       tth.transaction_date,
                       pk.name,
                       tth.quantity ,
                       tth.text_1
                from tths as tth
                left join packages  as pk on tth.package_id = pk.id
                left join accounts a1 on a1.id =tth.buyer_id               
                where tth.buyer_id =%s
                and tth.transaction_date like %s
                and tth.package_id in %s
                order by  transaction_date desc;
                """
                sql_args = (hospital_id, dates,packages)
                cursor.execute(sql_str, sql_args)
                results = cursor.fetchall()
                for row in results:
                    invoice_info = {}
                    invoice_info["datetime"] = row[0]
                    invoice_info["package_name"] = row[1]
                    invoice_info['quantity'] = row[2]
                    invoice_info['seller'] = row[3]
                    invoice_list.append(invoice_info)
                hospital["invoice_list"] = invoice_list
        return hospital

    def getDropList(self, *args):
        data = {}
        user = get_user()
        position_ids = user.positions_ids
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        months = self.get_ytd_month(current_yearmonth)
        data['months'] = months[::-1]
        package_ids = []
        with get_connection().cursor() as cursor:
            sql_str = """
                             select distinct pg.name,pg.id
                             from position_to_products ptp
                             left join products p on ptp.record_id = p.id
                             left join packages pg on pg.product_id=p.id
                             where position_id in %s
                             and   ptp.deleted =0
                             and  p.deleted =0
                             and  pg.deleted =0;
                                    """
            sql_args = (position_ids,)
            cursor.execute(sql_str, sql_args)
            results = cursor.fetchall()
            if results:
                for row in results:
                    package_ids.append({
                        'name': row[0],
                        'id': row[1]
                    })
        data['products'] = package_ids
        return data


    def get_ytd_month(self,yearmonth):
        current_year, current_month = [int(x) for x in yearmonth.split("-")]
        months = ['%s-%s' % (current_year, '{:02d}'.format(mon + 1)) for mon in range(current_month)]
        return months

    def get_quarter_month(self,yearmonth, delta):
        data = {}
        current_year, current_month = [x for x in yearmonth.split("-")]
        quarter_list = [['01', '02', '03'],
                        ['04', '05', '06'],
                        ['07', '08', '09'],
                        ['10', '11', '12']]
        # 计算当前季度
        this_quarter = (int(current_month) - 1) // 3
        quarter = int(this_quarter) + int(delta)
        cal_year = int(current_year) + int(quarter // 4)
        cal_quarter = quarter % 4
        year_quarter = str(cal_year) + '-Q' + str(cal_quarter + 1)
        month_list = ['%s-%s' % (cal_year, mon) for mon in quarter_list[cal_quarter]]
        data['month_list'] = month_list
        data['year_quarter'] = year_quarter
        return data

    def getProductDropList(self, *args):
        month = args[0]
        data = {}
        data[month] = self.detail(self, *args)
        # month = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # is_current = 1
        # if args and args[0]:
        #     if month == args[0]:
        #         is_current = 1
        #     else:
        #         is_current = 0
        #     month = args[0]
        #
        # version_id = 1
        # data = {}
        # user = get_user()
        # userId = user.user_id
        #
        # sql_str = ""
        # sql_args = ()
        # if is_current == 1:
        #     sql_str = """
        #     SELECT DISTINCT
        #         p.name
        #         ,p.id
        #     FROM
        #         user_positions up
        #     LEFT JOIN
        #         position_to_products ptp ON ptp.position_id = up.position_id and ptp.deleted = 0
        #     LEFT JOIN
        #         products p ON p.id = ptp.record_id and p.deleted = 0
        #     WHERE
        #         up.deleted = 0
        #     AND
        #         up.user_id = %s
        #     ORDER BY
        #         p.name
        #     """
        #
        #     sql_args = (userId, )
        # else:
        #     sql_version = """
        #     SELECT
        #         id
        #     FROM
        #         position_versions
        #     WHERE
        #         deleted = 0
        #     AND
        #         start_date = %s
        #     AND
        #         end_date = %s
        #     """
        #
        #     args_year = month.split('-')[0]
        #     args_month = month.split('-')[1]
        #
        #     start_date = args_year + "-" + args_month + "-01"
        #     end_date = datetime.date.today()
        #
        #     if args_month in ("01", "03", "05", "07", "08", "10", "12"):
        #         end_date = args_year + "-" + args_month + "-31"
        #     elif args_month in ("04", "06", "09", "11"):
        #         end_date = args_year + "-" + args_month + "-30"
        #     else:
        #         if int(args_year) % 4 == 0 and int(args_year) % 100 != 0:
        #             end_date = args_year + "-" + args_month + "-29"
        #         elif int(args_year) % 400 == 0:
        #             end_date = args_year + "-" + args_month + "-29"
        #         else:
        #             end_date = args_year + "-" + args_month + "-28"
        #
        #     sql_args = (start_date, end_date)
        #     with get_connection().cursor() as cursor:
        #         cursor.execute(sql_version, sql_args)
        #         results = cursor.fetchone()
        #         if results:
        #             version_id = results[0]
        #
        #     sql_str = """
        #     SELECT DISTINCT
        #         p.name
        #         , p.id
        #     FROM
        #         user_position_histories uph
        #     LEFT JOIN
        #         position_to_product_histories ptph ON ptph.position_id = uph.position_id and ptph.version_id = %s and ptph.deleted = 0
        #     LEFT JOIN
        #         products p ON p.id = ptph.record_id AND ptph.version_id = %s and p.deleted = 0
        #     WHERE
        #         uph.version_id = %s
        #     AND
        #         uph.deleted = 0
        #     AND
        #         uph.user_id = %s
        #     ORDER BY
        #         p.name;"""
        #
        #     sql_args = (version_id, version_id, version_id, userId)
        #
        # detail_args = {}
        # detail_args["month"] = month
        # detail_args["product"] = ""
        # data = self.detail(detail_args)
        #
        # with get_connection().cursor() as cursor:
        #     cursor.execute(sql_str, sql_args)
        #     results = cursor.fetchall()
        #
        #     products = []
        #     for row in results:
        #         product_one = {}
        #         product_one['name'] = row[0]
        #         product_one['id'] = row[1]
        #
        #         products.append(product_one)
        #
        #     data['products'] = products

        return data


    def sales_data(self, yearmonth, package_id, hospital_id, position_id, type):
        year_quarter = self.get_quarter_month(yearmonth, 0).get('year_quarter')
        year_ytd = str(yearmonth.split('-')[0]) + ' YTD ' + str(int(yearmonth.split('-')[1]))
        datas_this_month_amount = {'amount': 0, 'date': yearmonth, 'month_growth': '--', 'year_growth': '--'}
        datas_this_quarter_amount = {'amount': 0, 'date': year_quarter, 'month_growth': '--', 'year_growth': '--'}
        datas_this_year_amount = {'amount': 0, 'date': year_ytd, 'month_growth': '--', 'year_growth': '--'}
        data = {
            'this_month': datas_this_month_amount,
            'this_quarter': datas_this_quarter_amount,
            'this_ytd': datas_this_year_amount
        }

        if len(package_id) > 0 and len(hospital_id) > 0:
            with get_connection().cursor() as cursor:
                sql_str = '''
                        SELECT 
                              IFNULL(sum(cs_sum_month),0.0),
                              IFNULL(sum(cs_sum_last_month),0.0),
                              IFNULL(sum(cs_sum_month_of_last_year),0.0),
                              IFNULL(sum(cs_sum_quarter),0.0),
                              IFNULL(sum(cs_sum_last_quarter),0.0),
                              IFNULL(sum(cs_sum_quarter_of_last_year),0.0),
                              IFNULL(sum(cs_sum_ytd),0.0),
                              IFNULL(sum(cs_sum_ytd_of_last_year),0.0),
                              IFNULL(sum(cs_target_month),0.0),
                              IFNULL(sum(cs_target_quarter),0.0),
                              IFNULL(sum(cs_target_ytd),0.0)
                        FROM
                              cs_sales_data_summary
                        WHERE
                              yearmonth = %s
                        AND 
                              cs_type = %s
                        AND
                              package_id in %s
                        AND 
                              hospital_id in %s
                        AND 
                            position_id in %s;
                        '''
                sql_args = (yearmonth, type, package_id, hospital_id, position_id)
                cursor.execute(sql_str, sql_args)
                results = cursor.fetchone()
                if results:
                    # 获取月份相关数据
                    sum_month = results[0]
                    sum_last_month = results[1]
                    sum_month_of_last_year = results[2]
                    sum_quarter = results[3]
                    sum_last_quarter = results[4]
                    sum_quarter_of_last_year = results[5]
                    sum_ytd = results[6]
                    sum_ytd_of_last_year = results[7]
                    sum_month_target = results[8]
                    sum_quarter_target = results[9]
                    sum_ytd_target = results[10]
                    # 计算当月数据统计
                    datas_this_month_amount["amount"] = self.format_amount_or_count(sum_month, type)
                    # 计算amount环比
                    datas_this_month_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month, sum_last_month)) + '%' if sum_last_month != 0 else '--'
                    # 计算amount同比
                    datas_this_month_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month,sum_month_of_last_year)) + '%' if sum_month_of_last_year != 0 else '--'
                    datas_this_month_amount['reach'] = self.format_achieve(sum_month,sum_month_target) + '%' if sum_month_target != 0 else '--'
                    data['this_month'] = datas_this_month_amount
                    # 计算季度相关数据
                    datas_this_quarter_amount['amount'] = self.format_amount_or_count(sum_quarter, type)
                    # 计算amount环比
                    datas_this_quarter_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_quarter, sum_last_quarter)) + '%' if sum_last_quarter != 0 else '--'
                    # 计算amount同比
                    datas_this_quarter_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_quarter,sum_quarter_of_last_year)) + '%' if sum_quarter_of_last_year != 0 else '--'
                    datas_this_quarter_amount['reach'] = self.format_achieve(sum_quarter,sum_quarter_target) + '%' if sum_quarter_target != 0 else '--'
                    data['this_quarter'] = datas_this_quarter_amount
                    # 获取年度相关数据
                    datas_this_year_amount['amount'] = self.format_amount_or_count(sum_ytd, type)
                    # 计算amount同比
                    datas_this_year_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_ytd, sum_ytd_of_last_year)) + '%' if sum_ytd_of_last_year != 0 else '--'
                    datas_this_year_amount['month_growth'] = '--'
                    datas_this_year_amount['reach'] = self.format_achieve(sum_ytd,sum_ytd_target) + '%' if sum_quarter_target != 0 else '--'
                    data['this_ytd'] = datas_this_year_amount
        return data

    def sales_data_echart(self,yearmonth,package_id, hospital_id,position_id,type):
        this_year_detail_amount = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        ytd_month_list = self.get_ytd_month(yearmonth)
        if len(package_id) > 0 and len(hospital_id) > 0:
            with get_connection().cursor() as cursor:
                sql_str4 = """
                    SELECT
                            IFNULL(sum(cs_sum_month),0.0),
                            yearmonth
                    FROM
                          cs_sales_data_summary
                    WHERE
                          yearmonth in %s
                    AND  
                          cs_type = %s
                    AND
                         package_id  in  %s
                    AND 
                         hospital_id in %s
                    AND   
                        position_id in  %s
                    group by yearmonth 
                    order by yearmonth asc;
                              """
                sql_args = (ytd_month_list,type, package_id,hospital_id, position_id)
                cursor.execute(sql_str4, sql_args)
                results_amount = cursor.fetchall()
                if results_amount:
                    for row in results_amount:
                        this_year_detail_amount[int(row[1].split('-')[1]) - 1] = self.format_amount_or_count(row[0],type)
        return this_year_detail_amount

    def sales_data_hospital(self,args,yearmonth,package_id,position_id,hospital_id,type):
        accounts_amount =[]
        if len(package_id) > 0 and len(hospital_id):
            with get_connection().cursor() as cursor:
                sql_str2 = """
                          SELECT 
                                IFNULL(sum(cs_sum_month),0.0),
                                IFNULL(sum(cs_sum_last_month),0.0),
                                IFNULL(sum(cs_sum_month_of_last_year),0.0),
                                IFNULL(sum(cs_sum_quarter),0.0),
                                IFNULL(sum(cs_sum_last_quarter),0.0),
                                IFNULL(sum(cs_sum_quarter_of_last_year),0.0),
                                IFNULL(sum(cs_sum_ytd),0.0),
                                IFNULL(sum(cs_sum_ytd_of_last_year),0.0),
                                IFNULL(sum(cs_target_month),0.0),
                                IFNULL(sum(cs_target_quarter),0.0),
                                IFNULL(sum(cs_target_ytd),0.0),
                                accounts.id,accounts.name
                          FROM
                                cs_sales_data_summary as sdsi
                          LEFT JOIN accounts ON sdsi.hospital_id = accounts.id
                          WHERE
                                yearmonth = %s
                          AND
                              cs_type = %s
                          AND
                              package_id in %s                          
                          AND 
                              position_id in %s
                          AND 
                              hospital_id in %s
                          group by  hospital_id;
                                """

                sql_args = (yearmonth,type, package_id, position_id,hospital_id)
                cursor.execute(sql_str2, sql_args)
                result = cursor.fetchall()
                if result:
                    for row in result:
                        datas_this_month_amount, datas_this_quarter_amount, datas_this_year_amount = {}, {}, {}
                        hospital_amount = {}
                        sum_month = row[0]
                        sum_last_month = row[1]
                        sum_month_of_last_year = row[2]
                        sum_quarter = row[3]
                        sum_last_quarter = row[4]
                        sum_quarter_of_last_year = row[5]
                        sum_ytd = row[6]
                        sum_ytd_of_last_year = row[7]
                        sum_month_target = row[8]
                        sum_quarter_target = row[9]
                        sum_ytd_target = row[10]
                        hospital_amount['id'] =row[11]
                        hospital_amount['name'] = row[12]
                        datas_this_month_amount["amount"] = self.format_amount_or_count(sum_month,type)
                        datas_this_month_amount['date'] = yearmonth
                        # 计算amount环比
                        datas_this_month_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                            self.format_growth(sum_month, sum_last_month)) + '%' if sum_last_month != 0 else '--'
                        # 计算amount同比
                        datas_this_month_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                            self.format_growth(sum_month,sum_month_of_last_year)) + '%' if sum_month_of_last_year != 0 else '--'
                        datas_this_month_amount['reach'] = self.format_achieve(sum_month,sum_month_target) + '%' if sum_month_target != 0 else '--'
                        hospital_amount['this_month'] = datas_this_month_amount
                        # 获取季度相关数据
                        datas_this_quarter_amount['date'] = self.get_quarter_month(yearmonth,0).get('year_quarter')
                        datas_this_quarter_amount['amount'] = self.format_amount_or_count(sum_quarter,type)
                        # 计算amount环比
                        datas_this_quarter_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                            self.format_growth(sum_quarter, sum_last_quarter)) + '%' if sum_last_quarter != 0 else '--'
                        # 计算amount同比
                        datas_this_quarter_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                            self.format_growth(sum_quarter,sum_quarter_of_last_year)) + '%' if sum_quarter_of_last_year != 0 else '--'
                        datas_this_quarter_amount['reach'] = self.format_achieve(sum_quarter,sum_quarter_target) + '%' if sum_quarter_target != 0 else '--'
                        hospital_amount['this_quarter'] = datas_this_quarter_amount
                        # 获取年度相关数据
                        datas_this_year_amount['date'] = str(yearmonth.split('-')[0]) + ' YTD ' + str(int(yearmonth.split('-')[1]))
                        datas_this_year_amount['amount'] = self.format_amount_or_count(sum_ytd,type)
                        # 计算amount同比
                        datas_this_year_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                            self.format_growth(sum_ytd, sum_ytd_of_last_year)) + '%' if sum_ytd_of_last_year != 0 else '--'
                        datas_this_year_amount['month_growth'] = '--'
                        datas_this_year_amount['reach'] = self.format_achieve(sum_ytd,sum_ytd_target) + '%' if sum_ytd_target != 0 else '--'
                        hospital_amount['this_ytd'] = datas_this_year_amount
                        if args and args[0]:
                            products = args[0]['product']
                            if products == "":
                                hospital_amount['product'] = ''
                            else:
                                hospital_amount['product'] = products
                        else:
                            hospital_amount['product'] = ''
                        accounts_amount.append(hospital_amount)
        return accounts_amount



    def position_packages(self,positions):
        package_ids = []
        with get_connection().cursor() as cursor:
            sql_str = """
                     select distinct pg.name,pg.id
                     from position_to_products ptp
                     left join products p on ptp.record_id = p.id
                     left join packages pg on pg.product_id=p.id
                     where position_id in %s
                     and   ptp.deleted =0
                     and  p.deleted =0
                     and  pg.deleted =0;
                            """
            sql_args = (positions,)
            cursor.execute(sql_str, sql_args)
            results = cursor.fetchall()
            if results:
                for row in results:
                    package_ids.append(row[1])
        return package_ids

    def position_hospital(self,positions):
        hospital_ids = []
        with get_connection().cursor() as cursor:
            sql_str1 = """
                    SELECT
                          record_id
                    FROM
                          position_to_accounts pta
                    LEFT JOIN 
                         accounts a
                    ON
                         pta.record_id = a.id
                    WHERE
                          position_id in  %s
                    AND
                        a.record_type_id = '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb'
                    and  a.deleted =0
                    and  pta.deleted =0; 
            """
            cursor.execute(sql_str1, (positions,))
            results = cursor.fetchall()
            if results:
                for row in results:
                    hospital_ids.append(row[0])
        return hospital_ids

    def format_amount_or_count(self, value, types):
        if str(value) :
            if types == 'A':
                return '{:,}'.format(Decimal(value / 10000).quantize(Decimal('0.00')))
            elif types == 'B':
                return '{:,}'.format(Decimal(value).quantize(Decimal('0')))
        return '-'

    def format_growth(self,currentdata,ratiodata):
        if currentdata and ratiodata and str(ratiodata) != '0':
            growth = '{:,}'.format(Decimal((float(currentdata) - float(ratiodata)) / float(ratiodata)).quantize(Decimal('0.00')) *100)
            return str(growth)
        return str(0.00)

    def format_achieve(self,currentdata,ratiodata):
        if currentdata and ratiodata and str(ratiodata) != '0':
            growth = '{:,}'.format(Decimal(float(currentdata) / float(ratiodata)).quantize(Decimal('0.00')) *100)
            return str(growth)
        return str(0.00)

    def format_number_with_plus_or_minus_sign(self, value):
        str_value = str(value)
        float_value = float(value)
        if (float_value > 0 or (float_value == 0 and str_value[0] != '-')):
            return '+' + str_value
        else:
            return str_value