# coding=UTF-8

from orionbase.common import models


def get_custom_info_group():
    return set(models.Roles.objects.filter(type__in=['admin']).values_list('type', flat=True))
