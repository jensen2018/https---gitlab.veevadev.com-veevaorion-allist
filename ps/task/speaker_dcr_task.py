#!/usr/bin/env python
# -*- coding:utf-8 -*-
import sys
import os
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), "server"))

from orionbase.settings.celery import celery_app
from orion import status
import time
from orion.sales_data_management.base import SalesDataPSBase
import logging
logger = logging.getLogger('notice_pending_speaker_dcr')
from orion.common.notification import build_url, Notification, Message
from django.db import connection

# 增加可状态管理的任务名，超时时间为6小时
status.STATUSES.setdefault('notice_pending_speaker_dcr', {'timeout': 60 * 60 * 2})


@status.register_status('notice_pending_speaker_dcr')
def do_notice_pending_speaker_dcr():
    """
    超过三天未处理的讲者审批，给当前审批人发微信消息提醒
    """
    status.set_status('notice_pending_speaker_dcr')

    title_temp = u'【{proposer}】申请讲者审批已超过三天，请及时跟进'
    msg_summary_temp = u'【{proposer}】申请【{record_name}】已超过三天，讲者姓名【{speaker_name}】，请及时跟进'

    with connection.cursor() as cursor:
        sql_map = """
            select aih.actor_id actor_id, sd.id sd_id, o.`name` proposer, ort.label sd_record_type, sd.name sd_name, sd.record_type_id, sd.state_id  from approval_instance_histories aih
            join approval_instances ai on ai.id = aih.approval_instance_id and object_name = 'speaker_dcr' and ai.deleted = 0 and ai.state = 'pending'
            join speaker_dcrs sd on sd.id = ai.object_id
            join orion_users o on o.user_id = sd.`owner`
            join object_record_types ort on ort.id = sd.record_type_id
            where aih.id in (select max(id) from approval_instance_histories where deleted = 0 group by approval_instance_id) 
            and aih.deleted = 0
            and aih.created_on < (NOW() + INTERVAL-3 DAY);
        """
        cursor.execute(sql_map)
        results = cursor.fetchall()
        if results:
            for sd_info in results:
                sd_id = sd_info[1]
                msg_url = build_url('speaker_dcr', sd_id,
                                    sd_info[5], sd_info[6])
                msg_title = title_temp.format(
                    proposer=sd_info[2])
                msg_summary = msg_summary_temp.format(
                    proposer=sd_info[2], record_name=sd_info[3], speaker_name=sd_info[4])
                message = Message(msg_title, msg_summary, msg_url)
                notification = Notification('speaker_dcr', sd_id)
                notification.send_wechat_message([sd_info[0]], message)

    status.clear_status('notice_pending_speaker_dcr')

@celery_app.task(name='notifications_for_pending_approval_speaker_dcr')
def notice_pending_speaker_dcr():
    logger.info('start task notice_pending_speaker_dcr,start_time:%s' % time.time())

    # 判断前一个同名任务是否已结束，防止并发执行
    if status.check_status('notice_pending_speaker_dcr'):
        logger.info('jump out of task notice_pending_speaker_dcr,end_time:%s' % time.time())
    else:
        do_notice_pending_speaker_dcr()
        logger.info('end task notice_pending_speaker_dcr,end_time:%s' % time.time())


# 调试使用的代码，
# 启动参数manage.py salesdata load-from-tths --yearmonth 2018-12
class SalesDataPS(SalesDataPSBase):
    def load_from_tths(self, yearmonth):
        status.clear_status('notice_pending_speaker_dcr')
        do_notice_pending_speaker_dcr()