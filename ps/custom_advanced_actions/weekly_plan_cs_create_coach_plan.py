#!/usr/bin/env python
# -*- coding:utf-8 -*-
import json
import traceback
import httplib
import xml.dom.minidom
import datetime
import hashlib
from orion.common.advanced_action import custom_advanced_action_factory, AbstractCustomAdvancedAction
from django.db import connection
from orionbase.common.orion_function import *
from xml.sax.saxutils import escape
import logging
from orionbase.middelware.common import get_request
from orionbase.common import models

logger = logging.getLogger('orion.advanced_action')


@custom_advanced_action_factory.register('weekly_plan_cs_create_coach_plan')
class CreateCoachPlanAction(AbstractCustomAdvancedAction):
    """
     AdvancedActionResult = namedtuple('AdvancedActionResult',['status','message','data'])
     data：业务函数返回结果，需要与前端协调
     message: 提示信息
     status: SUCCESS/ERROR
    """

    def __init__(self, request, action, config=None):
        super(CreateCoachPlanAction, self).__init__(request, action, config)
        params = request.query_params["page_params"]
        dictparams = json.loads(params)
        self.record_id = dictparams["record_id"]
        self.user = request.user
        # https: // pssansheng002.veevasfa.cn
        self.tenant = get_request().environ['HTTP_ORIGIN']

    def process(self):
        logger.info("calls_to_create_coach_plan")
        if self.record_id:
            return self.create_coach_plan(self.record_id)

    def create_coach_plan(self, record_id):
        # 地区 主管点击拜访计划详情页的创建协访计划时：
        instance = models.WeeklyPlans.objects.get(id=record_id)
        is_need_create = 0
        if instance.parent:
            coach_plan = models.WeeklyPlans.objects.filter(id=instance.parent.id,deleted=0).first()
            # 删除之前创建的协访计划
            if coach_plan:
                user_id = self.user.id
                if str(coach_plan.owner.id)==str(user_id):
                    coach_plan.deleted =1
                    coach_plan.save(update_fields=['deleted'])
                    instance.parent = None
                    instance.save(update_fields=['parent'])
                else:
                    is_need_create = -1
                    message = u'这个拜访计划的协访计划已经被其他人创建。'
                    return self.AdvancedActionResult('ERROR', message, [])
        if is_need_create == 0:
            owner = self.user
            if self.user.id != instance.owner.id:
                coach_plan = models.WeeklyPlans(
                    deleted = 0,
                    date = instance.date,
                    ampm_id = instance.ampm,
                    created_by = instance.created_by,
                    modified_by = instance.created_by,
                    owner = owner,
                    record_type_id = models.ObjectRecordTypes.objects.get(object__name='weekly_plan',name='weekly_plan_coaching_plans'),
                    created_on = datetime.datetime,
                    modified_on = datetime.datetime,
                    coaching_plan_rep_id = instance.owner.id
                )
                coach_plan.save()
                instance.parent = coach_plan
                instance.save(update_fields=['parent'])
                message = u'已成功创建协访计划'
                return self.AdvancedActionResult('SUCCESS', message, [])
            else:
                message = u'不能创建协访自己的计划'
                return self.AdvancedActionResult('ERROR', message, [])

