#!/usr/bin/env python
# -*- coding:utf-8 -*-
import sys
import os

sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), "server"))

from orion import status
from orion.status import register_status

import paramiko
import unicodecsv as csv
import time
import codecs
import datetime
import dateutil
import logging

from orionbase.common import models
from django.utils.timezone import utc, localtime, get_current_timezone, make_aware, now
import datetime
from django_bulk_update.helper import bulk_update
from django.db import transaction

import logging
logger = logging.getLogger('orionbase.script')

def main():
    refresh_event_datetime()

# VOPS-8288 对业务处理追加事务 start
@transaction.atomic
def refresh_event_datetime():
    instances = models.Events.advance_objects.filter(deleted=0)
    update_events = []
    for instance in instances:
        if type(instance.event_start_time) == datetime.datetime:
            start_time = localtime(instance.event_start_time.replace(tzinfo=utc))
        else:
            start_time = make_aware(datetime.datetime.strptime(instance.event_start_time, '%Y-%m-%d %H:%M:%S'))
        if type(instance.event_end_time) == datetime.datetime:
            end_time = localtime(instance.event_end_time.replace(tzinfo=utc))
        else:
            end_time = make_aware(datetime.datetime.strptime(instance.event_end_time, '%Y-%m-%d %H:%M:%S'))

        # ----------------------------------------------------------------------
        # 开始时间 小于 9点
        start_hour = start_time.strftime('%H')
        start_datetime = start_time
        if int(start_hour) < 9:
            start_datetime = start_time.replace(minute=0, hour=9, second=0)

            # 开始时间大于17
        elif int(start_hour) >= 16:
            start_m = start_time.strftime('%M')
            if int(start_m) > 30:
                start_datetime = start_time.replace(minute=30, hour=16)
            else:
                start_datetime = start_time.replace(hour=16)
        
        # 结束时间小于9点
        end_hour = end_time.strftime('%H')
        end_datetime = end_time
        if int(end_hour) <= 9:
            end_m = end_time.strftime('%M')
            if int(end_m) < 30:
                end_datetime = end_time.replace(minute=30, hour=9)
            else:
                end_datetime = end_time.replace(hour=9)
        elif int(end_hour) >= 17:
            end_datetime = end_time.replace(minute=0,hour=17)

        # ----------------------------------------------------------------------
        if instance.picklist_2_id in ['a3630acd-5fa1-4146-94fe-f56fd03e1f05','9bedaa54-e621-40da-b814-6b34af3e66ae']:
            instance.datetime_1 = instance.event_start_time
            instance.datetime_2 = instance.event_end_time
        else:
            instance.datetime_1 = start_datetime
            instance.datetime_2 = end_datetime
        update_events.append(instance)

    if update_events:
        bulk_update(update_events, update_fields=['datetime_1', 'datetime_2'], batch_size=100)

    # models.Events.advance_objects.filter(deleted=0,picklist_2_id__in=['a3630acd-5fa1-4146-94fe-f56fd03e1f05','9bedaa54-e621-40da-b814-6b34af3e66ae']).update(datetime_1=event_start_time, datetime_2=event_end_time)