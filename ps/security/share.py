# -*- coding: utf-8 -*-
from django.db import models as djm
from django import db
from orion.security import share as libshare
from orionbase.common import models
from orionbase.common import orion_enum
from django.core import exceptions as dje
from django.db import connection
from django.db.models import Q
from orionbase.common import orion_function
from orionbase.utils.utils import DateUtils
# from orion.common.user import get_current_user

@libshare.share_repository.register('sales_target')
class SalesTargetSharePS(libshare.SalesTargetShare):

    def make_read_condition(self, primary_filter=None):
        # record_type = None
        # user = get_current_user()
        ids = self._get_sales_unit_hospital_ids()
        condition = djm.Q(record_type__name='hospital_target', id__in=ids)
        return super(SalesTargetSharePS, self).make_read_condition() | condition

    def make_write_condition(self, primary_filter=None):
        """默认上级可以编辑下级的指标"""
        return self.make_read_condition(primary_filter=primary_filter)


    def _get_sales_unit_hospital_ids(self):
        positions = self._user_position_ids()
        share_froms = self._position_ids_by_sharing_rule(positions, False)
        subordinates = self._position_subordinate_ids(positions + share_froms)
        p_ids= positions + share_froms + subordinates
        year_month = DateUtils.get_current_date_as_str('%Y-%m')
        sales_unit_hospital_ids = []
        if p_ids:
            position_ids__in = ','.join(map(str, p_ids))
            sql = """SELECT
                        st.id
                        FROM
                        `sales_territories` 
                        INNER JOIN `sales_units` 
                            ON ( 
                            `sales_territories`.`sales_unit_id` = `sales_units`.`id`
                            ) 
                        join sales_targets st on st.hospital_id = `sales_units`.`account_id` 
                        and st.package_id = `sales_units`.`package_id` 
                        and st.record_type_id = '21ef600a-df17-4b38-ade7-b3db174135e9'
                        and st.deleted = 0
                        WHERE
                        ( 
                            `sales_territories`.`deleted` = 0 
                            AND `sales_units`.`yearmonth` = '{yearmonth}' 
                            AND `sales_territories`.`position_id` IN ({position_ids__in})
                        ); 
            """.format(
                yearmonth=year_month,
                position_ids__in=position_ids__in
            )
        sales_target_ids = []
        with connection.cursor() as cursor:
            cursor.execute(sql)
            rows = cursor.fetchall()

            for (id,) in rows:
                sales_target_ids.append(id)
        return list(set(sales_target_ids))



