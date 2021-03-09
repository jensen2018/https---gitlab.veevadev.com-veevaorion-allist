# -*- coding: UTF-8 -*-
import json
from django.db import connection
from django.utils import timezone
from datetime import datetime as dt
from orion.sales_data_management import ps
from orionbase.common.orion_function import *

class ReportClass(object):
    def __init__(self):
        pass

    def index(self, *args):
        user = get_user()
        local_time = timezone.localtime(timezone.now())
        month = local_time.strftime('%Y-%m')
        timenow = local_time.strftime('%Y-%m-%d %H:%M:%S')

        return self._get_data(user, month,timenow)

    def _get_data(self, user, month,timenow):
        # 客户拜访频率=本月对目标医生的已完成的拜访次数/本月对目标医生拜访的人数
        # modified_by Ning Cai cause VOPS-10419 客户要求统计所有状态拜访，所以删除统计sql中的状态条件
        # 功能描述改为：客户拜访频率=本月对目标医生的所有状态的拜访次数/本月对目标医生拜访的人数
        call_frequency ='0'
        call_coverage = '0'
        event_counts = '0'
        call_person = 0
        position_Id = user.positions_ids
        position_Ids = """ ('{0}') """.format(','.join(str(s) for s in position_Id))
        user_id = user.user_id
        call_frequency_sql ="""select count(id), count(distinct account_id) from calls where deleted=0 
                        and call_date like '{0}' and position_id in {1}
                        and account_id in (select professional_id from product_metrics a inner join metrics_versions b on a.version_id=b.id
                        where a.position_id in {1} and b.name ='{2}' and a.deleted=0);"""
        with get_connection().cursor() as c:
            c.execute(call_frequency_sql.format(month+'%',position_Ids,month))
            call_info = c.fetchone()
            if call_info:
                calls = call_info[0]
                call_person = call_info[1]
                if calls!=0 and call_person !=0:
                    call_frequency = str(round(float(calls)/float(call_person),2))
        # 目标医生拜访覆盖率 = 本月已完成的拜访中目标医生的人数/本月全部的目标医生人数 * 100%
        target_doctor_sql = """select count(distinct professional_id) from product_metrics a inner join metrics_versions b on a.version_id=b.id
                        where a.position_id in {0} and b.name ='{1}' and a.deleted=0;"""
        
        with get_connection().cursor() as c:
            c.execute(target_doctor_sql.format(position_Ids,month))
            target_info = c.fetchone()
            if target_info:
                targets = target_info[0]
                if targets!=0 and call_person !=0:
                    call_coverage = str(round(float(call_person) / float(targets)*100,2)) + '%'

        report_call_info = [call_frequency,call_coverage]

        # 会议次数=会议时间为本月且计划审批通过的数
        event_sql = """ select count(a.id) from `events` a left join object_record_types b on a.record_type=b.id where a.`owner`={0} and a.event_start_time like '{1}'
                        and a.deleted=0 and (b.`name` like '%_report' or (b.`name` not like '%_report' and a.event_id is null)) and b.object_id='3f49c30f-5d59-11e6-a130-5cc5d4d378cb';"""
        with get_connection().cursor() as c:
            c.execute(event_sql.format(user_id,month+'%'))
            events_info = c.fetchone()
            if events_info:
                event_counts = str(events_info[0])

        event_info = [event_counts]

        # 患者数
        local_time = timezone.localtime(timezone.now())
        patients_day,patients_month,patients_year ='0','0','0'
        year = local_time.strftime('%Y')
        day =  local_time.strftime('%Y-%m-%d')
        patients_day_str = """select sum(num_of_new_increased) from daily_reported_data where created_by={0} and report_date ='{1}' and deleted=0;"""
        patients_month_str = """select sum(num_of_new_increased) from daily_reported_data where created_by={0} and report_date like '{1}' and deleted=0;"""
        patients_year_str = """select sum(num_of_new_increased) from daily_reported_data where created_by={0} and report_date like '{1}' and deleted=0;"""
        with get_connection().cursor() as c:
            c.execute(patients_day_str.format(user_id,day))
            patients_day_info = c.fetchone()
            if patients_day_info and patients_day_info[0]:
                patients_day = str(patients_day_info[0])
            
            c.execute(patients_month_str.format(user_id,month+'%'))
            patients_month_info = c.fetchone()
            if patients_month_info and patients_month_info[0]:
                patients_month = str(patients_month_info[0])

            c.execute(patients_year_str.format(user_id,year+'%'))
            patients_year_info = c.fetchone()
            if patients_year_info and patients_year_info[0]:
                patients_year = str(patients_year_info[0])

        patients_info = [patients_day,patients_month,patients_year]

        # 销量
        sales_month,sales_quater=0,0

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
                      IFNULL(sum(cs_sum_quarter),0.0)
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
                    sales_month = results[0]
                    sales_quater = results[1]
        sles_info = [sales_month,sales_quater]
        return [report_call_info,event_info,patients_info,sles_info,timenow]


    def _get_quaeter_months(self,month):
        today=dt.now()
        current_q = (today.month-1)//3+1
        yearmonths = []
        for i in range(1,13):
            if ((i-1)//3+1)==current_q and i<today.month:
                if i >9:
                    ym = "{0}-{1}".format(today.year,i)
                else:
                    ym = "{0}-0{1}".format(today.year,i)

                yearmonths.append(ym)
        yearmonths.append(month)

        yearmonths_str = """ ('{0}') """.format("','".join(str(s) for s in yearmonths))

        return yearmonths_str

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