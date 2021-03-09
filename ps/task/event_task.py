#!/usr/bin/env python
# -*- coding:utf-8 -*-
import sys
import os
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), "server"))

from orionbase.settings.celery import celery_app
from orionbase.common.orion_function import get_connection
from orion import status

from orionbase.common import models
import orion_function

# 增加可状态管理的任务名，超时时间为6小时
status.STATUSES.setdefault('notice_pending_events', {'timeout': 60 * 60 * 2})

import time
import paramiko
import unicodecsv as csv
import codecs

import datetime
from datetime import timedelta
import stat

from orion.sales_data_management.base import SalesDataPSBase

import logging
logger = logging.getLogger('notice_pending_events')


class SaveDatabase(object):
    """
    save CSV file content to db
    """

    def __init__(self):
        self.db = self.get_conn()
        self.cursor = None
        self.CIRCULAR_REFERENCE_RAWDATA_IDS = []
        self.version_id = 0
        self.version_bef_id = 0

    def get_conn(self):
        try:
            conn = get_connection()
            return conn
        except Exception as e:
            raise Exception("Error connecting Database server, Please try again!")

    def commit_db(self):
        self.db.commit()

    def close_cursor(self):
        self.cursor.close()

    def close_db(self):
        self.db.close()

@status.register_status('notice_pending_events')
def do_notice_pending_events():
    """
    超过三天未处理的会议审批，给当前审批人发微信消息提醒
    """
    status.set_status('notice_pending_events')

    from orion.common.notification import build_url, Notification, Message
    from django.db import connection

    title_temp = u'【{event_name}】会议审批请求已超过三天，请及时跟进'
    msg_summary_temp = u'【{event_name}】会议审批请求已超过三天，请及时跟进'

    with connection.cursor() as cursor:
        sql_map = """
            select aih.actor_id actor_id, e.id e_id, e.name e_name, e.state e_state, e.record_type e_record_type from approval_instance_histories aih
                join approval_instances ai on ai.id = aih.approval_instance_id and object_name = 'event' and ai.deleted = 0 and ai.state = 'pending'
                join events e on e.id = ai.object_id
            where aih.id in (select max(id) from approval_instance_histories where deleted = 0 group by approval_instance_id) 
                and aih.deleted = 0
                and aih.created_on < (NOW() + INTERVAL-3 DAY);
        """
        cursor.execute(sql_map)
        results = cursor.fetchall()
        if results:
            for e_info in results:
                e_id = e_info[1]
                msg_url = build_url('event', e_id,
                                    e_info[4], e_info[3],
                                    external_param={'tab': 'event_follow_up_tab'})
                if len(e_info[2]) >= 50:
                    e_name = e_info[2][:50] + '...'
                else:
                    e_name = e_info[2]
                msg_title = title_temp.format(
                    event_name=e_name)
                msg_summary = msg_summary_temp.format(
                    event_name=e_info[2])
                message = Message(msg_title, msg_summary, msg_url)
                notification = Notification('event', e_id)
                notification.send_wechat_message([e_info[0]], message)

    status.clear_status('notice_pending_events')

@celery_app.task(name='notifications_for_pending_approval_event')
def notice_pending_events():
    logger.info('start task notice_pending_events,start_time:%s' % time.time())

    # 判断前一个同名任务是否已结束，防止并发执行
    if status.check_status('notice_pending_events'):
        logger.info('jump out of task notice_pending_events,end_time:%s' % time.time())
    else:
        do_notice_pending_events()
        logger.info('end task notice_pending_events,end_time:%s' % time.time())


# 调试使用的代码，
# 启动参数manage.py salesdata load-from-tths --yearmonth 2018-12
class SalesDataPS(SalesDataPSBase):
    def load_from_tths(self, yearmonth):
        status.clear_status('notice_pending_events')
        do_notice_pending_events()