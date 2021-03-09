# coding=UTF-8

import json
import operator
from decimal import Decimal

from django.db.models import Q, Sum
from orionbase.common.models import CustomObjects15, PageListConditions, User, Positions, PositionHistories, PageLists
from orionbase.utils.version_utils import get_current_version
from orion.common.pagination import Pagination
from orion.common.user import get_current_user, search_history_subordinate
from orionbase.common.orion_function import get_all_page_list_record_ids
from orion.api.export_api import export_advance_dict, list_loader_factory
from calendar import monthrange
from datetime import datetime, timedelta
from orionbase.common.orion_function import get_user
from django.db import connection
from orion.position.position import get_sub_positions
from orionbase.common import models
from orionbase.common.orion_enum import user_status, page_types
import time
import json

class ReportClass(object):
    def detail(self, *args):
        current_user = get_current_user()
        base_param = args[0]
        data = {'week_patients_num': 0, 'month_patients_num': 0}
        object_name = 'custom_object_15'
        pagination = Pagination(80000, 1)
        conditions = base_param.get('conditions')
        position_filter = None
        if conditions:
            try:
                j = json.loads(conditions)
                conditions = j.get('conditions')
                position_filter = j.get('position-filter')
            except Exception as e:
                conditions = None
                position_filter = None
        version = base_param.get('version-id')
        version = version if version else get_current_version().id

        record_ids = get_all_page_list_record_ids(object_name, pagination, conditions, None, None, True,
                                                  position_filter=position_filter,
                                                  yearmonth=parse_yearmonth(base_param),
                                                  version=version,
                                                  metadata_user=current_user, )
        raw_report_data = CustomObjects15.advance_objects.filter(pk__in=record_ids)
        now = datetime.today()

        # week_start = now - timedelta(days=now.weekday())
        # week_end = week_start + timedelta(days=6)
        day_start = now - timedelta(hours=now.hour, minutes=now.minute, seconds=now.second,microseconds=now.microsecond)
        day_end = day_start + timedelta(hours=23, minutes=59, seconds=59)
        day_condition = Q(date_1__gte=day_start.strftime('%Y-%m-%d')) & \
                         Q(date_1__lte=day_end.strftime('%Y-%m-%d'))
        end_date_of_month = monthrange(now.year, now.month)
        month_condition = Q(date_1__gte=now.strftime('%Y-%m') + '-01') & \
                          Q(date_1__lte=now.strftime('%Y-%m') + '-{0}'.format(end_date_of_month[1]))


        number_of_new_patients_on_week = raw_report_data.filter(
            day_condition # & Q(created_by_id=current_user.user_id)
        )
        data['week_patients_num'] = number_of_new_patients_on_week.aggregate(Sum('number_1')).\
            get('number_1__sum') if number_of_new_patients_on_week.exists() else 0
        number_of_new_patients_on_month = raw_report_data.filter(
            month_condition # & Q(created_by_id=current_user.user_id)
        )
        data['month_patients_num'] = number_of_new_patients_on_month.aggregate(Sum('number_1'))\
            .get('number_1__sum') if number_of_new_patients_on_month.exists() else 0
        return data


def parse_yearmonth(params):
    from orion.sales_data_management import ps
    month = params.get('yearmonth')
    if not month:
        return
    if month and month == 'auto':
        month = ps.current_state().yearmonth
    return month