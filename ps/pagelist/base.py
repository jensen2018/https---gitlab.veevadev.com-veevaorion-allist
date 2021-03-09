# -*- coding: utf-8 -*-
import json
from functools import wraps

from orionbase.common.models import ObjectStates, CustomObject, Events,OrionUsers, \
    OrganizationInformations,DailyReportedData,OrionUsers,RoleToObjectPermissions,CustomObjects15
from orion.common.user import get_current_user
import datetime

# custom advanced action 使用register dict控制
# 其他类型，visibility_dict控制
register_dict = {}
visibility_dict = {}


def register(object_name):
    def wraper(func):
        @wraps(func)
        def wrap_fuction(*args, **kwargs):
            return func(*args, **kwargs)

        register_dict[object_name] = wrap_fuction
        return wrap_fuction

    return wraper


def register_visibility(object_name):
    def wraper(func):
        @wraps(func)
        def wrap_fuction(*args, **kwargs):
            return func(*args, **kwargs)

        visibility_dict[object_name] = wrap_fuction
        return wrap_fuction

    return wraper


class PageList(object):
    def __init__(self, user_id, position_id, object_name, view_type, page_list_id, button, paramdict):
        self.object_name = object_name
        self.view_type = view_type
        self.user_id = user_id
        self.page_list_id = page_list_id
        self.button = button
        self.paramdict = paramdict

    def handle_action(self):
        result = register_dict.get(self.object_name,  self.button)
        return result(self) if result and callable(result) else result

    def show_action(self):
        result = visibility_dict.get(self.object_name,  self.button)
        return result(self) if result and callable(result) else True



@register('daily_reported_data')
def show_reported_button(pagelist):
    user_id = pagelist.user_id
    if pagelist.button['name']=='cs_reported':
        current_date = datetime.datetime.now().strftime('%Y-%m-%d')
        current_user_role = OrionUsers.objects.get(user_id=user_id).role.id
        role_permission = RoleToObjectPermissions.objects.filter(deleted=0,object__name='daily_reported_data',role_id=current_user_role)
        if role_permission:
            createable = role_permission[0].allow_create
            if createable and not DailyReportedData.objects.filter(deleted=0, report_date=current_date, owner=user_id).exists():
                return pagelist.button
            else:return None
        else:return None


@register('custom_object_15')
def show_reported_button(pagelist):
    user_id = pagelist.user_id
    if pagelist.button['name']=='cs_reported':
        current_date = datetime.datetime.now().strftime('%Y-%m-%d')
        current_user_role = OrionUsers.objects.get(user_id=user_id).role.id
        role_permission = RoleToObjectPermissions.objects.filter(deleted=0,object__name='custom_object_15',role_id=current_user_role)
        if role_permission:
            createable = role_permission[0].allow_create
            if createable and not CustomObjects15.objects.filter(deleted=0, date_1=current_date, owner=user_id).exists():
                return pagelist.button
            else:return None
        else:return None
