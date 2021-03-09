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


@custom_advanced_action_factory.register('custom_object_7_cs_delete')
class Account_cs_delete(AbstractCustomAdvancedAction):
    """
     拜访转医院DCR
     AdvancedActionResult = namedtuple('AdvancedActionResult',['status','message','data'])
     data：业务函数返回结果，需要与前端协调
     message: 提示信息
     status: SUCCESS/ERROR
    """

    def __init__(self, request, action, config=None):
        super(Account_cs_delete, self).__init__(request, action, config)
        params = request.query_params["page_params"]
        dictparams = json.loads(params)
        self.record_id = dictparams["record_id"]
        # https: // pssansheng002.veevasfa.cn
        self.tenant = get_request().environ['HTTP_ORIGIN']

    def process(self):
        logger.info("call_to_account_dcr")
        return self.account_cs_edit(self.record_id)

    def account_cs_edit(self, record_id):
        # call = models.Calls.objects.get(id=record_id)
        # doctor = models.Accounts.objects.get(id=call.account.id)
        # hos_id = doctor.hospital.id
        account_id = models.CustomObjects7.objects.get(id=record_id).account_1_id
        models.CustomObjects7.objects.filter(id=record_id).delete()
        create_url = """{origin}/#/app/account/view/{account}?record-type-id=5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb"""
        redirect_url = create_url.format(origin=self.tenant, account=account_id)

        return self.AdvancedActionResult('SUCCESS', None, [{'url': redirect_url}])


