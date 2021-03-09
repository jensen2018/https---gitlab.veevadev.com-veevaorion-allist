#!/usr/bin/env python
# -*- coding:utf-8 -*-

from django.db.models import Q
from orionbase.common import models
from orion.position.position import get_sub_positions
import logging
logger = logging.getLogger('orion.speaker')


class DCRSearchResults(object):
    def index(self, current_user, keyword, exact, simple, limit):
        """
        :param current_user: 当前用户的各种信息集
        :param keyword: 关键字
        :param exact: 是否精确匹配
        :param sample: 是否是简洁模式
        :param limit: 系统将取前n个数据
        :return: dict（keys: professional_ids, professional_in_dcr_ids, speaker_ids, speaker_in_dcr_ids)）
                 如果需要系统默认的查询逻辑请返回None
        """
        # 销售代表、销售主管搜索医生范围是岗位医生；讲者范围是岗位医生所对应的讲者
        sales_department_role = [u'销售代表', u'销售主管']
        sales_manager_role = [u'地区经理', u'大区经理']
        current_position_ids = current_user.positions_ids
        logger.info("current_position_id>>>current_position_id:%s" % current_position_ids)

        if current_user.role.name in sales_department_role:
            # 销售代表、销售主管搜索医生范围是岗位医生；讲者范围是岗位医生所对应的讲者
            current_position_ids = current_user.positions_ids
            logger.info("current_position_id>>>current_position_id:%s" %current_position_ids)

            position_professional_ids = models.PositionToAccounts.objects.filter(
                position_id__in=current_position_ids, record__record_type__name='professional'
            ).values_list('record_id', flat=True)
            logger.info("position_professional_ids>>>position_professional_ids:%s" %position_professional_ids)
        elif current_user.role.name in sales_manager_role:
            # 地区经理、大区经理搜索医生范围是岗位医生及下属岗位；讲者范围是当前岗位及下属岗位的岗位医生所对应的讲者
            # 自己的岗位+下属岗位
            all_position_ids = get_sub_positions(current_position_ids, include_root=True)
            logger.info("all_position_ids>>>all_position_ids:%s" % all_position_ids)

            position_professional_ids = models.PositionToAccounts.objects.filter(
                position_id__in=all_position_ids, record__record_type__name='professional'
            ).values_list('record_id', flat=True)
            logger.info("position_professional_ids>>>position_professional_ids:%s" % position_professional_ids)
        else:
            return

        account_query = Q(id__in=position_professional_ids) & Q(record_type__name='professional') & Q(deleted=0)
        account_dcr_query = Q(account_id__in=position_professional_ids) & Q(
            record_type__name='add_new_account') & Q(state__name='sent_approval') & Q(deleted=0)
        speaker_query = Q(professional_id__in=position_professional_ids) & Q(deleted=0)
        speaker_dcr_query = Q(professional_id__in=position_professional_ids) & Q(state__name='sent_approval') & Q(
            deleted=0) & Q(record_type__name__in=['new_speaker', 'copy_professional_to_speaker'])

        if exact:
            account_query &= (Q(name=keyword))
            account_dcr_query &= Q(name=keyword)
            speaker_query &= (Q(name=keyword))
            speaker_dcr_query &= (Q(name=keyword))
        else:
            account_query &= Q(name__icontains=keyword)
            account_dcr_query &= Q(name__icontains=keyword)
            speaker_query &= Q(name__icontains=keyword)
            speaker_dcr_query &= Q(name__icontains=keyword)

        professional_ids = models.Accounts.objects.filter(
            account_query).exclude(id__in=models.Speakers.objects.filter(
            Q(professional_id__isnull=False) & Q(deleted=0)).values_list(
            'professional_id')).values_list('id', flat=True)
        logger.info("professional_ids>>>professional_ids:%s" %professional_ids)

        professional_in_dcr_ids = models.DCRs.objects.filter(account_dcr_query).values_list('id', flat=True)
        logger.info("professional_in_dcr_ids>>>professional_in_dcr_ids:%s" %professional_in_dcr_ids)

        speaker_ids = models.Speakers.objects.filter(speaker_query).values_list('id', flat=True)
        logger.info("speaker_ids>>>speaker_ids:%s" %speaker_ids)

        speaker_in_dcr_ids = models.SpeakerDCRs.objects.filter(speaker_dcr_query).values_list('id', flat=True)
        logger.info("speaker_in_dcr_ids>>>speaker_in_dcr_ids:%s" %speaker_in_dcr_ids)

        return {'professional_ids': professional_ids,
                'professional_in_dcr_ids': professional_in_dcr_ids,
                'speaker_ids': speaker_ids,
                'speaker_in_dcr_ids': speaker_in_dcr_ids}
