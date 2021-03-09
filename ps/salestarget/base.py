# coding=utf-8
import logging
import itertools
import collections
from django.db import models as djm, connection
from django.utils import timezone
from django.core.paginator import Paginator
from orionbase.common import models, orion_function
from orion.sales_target_management.base import SalesTargetPSBase
from orion.position.version import PositionApplyer
from orionbase.utils.utils import months_in_year
from orionbase.common.orion_function import get_user
from orion.position.position import get_sub_positions
from django_bulk_update.helper import bulk_update

logger = logging.getLogger('orion.ps.sales_target')


class SalesTargetPS(SalesTargetPSBase):

    def __init__(self, *args, **kwargs):
        super(SalesTargetPS, self).__init__(*args, **kwargs)

    def update_target_prices(self, ids):
        """批量更新指标的价格"""
        logger.info('Start to update_target_prices.')
        package_prices = {
            t.package_id: (t.id, t.price) for t in
            models.PackagePrices.advance_objects.filter(deleted=0)
        }
        _price = 1
        updates = []
        for target in models.SalesTargets.objects.filter(deleted=0):
            if target.package_id in package_prices:
                package_price = package_prices.get(target.package_id, None)
                _price = package_price[1] if package_price and len(package_price) > 1 else 1
            # 更新前金额备份
            target.amount = target.quantity * _price
            updates.append(target)
        bulk_update(updates, update_fields=['amount'], batch_size=100)
        logger.info('End to update_target_prices.')

    def managed_position_id_range(self):
        """
        定义指标管理的范围：当前用户岗位+share rule岗位+下属岗位
        :return:
        """
        # user = get_user()
        # user_id = user.user_id
        # position_ids = models.UserPositions.advance_objects.filter(deleted=0).values_list('position_id', flat=True)
        # shares = models.SharingRules.advance_objects.filter(
        #     to_position__in=position_ids, object=models.Objects.objects.get(name='sales_target')
        # ).values_list('from_position_id', flat=True)
        # positions = get_sub_positions(list(position_ids) + list(shares), include_root=True)
        # return positions
        positions = models.Positions.objects.filter(deleted=0).values_list('id', flat=True)
        return list(positions)