#!/usr/bin/env python
# -*- coding:utf-8 -*-
from orion.common.custom_advanced_field import custom_advanced_field_factory
from orion.common.custom_advanced_field import custom_advanced_list_field_factory
from orionbase.common import models
import datetime
from django.db import connection


@custom_advanced_field_factory.register('speaker_dcr_cs_doctor_level_speaker_dcr')
class DoctorLevelSpeakerDcr(object):

    def __init__(self, current_user):
        self.current_user = current_user

    def get_record_data(self, record_id):
        """
        设置advanced field需要展示的值
        必须要有的方法！
        :param record_id: 记录id
        :return: 返回需要展示的值为value。
        """
        # 返回讲者DCR对应的医生产品级别

        # 获取讲者对应的医生id
        professional_id = models.SpeakerDCRs.objects.filter(id=record_id).values_list('professional_id', flat=True)[0]

        # 获取当前年月
        cur_yearmonth = datetime.datetime.now().strftime('%Y-%m')

        if record_id:
            # 获取医生分级
            with connection.cursor() as cursor:
                product_level_sql = """
                            select p.`name`,pv.label
                            from product_metrics pm
                            left join products p on pm.product_id = p.id
                            left join speaker_dcrs s on pm.professional_id = s.professional_id
                            left join picklist_values pv on pm.evaluation_id = pv.id
                            left join metrics_versions mv on pm.version_id = mv.id
                            where s.professional_id = %s and mv.`name` = %s;
                        """
                cursor.execute(product_level_sql, (professional_id, cur_yearmonth,))
                results = cursor.fetchone()

            if results:
                product_level_info = u"%s" % (results[1] if results[1] else u'该医生未分级')
            else:
                product_level_info = u"该医生未分级"
            return product_level_info

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


@custom_advanced_list_field_factory.register('speaker_dcr_cs_doctor_level_speaker_dcr')
class DoctorLevelSpeakerDcr(object):

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
        # 返回讲者DCR对应的医生产品级别

        # 获取讲者对应的医生id
        professional_ids = models.SpeakerDCRs.objects.filter(id__in=record_ids).values_list('professional_id', flat=True)
        professional_ids = list(map(lambda x: int(x), professional_ids))

        # 获取当前年月
        cur_yearmonth = datetime.datetime.now().strftime('%Y-%m')

        if record_ids:
            # 获取医生分级
            with connection.cursor() as cursor:
                product_level_sql = """
                           select s.id,p.`name`,pv.label
                            from product_metrics pm
                            left join products p on pm.product_id = p.id
                            left join speaker_dcrs s on pm.professional_id = s.professional_id
                            left join picklist_values pv on pm.evaluation_id = pv.id
                            left join metrics_versions mv on pm.version_id = mv.id
                            where s.professional_id in %s and mv.`name` = %s;
                        """
                cursor.execute(product_level_sql, (professional_ids, cur_yearmonth,))
                sql_res = cursor.fetchall()

            if sql_res:
                product_level_infos = {item[0]: item[1:] for item in sql_res}

                for record in record_ids:
                    product_level_info = product_level_infos.get(record)
                    if product_level_info:
                        results[record] = u"%s" % (product_level_info[1] if product_level_info[1] else u'该医生未分级')
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
