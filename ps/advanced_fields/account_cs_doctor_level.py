#!/usr/bin/env python
# -*- coding:utf-8 -*-
from orion.common.custom_advanced_field import custom_advanced_field_factory
from orion.common.custom_advanced_field import custom_advanced_list_field_factory
from orionbase.common import models
import datetime
from django.db import connection



@custom_advanced_list_field_factory.register('account_cs_doctor_level')
class AccountDoctorLevelList(object):

    def __init__(self, current_user):
        self.current_user = current_user

    def get_record_data(self, record_ids):
        """
        设置advanced field需要展示的值
        必须要有的方法！
        :param record_ids: 本页全部的记录id（list）
        :return: 返回一个字典以record_id为key，需要展示的值为value。
        """
        results = {}
        # 返回医生对应的级别

        # 获取当前年月
        cur_yearmonth = datetime.datetime.now().strftime('%Y-%m')

        if record_ids:
            # 获取医生级别
            with connection.cursor() as cursor:
                doctor_level_sql = """
                    select a.professional_id,c.label from product_metrics a left join products b on a.product_id=b.id 
                        left join picklist_values c on a.evaluation_id=c.id
                        inner join metrics_versions f on a.version_id=f.id 
                        where a.deleted=0 and professional_id in %s and f.name= %s;
                """
                cursor.execute(doctor_level_sql, (record_ids,cur_yearmonth,))
                sql_res = cursor.fetchall()

            if sql_res:
                doctor_infos = {item[0]:item[1:] for item in sql_res}

                for record in record_ids:
                    doctor_info = doctor_infos.get(record)
                    if doctor_info:
                        results[record] = u"%s" %(
                        doctor_info[0]
                    )
                    else:
                        results[record] = u"该医生未分级"
            else:
                for record_id in record_ids:
                    results[record_id] = u"该医生未分级"
        return results

    def get_metadata(self):
        """
        修改advanced field的metadata
        必须要有的方法！且必须指定column_type的值
        :return: 返回一个dict以需要修改的属性为key，值为value
        """
        result = {'column_type': 'text'}
        return result

    def save_value(self, data, record_id):
        """
        advanced field的保存逻辑
        可以没有的方法，但不会有默认实现。
        :param data: 前端传来的数据
        :param record_id: 前端传来的查询条件信息
        :return: None
        """
