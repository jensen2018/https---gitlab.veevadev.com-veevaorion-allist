#!/usr/bin/env python
# -*- coding:utf-8 -*-
from orion.common.custom_advanced_field import custom_advanced_field_factory
from orion.common.custom_advanced_field import custom_advanced_list_field_factory
from orionbase.common import models
import datetime
from django.db import connection


@custom_advanced_field_factory.register('account_cs_speaker_level')
class AccountSpeakerLevel(object):

    def __init__(self, current_user):
        self.current_user = current_user

    def get_record_data(self, record_id):
        """
        设置advanced field需要展示的值
        必须要有的方法！
        :param record_id: 记录id
        :return: 返回需要展示的值为value。
        """
        # 返回医生对应的讲者级别

        if record_id:
            # 获取讲者级别
            with connection.cursor() as cursor:
                speaker_level_sql = """
                    select pv.label from speakers s, accounts a, picklist_values pv 
                    where s.professional_id = a.id and s.level_id = pv.id and a.id = %s;
                """
                cursor.execute(speaker_level_sql, (record_id,))
                results = cursor.fetchone()

            if results:
                speaker_info = u"%s" %(
                    results[0]
                )
            else:
                speaker_info = u""
            return speaker_info

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

@custom_advanced_list_field_factory.register('account_cs_speaker_level')
class AccountSpeakerLevelList(object):

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
        # 返回医生对应的讲者级别

        if record_ids:
            # 获取讲者级别
            with connection.cursor() as cursor:
                speaker_level_sql = """
                    select a.id, pv.label from speakers s, accounts a, picklist_values pv 
                    where s.professional_id = a.id and s.level_id = pv.id and a.id in %s;
                """
                cursor.execute(speaker_level_sql, (record_ids,))
                sql_res = cursor.fetchall()

            if sql_res:
                speaker_infos = {item[0]:item[1:] for item in sql_res}

                for record in record_ids:
                    speaker_info = speaker_infos.get(record)
                    if speaker_info:
                        results[record] = u"%s" %(
                        speaker_info[0]
                    )
                    else:
                        results[record] = u""
            else:
                for record_id in record_ids:
                    results[record_id] = u""
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
