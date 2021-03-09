#!/usr/bin/python
# - * - encoding: UTF-8 - * -
from django.db.models import Q
from orionbase.common import models
from django.db import connection
from orion.common.user import get_current_user
from orion.position.position import in_positions_regex

class SpeakerSearchResults(object):

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
        # # 当前岗位
        # user_id = current_user.user_id
        # current_position_id = [current_user.current_position.id]
        # # 下属岗位id
        # speaker_query = Q(deleted=0)
        # regex = in_positions_regex(current_position_id)
        # query = Q(path__iregex=regex)
        # subs = list(models.Positions.advance_objects.filter(query).values_list('id', flat=True))
        # lsubs = current_position_id + subs
        # speaker_query &= Q(owner=user_id) | Q(owner__userpositions__position__in=lsubs)
        #
        # if keyword:
        #     if exact:
        #         speaker_query &= (Q(name=keyword))
        #     else:
        #         speaker_query &= Q(name__icontains=keyword)
        # speaker_ids = models.Speakers.objects.filter(speaker_query).values_list('id', flat=True)
        # return {'speaker_ids': speaker_ids}
        return None


def filter_init_search_speaker(speakers):
    current_user = get_current_user().user_id
    current_position_id = [get_current_user().current_position.id]
    # 下属岗位id
    speaker_query = Q(deleted=0)
    regex = in_positions_regex(current_position_id)
    query = Q(path__iregex=regex)
    subs = list(models.Positions.advance_objects.filter(query).values_list('id', flat=True))
    lsubs = current_position_id + subs
    speaker_query &= Q(owner=current_user) | Q(owner__userpositions__position__in=lsubs)
    speaker_ids = models.Speakers.objects.filter(speaker_query).values_list('id', flat=True)
    return filter(lambda x: x['id'] in speaker_ids, speakers)