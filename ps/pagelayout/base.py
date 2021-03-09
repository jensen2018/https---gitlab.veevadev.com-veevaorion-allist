# -*- coding: utf-8 -*-
import json
from functools import wraps

from orionbase.common.models import ObjectStates, CustomObject, Events, Coachings, OrionUsers, SpotChecks, SalesDataEstimations, Calls
from orion.common.user import get_current_user
import datetime
from orionbase.common.models import WeeklyPlans
from django.utils import timezone



class PageLayout(object):
    def __init__(self, user_id, position_id, object_name, view_type, pagelayout_id, record_id, button, paramdict):
        self.object_name = object_name
        self.view_type = view_type
        self.user_id = user_id
        self.pagelayout_id = pagelayout_id
        self.record_id = record_id
        self.button = button
        self.paramdict = paramdict
        self.action_map = {
            'weekly_plan_cs_create_coach_plan':self.handle_create_coach_plan_action
        }
        self.action_visibility_map = {
            'call_edit': self.show_call_edit_action,
            'weekly_plan_call_plan_complete': self.show_weekly_action  
        }

    def handle_action(self):
        result = self.action_map.get(self.object_name + '_' + self.button.get('name'), self.button)
        return result() if callable(result) else result

    def show_action(self):
        result = self.action_visibility_map.get(self.object_name + '_' + self.button.get('name'), self.button)
        return result() if result and callable(result) else True

    def show_call_edit_action(self):
        current = Calls.objects.get(id=self.record_id)
        now = datetime.datetime.now()
        allow_edit_date = (now - datetime.timedelta(days=2, hours=0, minutes=0, seconds=0)).date()
        if type(current.call_date) == datetime.date:
 	        call_date = current.call_date
        else:
            call_date = datetime.datetime.strptime(current.call_date, '%Y-%m-%d').date()
        return call_date >= allow_edit_date

    def show_weekly_action(self):  # 实现self.show_weekly_action方法
        plan_date = WeeklyPlans.objects.get(id=self.record_id).date
        today = timezone.localtime(timezone.now()).date()
        if today <= plan_date <= (today + datetime.timedelta(days=3)):
            return True
        return False

    def handle_create_coach_plan_action(self):
        # 拜访详情页新增创建协访计划按钮，仅地区和主管可见
        if self.button['name'] in ['cs_create_coach_plan']:
            ori_user = OrionUsers.advance_objects.get(user=self.user_id)
            role_id = ori_user.role.id
            if role_id in [u'5a013aaa-b5c5-11ea-aab5-0215c63fce1a',u'b74845ad-b5fe-11ea-aab5-0215c63fce1a',u'53de9671-1da3-11e6-93fb-5cc5d4b57136']:
                return self.button
            else:
                return None
        else:
            return None