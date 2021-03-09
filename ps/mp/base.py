# -*- coding: utf-8 -*-
from orionbase.common import orion_function
from orionbase.common import models
from datetime import datetime
from django.utils.timezone import utc, localtime, get_current_timezone, make_aware, now
from orionbase.common.orion_function import get_connection
import logging
logger = logging.getLogger('orion.canis_invocation')

def get_template_message():
    values = {}
    with get_connection().cursor() as cursor:
        sql_str = """       
            SELECT `key`,`value` FROM `cs_template_message` WHERE `deleted`=0
            """
        cursor.execute(sql_str)
        results = cursor.fetchall()
        if results:
            for row in results:
                values[row[0]] = row[1]
    return values

template_message_ids = get_template_message()

def get_mp_app_id(user_id, module_name, record_id, kwargs):
    id = template_message_ids.get('mp_app',None)
    return id
    # return 'wxb498218e83a3ee65'


def get_template_message_id(user_id, module_name, record_id, message_type, message_id, kwargs):
    if module_name == 'event':
        # if message_type == 'electronic-document':
        #     return 'hqCIKlqbMCDkomd415OswBxV1jaW9ZTH1qyKsi-_S1c'
        if message_type == 'invitation':
            id = template_message_ids.get('event_invitation',None)
            return  id
            # return 'hJcfZemADiYeG61CRwCaGQ6Y1nGgISkbm50v_mn69Mc'
        return None
    elif module_name is None:
        if message_type == 'electronic-document':
            logger.info("electronic-document>>>send_message")
            id =  template_message_ids.get('electronic-document',None)
            return  id
            # return 'bpYULYva1rFvfqEsqgRZdFDICjgJ96iMxL15bZniHP4'
    return None


def get_template_message_info(user_id, module_name, record_id, message_type, message_id, account_type, account_id,
                              kwargs):
    if module_name == 'event':
        # if message_type == 'electronic-document':
        #     event_name = models.Events.advance_objects.get(id=record_id).name
        #     doc_name = models.ElectronicDocuments.advance_objects.get(id=message_id).name
        #     return u'感谢您的参会，会议资料现已开放，请查收', event_name, doc_name, None, u'点击详情可查看'
        # if message_type == 'survey':
        #     event_name = models.Events.advance_objects.get(id=record_id).name
        #     user_name = models.OrionUsers.advance_objects.get(user_id=user_id).name
        #     now = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        #     return u'欢迎您参会，请填写调研问卷留下您的宝贵反馈', event_name, u'会议调研问卷', None, u'请点击查看问卷内容'
        if message_type == 'invitation':
            event = models.Events.advance_objects.get(id=record_id)
            user_name = models.OrionUsers.advance_objects.get(user_id=user_id).name
            if event.record_type.name in ('cs_department','cs_department__report','cs_patient_education_meeting','cs_patient_education_meeting__report'):
                start_time = event.date_1.strftime('%Y-%m-%d')
            else:
                start_time = localtime(event.event_start_time.replace(tzinfo=utc)).strftime('%Y-%m-%d %H:%M:%S')
            return u'您好，您有一个会议邀请，请查收', event.picklist_3.label, start_time,event.event_place, u'请按时参加会议，期待您的到来'
    elif module_name is None:
        if message_type == 'electronic-document':
            product_name = models.Products.advance_objects.filter(id__in=models.ElectronicDocumentRelation.advance_objects.filter(electronic_document_id=message_id).values_list('record',flat=True)).values_list('name',flat=True)
            product_names = ';'.join(product_name)
            logger.info("electronic-document_product_name>>>product_name:%s" %product_names)
            doc_type = models.ElectronicDocuments.advance_objects.get(id=message_id).document_type.label
            logger.info("electronic-document_type>>>doc_type:%s" %doc_type)
            doc_name = models.ElectronicDocuments.advance_objects.get(id=message_id).name
            logger.info("electronic-document_name>>>doc_name:%s" %doc_name)
            return u'您好，您有一份新的电子产品资料，请查收', product_names, doc_type, doc_name, u'点击详情可查看'