# -*- coding: utf-8 -*-
import datetime

from orionbase.common import models
from django.utils import timezone
from orionbase.common.models import Calls, Events, Coachings, TimeOffTerritories, Objects

def get_allow_finish_plan_ids(weekly_plan_ids, current_user_id):
    """
    weekly_plan_ids: 可以显示"去完成"按钮的weekly plan ids
    current_user_id: 当前用户id
    return: 返回可以显示"去完成"按钮的weekly plan ids
    """
    start_day = timezone.localtime(timezone.now()).date()
    end_day = start_day + datetime.timedelta(days=-2)
    weekly_plans = models.WeeklyPlans.objects.filter(
        record_type_id = '1860f152-e352-4d5c-947c-a28c27bb1b94',
        id__in=weekly_plan_ids, date__range=(end_day, start_day))
    plan_ids = list(weekly_plans.values_list('id', flat=True))

    # role_name = OrionUsers.advance_objects.get(user_id=current_user_id).role.name

    return plan_ids


def get_allow_create_coaching_ids(call_ids, current_user_id):
    """
    call_ids: 可以显示"去随访"按钮的 call ids
    current_user_id: 当前用户id
    return: 返回可以显示"去随访"按钮的 call ids
    """
    start_day = timezone.localtime(timezone.now()).date()
    end_day = start_day + datetime.timedelta(days=-2)
    calls = models.Calls.objects.filter(
        id__in=call_ids, call_date__range=(end_day, start_day))
    call_ids = list(calls.values_list('id', flat=True))
    return [] #call_ids

def get_dict_label():
    object_name_label_map = dict(
        Objects.objects.filter(name__in=['call', 'event', 'coaching']).values_list('name', 'label'))
    return object_name_label_map

def format_plan_content(data, is_week):
    '''
     对plan计划（week和day）展示格式处理
    :param data: 传入数据
    :param is_week: 如果week和day有单独逻辑处理开启，默认TRUE
    :return: 处理后的格式
    '''
    object_name_label_map = get_dict_label()
    plan_title = None
    if data.record_type.name == 'weekly_plan_coaching_plans':
    #     plan_title = object_name_label_map['coaching'] + ': ' + data.coaching_plan_rep.username
    # else:
    #     if data.time_off_territory_id:
    #         plan_title = data.time_off_territory.label
    #     elif data.professional_id:    
    #         plan_title = object_name_label_map['call'] + ': ' + data.professional.name
    #     elif data.hospital_id:
    #         plan_title = object_name_label_map['call'] + ': ' + data.hospital.name
    # return plan_title
        if is_week:
            plan_title = data.coaching_plan_rep.orionusers.name

        else:
            if data.coaching_plan_rep:
                plan_title = u"{}: {}".format(data.record_type.label, data.coaching_plan_rep.orionusers.name)
            else:
                plan_title = data.record_type.label

    return plan_title

def format_agenda_content(record, is_week):
    '''
    :param record: 数据类型
    :param is_week: 如果需要单独逻辑处理week或者day
    :return: 返回处理好的内容
    '''
    object_name_label_map = get_dict_label()
    agenda_title = None
    # if isinstance(record, Calls):
    #     agenda_title = object_name_label_map['call'] + ': ' + record.account.name
    # elif isinstance(record, Events):
    #     agenda_title = object_name_label_map['event'] + ': ' + record.name
    if isinstance(record, Coachings):
        if is_week:
            agenda_title = record.coaching_rep.orionusers.name
        else:    
            agenda_title = object_name_label_map['coaching'] + ': ' + record.coaching_rep.orionusers.name
    # elif isinstance(record, TimeOffTerritories):
    #     agenda_title = record.type.label
    return agenda_title

