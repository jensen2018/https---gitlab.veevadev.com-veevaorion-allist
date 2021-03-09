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
from orion.common.user import get_current_user
from orionbase.utils.version_utils import get_current_version
logger = logging.getLogger('orion.advanced_action')


@custom_advanced_action_factory.register('daily_reported_data_cs_reported')
class DailyReportedDataReported(AbstractCustomAdvancedAction):
    """
     拜访转医院DCR
     AdvancedActionResult = namedtuple('AdvancedActionResult',['status','message','data'])
     data：业务函数返回结果，需要与前端协调
     message: 提示信息
     status: SUCCESS/ERROR
    """

    def __init__(self, request, action, config=None):
        super(DailyReportedDataReported, self).__init__(request, action, config)
        params = request.query_params["page_params"]
        self.user_id = request.user.id
        dictparams = json.loads(params)
        # https: // pssansheng002.veevasfa.cn
        self.tenant = get_request().environ['HTTP_ORIGIN']
        # self.user_id = get_current_user().user_id
        # self.userposition = get_current_user().current_position.id

    def process(self):
        logger.info("create reported data")
        return self.dail_reported_data_reported()

    def dail_reported_data_reported(self):
        position_ids = models.UserPositions.objects.filter(user_id=self.user_id,is_default=1,deleted=0)
        position = position_ids[0].position_id  if position_ids else None
        position_history_id = models.PositionHistories.objects.get(version=get_current_version(),org_position_id=position).id,
        data = models.DailyReportedData(
            report_date = datetime.datetime.now().strftime('%Y-%m-%d'),
            num_of_new_increased = 0,
            owner = models.User.objects.get(id=self.user_id),
            position_id = position,
            position_history_id = position_history_id,
            deleted=0,
            record_type_id = models.ObjectRecordTypes.objects.get(object__name='daily_reported_data',name='daily_reported_by_hcp'),
            state_id = models.ObjectStates.objects.get(object__name='daily_reported_data',name='draft'),
            created_by = models.User.objects.get(id=self.user_id),
            modified_by = models.User.objects.get(id=self.user_id),
        )
        data.save()
        return self.AdvancedActionResult('SUCCESS', None, [])


