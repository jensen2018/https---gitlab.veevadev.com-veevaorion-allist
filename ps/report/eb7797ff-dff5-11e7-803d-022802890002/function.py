# -*- coding: UTF-8 -*-
import json
from django.db import connection
from django.utils import timezone
from orion.sales_data_management import ps
from datetime import datetime as dt
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
        # 协访次数=本月完成的协访数
        coachings ='0'
        position_Id = user.positions_ids

        rep_position_ids=self.get_rep_position_ids(position_Id)
        rep_position_ids = list(set(rep_position_ids))

        position_Ids = """ ({0}) """.format(','.join(str(s) for s in rep_position_ids))
        user_id = user.user_id
        coach_sql ="""select count(*) from coachings where coaching_date like '{0}' and deleted=0
                            and position_id in {1};"""
        with get_connection().cursor() as c:
            c.execute(coach_sql.format(month+'%',position_Ids))
            coach_info = c.fetchone()
            if coach_info:
                coachings = str(coach_info[0])

        # 会议次数=会议时间为本月且计划审批通过的数
        event_counts = '0'
        event_sql = """ select count(a.id) from `events` a left join object_record_types b on a.record_type=b.id where a.`position_id` in {0} and a.event_start_time like '{1}'
                        and (b.`name` like '%_report' or (b.`name` not like '%_report' and a.event_id is null)) and b.object_id='3f49c30f-5d59-11e6-a130-5cc5d4d378cb' and a.deleted=0;"""
        with get_connection().cursor() as c:
            c.execute(event_sql.format(position_Ids,month+'%'))
            events_info = c.fetchone()
            if events_info:
                event_counts = str(events_info[0])

        # 患者数
        local_time = timezone.localtime(timezone.now())
        patients_day,patients_month,patients_year ='0','0','0'
        year = local_time.strftime('%Y')
        day =  local_time.strftime('%Y-%m-%d')
        patients_day_str = """select sum(num_of_new_increased) from daily_reported_data where position_id in {0} and report_date ='{1}' and deleted=0;"""
        patients_month_str = """select sum(num_of_new_increased) from daily_reported_data where position_id in {0} and report_date like '{1}' and deleted=0;"""
        patients_year_str = """select sum(num_of_new_increased) from daily_reported_data where position_id in {0} and report_date like '{1}' and deleted=0;"""
        with get_connection().cursor() as c:
            c.execute(patients_day_str.format(position_Ids,day))
            patients_day_info = c.fetchone()
            if patients_day_info and patients_day_info[0]:
                patients_day = str(patients_day_info[0])
            
            c.execute(patients_month_str.format(position_Ids,month+'%'))
            patients_month_info = c.fetchone()
            if patients_month_info and patients_month_info[0]:
                patients_month = str(patients_month_info[0])

            c.execute(patients_year_str.format(position_Ids,year+'%'))
            patients_year_info = c.fetchone()
            if patients_year_info and patients_year_info[0]:
                patients_year = str(patients_year_info[0])

        patients_info = [patients_day,patients_month,patients_year]

        # 销量
        sales_month,sales_quater=0,0

        # 获取当前月份
        current_yearmonth = timezone.localtime(timezone.now()).strftime('%Y-%m')
        # 获取所负责的产品
        packages = self.position_packages(rep_position_ids)
        hospitals = self.position_hospital(rep_position_ids)
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
                sql_args = (current_yearmonth, packages, hospitals, rep_position_ids)
                cursor.execute(sql_str2, sql_args)
                results = cursor.fetchone()
                if results:
                    sales_month = results[0]
                    sales_quater = results[1]
        
        sles_info = [sales_month,sales_quater]
               
        return [coachings,event_counts,patients_info,sles_info,timenow]

    # 循环遍历下级positionID(包含自己及自己下属，并非只包含代表)
    def get_rep_position_ids(self, position_id):
        rep_position_ids = []
        position_ids = []
        position_ids.extend(position_id)
        # VOPS-10404 废弃cs_underling取得方式，首先是没有数据，其次因为递归取下属代价太大
        # child_position_ids = self.get_child_positions(position_ids)
        #
        # tmp = []
        # if len(child_position_ids) == 0:
        #     rep_position_ids.extend(position_ids)
        # else:
        #     position_ids.extend(child_position_ids)
        #     is_rep = False
        #     child_level = child_position_ids
        #     next_level = self.get_child_positions(child_level)
        #     if len(next_level) == 0:
        #         # rep_position_ids.extend(child_level)
        #         rep_position_ids.extend(position_ids)
        #     else:
        #         position_ids.extend(next_level)
        #         while is_rep == False:
        #             tmp = self.get_child_positions(next_level)
        #             if len(tmp) == 0:
        #                 is_rep = True
        #                 rep_position_ids.extend(next_level)
        #
        #             else:
        #                 position_ids.extend(tmp)
        #                 next_level = tmp
        #     rep_position_ids.extend(position_ids)
        # # rep_position_ids=self.clear_null_position(month,rep_position_ids)
        # return rep_position_ids
        return self.get_child_positions(position_ids)

    def get_single_position_childs(self, position_id):
        sub_positions = [position_id]
        if position_id:
            sub_sql = "select id from positions where deleted=0 and path like (select concat(ifnull(path,'/'),id,'/%') from positions where id='{}');".format(position_id)
            with get_connection().cursor() as cursor:
                cursor.execute(sub_sql)
                sql_result = cursor.fetchall()
                if sql_result:
                    for row in sql_result:
                        sub_positions.append(row[0])
        return sub_positions
    # 获取下级id
    def get_child_positions(self, cur_ids):
        underling_position_ids = []
        # VOPS-10404 废弃cs_underling取得方式，首先是没有数据，其次因为递归取下属性能太差
        # 改为一次性取得所有下属岗位效率更高
        # sub_sql = """
        #     SELECT underling_position_ids
        #     FROM cs_underling
        #     WHERE position_id in %s
        # """
        # with get_connection().cursor() as cursor:
        #     cursor.execute(sub_sql, (cur_ids,))
        #     sql_result = cursor.fetchall()
        #     for row in sql_result:
        #         for position_id in row[0].split(','):
        #             underling_position_ids.append(int(position_id))
        #             childs = self.get_child_positions([position_id])
        #             if childs:
        #                 underling_position_ids.extend(childs)
        if cur_ids:
            for pid in cur_ids:
                underling_position_ids.extend(self.get_single_position_childs(pid))
        return underling_position_ids

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