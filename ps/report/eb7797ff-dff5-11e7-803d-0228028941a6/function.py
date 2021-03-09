# -*- coding: UTF-8 -*-
import json
from django.db import connection
from django.utils import timezone
from orion.sales_data_management import ps
from orionbase.common.orion_function import *

class ReportClass(object):
    # def __init__(self):
    #     # self.dsm_roles = (u'cs_地区经理', u'地区经理', u'cs_主管', u'cs_兼职主管')
    #     # self.rep_roles = (u'代表', u'cs_代表')

    # calculate total subordinate number
    def detail(self, args):
        local_time = timezone.localtime(timezone.now())
        month = local_time.strftime('%Y-%m')
        yearmonth = args['yearmonth']
        position_id = args['position-id']
        position_history_id = args['position-history-id']
        selected_position = args['selected-position']
        last_yearmonth = ps.select_position_version_for_salesdata(yearmonth)
        position_ids = []
        if position_history_id:
            get_positions_sql = """select org_position_id from position_histories where id='"""+str(position_history_id)+"""';"""
        if position_id:
            get_positions_sql = """select uph1.position_id from user_position_histories uph1
                      left join user_position_histories uph2 on uph1.user_id = uph2.user_id
                      left join position_versions pv1 on uph1.version_id = pv1.id
                      left join position_versions pv2 on uph2.version_id = pv2.id
                      where pv1.name = '""" + last_yearmonth + """' and uph2.position_id = '""" + str(
                position_id) + """' and pv2.name = '""" + month + """';"""
        with get_connection().cursor() as c:
            c.execute(get_positions_sql)
            raw_position_ids = c.fetchall()
            for result_row in raw_position_ids:
                position_ids.append(result_row[0])
            if position_ids:
                # 一人多岗，如果自己的岗位存在上下级关系，那么就去掉自己的下级岗位，否则会导致数据重复
                # c.execute("""select id, path from positions where deleted=0 and id in %s""", (position_ids,))
                c.execute("""select DISTINCT ph.org_position_id, ph.org_path from position_histories ph 
                                left join position_versions pv on ph.version_id = pv.id
                                where (pv.name='""" + last_yearmonth + """' or pv.name='""" + month + """' ) 
                                and ph.deleted=0 and ph.org_position_id in %s""", (position_ids,))
                result_row = c.fetchall()
                positions_to_remove = []
                for id, path in result_row:
                    for p_id in position_ids:
                        if '/' + str(p_id) + '/' in path and id not in positions_to_remove:
                            positions_to_remove.append(id)
                for position_to_remove in positions_to_remove:
                    position_ids.remove(position_to_remove)
        stam = 0
        sales = 0
        percentage = '0.0%'
        for p_id in position_ids:
            if selected_position == 'self':
                sql_children = """SELECT @stam:=cast(round(ifnull(sum(st.amount),0))as SIGNED INTEGER)
                                  FROM sales_targets st force index(idx_sum_filter)
                                  LEFT JOIN object_record_types ort on st.record_type_id = ort.id
                                  LEFT JOIN object_states os on st.state_id = os.id
                                  WHERE st.deleted=0 and st.yearmonth = '""" + yearmonth + """' and st.position_id = """ + str(p_id) + """ and ort.name='position_target' and os.name='applied';"""

                sql_aa = """  SELECT cast(round(ifnull(sum(price*confirmed_quantity),0)) as SIGNED INTEGER)
                              FROM sales_data_allocations
                              where deleted=0 and yearmonth = '""" + yearmonth + """' and position_id =""" + str(p_id) + """;"""

                sql_compensation = """SELECT cast(round(ifnull(sum(number_1),0)) as SIGNED INTEGER)
                                      FROM custom_object_4
                                      WHERE deleted=0 and text_17 = '""" + yearmonth + """' and position_id = """ + str(p_id) + """;"""

            else:

                sql_children = """SELECT @stam:=cast(round(ifnull(sum(st.amount),0))as SIGNED INTEGER)
                                  FROM sales_targets st force index(idx_sum_filter)
                                  WHERE  st.yearmonth = '""" + yearmonth + """' and (st.position_path like '%/""" + str(p_id) + """/%')
                                  and st.record_type_id='2663727f-0473-45ed-86ca-55169d9e5799' 
                                  and st.state_id ='a367f6a1-c4fa-4cbb-a04b-1208faa81a8b';"""

                sql_aa = """  SELECT cast(round(ifnull(sum(sda.price*sda.confirmed_quantity),0)) as SIGNED INTEGER)
                              FROM sales_data_allocations sda
                              INNER JOIN position_histories p ON p.org_position_id = sda.position_id
                              INNER JOIN position_versions pv on pv.name = '""" + last_yearmonth + """' and p.version_id = pv.id
                              where sda.deleted=0 and sda.yearmonth = '""" + yearmonth + """' and (p.org_path like '%/""" + str(p_id) + """/%'
                              or p.org_position_id =""" + str(p_id) + """);"""

                sql_compensation = """SELECT cast(round(ifnull(sum(c.number_1),0)) as SIGNED INTEGER)
                                      FROM custom_object_4 c
                                      INNER JOIN position_histories p ON p.org_position_id = c.position_id
                                      INNER JOIN position_versions pv on pv.name = '""" + last_yearmonth + """' and p.version_id = pv.id
                                      WHERE c.deleted=0 and c.text_17 = '""" + yearmonth + """' and (c.position_id = """ + str(p_id) + """
                                      OR p.org_path like '%/""" + str(p_id) + """/%');"""

            with get_connection().cursor() as cursor:
                cursor.execute(sql_children)
                row = cursor.fetchall()
                if row:
                    # import ipdb;ipdb.set_trace()
                    stam += row[0][0]
            with get_connection().cursor() as cursor:
                cursor.execute(sql_aa)
                row = cursor.fetchall()
                if row:
                    # import ipdb;ipdb.set_trace()
                    sales += row[0][0]
            with get_connection().cursor() as cursor:
                cursor.execute(sql_compensation)
                row = cursor.fetchall()
                if row:
                    sales += row[0][0]

        if stam != 0:
            percentage = "%.2f%%" % (float(sales)/float(stam)*100)
            # percentage = '0.0%'

        data = {}
        data1 = {}
        data2 = {}
        data['data'] = str(sales).replace('0E-8','0.0')
        data['label'] = "A"
        data1['data'] = str(stam)
        data1['label'] = "T"
        data2['data'] = percentage
        data2['label'] = "A/T"
        li = []
        li.append(data)
        li.append(data1)
        li.append(data2)

        return li

