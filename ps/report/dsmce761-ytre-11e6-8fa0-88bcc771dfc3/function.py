# -*- coding: UTF-8 -*-
import json
from django.db import connection
from django.utils import timezone
from orionbase.common.orion_function import *
import datetime
from decimal import Decimal
from urllib import unquote
import sys
reload(sys)
sys.setdefaultencoding('utf8')


class ReportClass(object):
    def __init__(self):
        pass

    def index(self, *args):

        data = {"amount": 0, 'name': u'团队销量统计', 'month_growth': '--', 'year_growth': '--'}
        # 获取用户信息
        user = get_user()
        cur_userpositions = user.positions_ids
        # 获取当前月份
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # 根据当前用户position_ID获取下属列id
        all_rep_positions = self.get_rep_positions(cur_userpositions, current_yearmonth)
        # 根据当前用户及下属position_id获取负责的所有产品ids
        package_ids = self.position_packages(all_rep_positions)
        # 获取position_ids 所负责的医院
        hospital_ids = self.position_hospital(all_rep_positions)

        # 计算当前月份销量
        if len(package_ids) > 0 and len(hospital_ids) > 0:
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
                     cs_type ='B'
                AND
                    package_id in %s
                AND 
                     hospital_id in %s
                AND 
                     position_id in %s ;

                '''
                sql_args = (current_yearmonth, package_ids, hospital_ids, all_rep_positions)
                cursor.execute(sql_str2, sql_args)
                results = cursor.fetchone()
                sum_month = results[0]
                sum_last_month = results[1]
                sum_month_of_last_year = results[2]
                data["amount"] = self.format_amount_or_count(sum_month, 'B')
                # 计算amount环比
                data['month_growth'] = self.format_number_with_plus_or_minus_sign(
                    self.format_growth(sum_month, sum_last_month)) + '%' if sum_last_month != 0 else '--'
                # 计算amount同比
                data['year_growth'] = self.format_number_with_plus_or_minus_sign(
                    self.format_growth(sum_month,sum_month_of_last_year)) + '%' if sum_month_of_last_year != 0 else '--'
            return data

    def detail(self, *args):
        # 定义变量，存储返回数据
        data, amounts, counts, datas_amount, datas_count = {"args": args}, {}, {}, {}, {}
        # 获取用户信息
        user = get_user()
        cur_userpositions = user.positions_ids
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # 根据当前用户position_ID获取下属列id
        all_rep_positions = self.get_rep_positions(cur_userpositions, current_yearmonth)
        # 根据当前用户及下属position_id获取负责的所有产品ids
        package_ids = self.position_packages(all_rep_positions)
        # 获取position_ids 所负责的医院
        hospitals = self.position_hospital(all_rep_positions)
        if args and args[0]:
            yearmonth = args[0]['month']
            products = args[0]['product']
            if products == "":
                packages = package_ids
            else:
                packages = [products]
        else:
            yearmonth = current_yearmonth
            packages = package_ids
        # 计算当前用户用户岗位销量
        result_amount = self.sales_data(yearmonth, packages, hospitals, all_rep_positions, 'A')
        result_count = self.sales_data(yearmonth, packages, hospitals, all_rep_positions, 'B')
        amounts['result'] = result_amount
        counts['result'] = result_count
        # 柱状图数据计算
        echartdata_amount = self.sales_data_echart(yearmonth, packages, hospitals, all_rep_positions, 'A')
        echartdata_count = self.sales_data_echart(yearmonth, packages, hospitals, all_rep_positions, 'B')
        amounts['this_year_detail'] = echartdata_amount
        counts['this_year_detail'] = echartdata_count
        # 获取所负责医院的相关数据
        accounts_amount = self.sales_data_hospital(args, yearmonth, packages, all_rep_positions, hospitals, 'A')
        accounts_count = self.sales_data_hospital(args, yearmonth, packages, all_rep_positions, hospitals, 'B')
        amounts['accounts'] = accounts_amount
        counts['accounts'] = accounts_count
        # 获取下属个人相关数据
        underlings_amount = self.sales_data_sub(args, yearmonth, packages, cur_userpositions, hospitals, 'A')
        underlings_count = self.sales_data_sub(args, yearmonth, packages, cur_userpositions, hospitals, 'B')
        amounts['underlings'] = underlings_amount
        counts['underlings'] = underlings_count

        data['amounts'] = amounts
        data['counts'] = counts

        return data

    def sales_data(self,yearmonth, package_id, hospital_id,position_id,type):
        year_quarter = self.get_quarter_month(yearmonth,0).get('year_quarter')
        year_ytd = str(yearmonth.split('-')[0]) + ' YTD ' + str(int(yearmonth.split('-')[1]))
        datas_this_month_amount = {'amount': 0, 'date': yearmonth, 'month_growth': '--', 'year_growth': '--'}
        datas_this_quarter_amount = {'amount': 0, 'date': year_quarter, 'month_growth': '--','year_growth': '--'}
        datas_this_year_amount = {'amount': 0, 'date': year_ytd, 'month_growth': '--','year_growth': '--'}
        data = {
                   'this_month': datas_this_month_amount,
                   'this_quarter': datas_this_quarter_amount,
                   'this_ytd': datas_this_year_amount
                   }

        if len(package_id) > 0  and len(hospital_id) > 0:
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
                    position_id in %s
                '''
                sql_args = (yearmonth,type, package_id,hospital_id,position_id)
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
                    datas_this_month_amount["amount"] = self.format_amount_or_count(sum_month,type)
                    # 计算amount环比
                    datas_this_month_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month, sum_last_month)) + '%' if sum_last_month != 0 else '--'
                    # 计算amount同比
                    datas_this_month_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_month, sum_month_of_last_year)) + '%' if sum_month_of_last_year != 0 else '--'
                    datas_this_month_amount['reach'] = self.format_achieve(sum_month, sum_month_target) + '%' if sum_month_target != 0 else '--'
                    data['this_month'] =datas_this_month_amount
                    # 计算季度相关数据
                    datas_this_quarter_amount['amount'] = self.format_amount_or_count(sum_quarter,type)
                    # 计算amount环比
                    datas_this_quarter_amount['month_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_quarter, sum_last_quarter)) + '%' if sum_last_quarter != 0 else '--'
                    # 计算amount同比
                    datas_this_quarter_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_quarter, sum_quarter_of_last_year)) + '%' if sum_quarter_of_last_year != 0 else '--'
                    datas_this_quarter_amount['reach'] = self.format_achieve(sum_quarter, sum_quarter_target) + '%' if sum_quarter_target != 0 else '--'
                    data['this_quarter'] = datas_this_quarter_amount
                    # 获取年度相关数据
                    datas_this_year_amount['amount'] = self.format_amount_or_count(sum_ytd,type)
                    # 计算amount同比
                    datas_this_year_amount['year_growth'] = self.format_number_with_plus_or_minus_sign(
                        self.format_growth(sum_ytd, sum_ytd_of_last_year)) + '%' if sum_ytd_of_last_year != 0 else '--'
                    datas_this_year_amount['month_growth'] = '--'
                    datas_this_year_amount['reach'] = self.format_achieve(sum_ytd, sum_ytd_target) + '%' if sum_quarter_target != 0 else '--'
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
        if len(package_id) > 0 and len(hospital_id) > 0:
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
                        hospital_amount['id'] = row[11]
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

    def sales_data_sub(self,args,yearmonth,package_ids,position_ids,hospital_ids,type):
        underlings_amount = []
        # 计算当前用户所有一级下属
        child_positions = self.get_child_positions(position_ids,yearmonth)
        if len(child_positions) > 0:
            for item in child_positions:
                rep_positoins = self.get_rep_positions([item],yearmonth)
                # # 根据当前用户及下属position_id获取负责的所有产品ids
                #                 # packages = self.position_packages(rep_positoins)
                #                 # # 获取position_ids 所负责的医院
                #                 # hospitals = self.position_hospital(rep_positoins)
                rep_amount = self.sales_data(yearmonth,package_ids,hospital_ids,rep_positoins,type)
                if args and args[0]:
                    products = args[0]['product']
                    if products == "":
                        rep_amount['package_id'] = ''
                    else:
                        rep_amount['package_id'] = products
                else:
                    rep_amount['package_id'] = ''
                with get_connection().cursor() as cursor:
                    SQL_userpositoin = """
                    SELECT U.name,P.name,P.id
                    FROM positions P
                    LEFT JOIN user_positions UP ON UP.position_id=P.id
                    LEFT JOIN orion_users U ON U.user_id=UP.user_id
                    WHERE P.id=%s                
                    """
                    cursor.execute(SQL_userpositoin,(item,))
                    row = cursor.fetchone()
                    if row:
                        rep_amount['username'] = row[0] or ''
                        rep_amount['positionname'] =  row[1] or ''
                        rep_amount['position_id'] = row[2] or ''
                underlings_amount.append(rep_amount)
        return underlings_amount

    def sub_detail(self,*args):
        # args: {"month":month,"position":position,"product":product}
        # 定义变量，存储返回数据
        data, amounts, counts, datas_amount, datas_count = {"args": args}, {}, {}, {}, {}
        yearmonth = args[0]["month"]
        position_id = args[0]["position"]
        product_id = args[0]["product"]
        data['position'] = position_id
        all_rep_positions = self.get_rep_positions([position_id], yearmonth)
        # 根据当前用户及下属position_id获取负责的所有产品ids
        packages = self.position_packages(all_rep_positions)
        # 获取position_ids 所负责的医院
        hospitals = self.position_hospital(all_rep_positions)
        # 获取position_id所负责的剂型
        if product_id:
            packages_id = [product_id]
            with get_connection().cursor() as cursor:
                sql = '''
                            select packages.name,packages.id from packages where id = %s;
                            '''
                cursor.execute(sql, (product_id,))
                row = cursor.fetchone()
                if row:
                    amounts['package_name'] = row[0]
                    amounts['package_id'] = row[1]
        else:
            amounts['package_name'] = '剂型'
            amounts['package_id'] = ''
            packages_id = packages
        # 计算当前用户用户岗位销量
        result_amount = self.sales_data(yearmonth, packages_id, hospitals, all_rep_positions, 'A')
        result_count = self.sales_data(yearmonth, packages_id, hospitals, all_rep_positions, 'B')
        amounts['result'] = result_amount
        counts['result'] = result_count
        # 柱状图数据计算
        echartdata_amount = self.sales_data_echart(yearmonth, packages_id, hospitals, all_rep_positions, 'A')
        echartdata_count = self.sales_data_echart(yearmonth, packages_id, hospitals, all_rep_positions, 'B')
        amounts['this_year_detail'] = echartdata_amount
        counts['this_year_detail'] = echartdata_count
        # 获取所负责医院的相关数据
        accounts_amount = self.sales_data_hospital(args, yearmonth, packages_id, all_rep_positions, hospitals, 'A')
        accounts_count = self.sales_data_hospital(args, yearmonth, packages_id, all_rep_positions, hospitals, 'B')
        amounts['accounts'] = accounts_amount
        counts['accounts'] = accounts_count
        # 获取下属个人相关数据
        underlings_amount = self.sales_data_sub(args, yearmonth, packages_id, position_id, hospitals, 'A')
        underlings_count = self.sales_data_sub(args, yearmonth, packages_id, position_id, hospitals, 'B')
        if len(underlings_amount) > 0:
            amounts['underlings'] = underlings_amount
            counts['underlings'] = underlings_count
            data['is_parent'] = True
        else:
            data['is_parent'] = False
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
            all_rep_positions = self.get_rep_positions(cur_userpositions, month)
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
                packages = self.position_packages(all_rep_positions)
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
                if len(packages):
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
        rep_positions = self.get_rep_positions(position_ids, current_yearmonth)
        with get_connection().cursor() as cursor:
            sql_str2 = """
                    select distinct pg.name,pg.id
                     from position_to_products ptp
                     left join products p on ptp.record_id = p.id
                     left join packages pg on pg.product_id=p.id
                     where position_id  in %s
                    and ptp.deleted =0
                     and  p.deleted=0
                     and  pg.deleted=0;
                    """
            sql_args = (rep_positions,)
            cursor.execute(sql_str2, sql_args)
            results = cursor.fetchall()
            for row in results:
                product_one = {}
                product_one['name'] = row[0]
                product_one['id'] = row[1]
                package_ids.append(product_one)
            data['products'] = package_ids
        return data


    def get_ytd_month(self, yearmonth):
        current_year, current_month = [int(x) for x in yearmonth.split("-")]
        months = ['%s-%s' % (current_year, '{:02d}'.format(mon + 1)) for mon in range(current_month)]
        return months

    def get_quarter_month(self, yearmonth, delta):
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


    def _get_dsm_position_id(self,region,version_id):
        dsm_position_sql = """select org_position_id from position_histories where text_6 = %s
        and version_id = %s
        and level_id = 'ac5c6324-7277-11e7-9efd-34f39ab71988';"""
        with get_connection().cursor() as cursor:
            cursor.execute(dsm_position_sql,(region,version_id,))
            res = cursor.fetchone()
        if res:
            return res

    def get_position_ids(self, month, user_id):
        try:
            position_version_id = models.PositionVersions.objects.get(name=month).id
        except models.PositionHistories.DoesNotExist:
            position_version_id = models.PositionVersions.objects.get(is_active=True).id
        position_ids = models.UserPositionHistories.advance_objects.filter(
            user_id=user_id, version=position_version_id).values_list('position_id',flat=True)
        _position_ids = [int(_id) for _id in position_ids] if position_ids else []
        return (_position_ids, position_version_id)

    def get_child_positions(self, position_ids,yearmonth):
        underling_position_ids = []
        sub_sql = """
            SELECT 
                org_position_id
            FROM
                position_histories ph
                    JOIN
                position_versions pv ON pv.id = ph.version_id
            WHERE
                ph.org_parent = %s
                    AND pv.name = %s
        """
        with get_connection().cursor() as cursor:
            cursor.execute(sub_sql, (position_ids,yearmonth))
            sql_result = cursor.fetchall()
            for row in sql_result:
                underling_position_ids.append(int(row[0]))

        return underling_position_ids

    def get_rep_positions(self, position_ids,yearmonth):
        rep_position_ids = []
        rep_position_ids.extend(position_ids)
        sub_sql = """
                    SELECT 
                        distinct(ph2.org_position_id)
                    FROM
                        position_histories ph1
                            JOIN
                        position_histories ph2 ON ph2.org_path LIKE (CONCAT(ph1.org_path, ph1.org_position_id, '/%%'))
                            JOIN
                        position_versions pv ON ph1.version_id = pv.id
                            AND ph2.version_id = pv.id
                    WHERE
                        ph1.org_position_id in %s
                            AND pv.name = %s;
                """
        with get_connection().cursor() as cursor:
            cursor.execute(sub_sql, (position_ids,yearmonth))
            sql_result = cursor.fetchall()
            if sql_result:
                for row in sql_result:
                    rep_position_ids.append(int(row[0]))
        return rep_position_ids

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