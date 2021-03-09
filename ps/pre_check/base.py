# coding=utf-8
"""
"""
from abc import abstractmethod
from django.db import connection
from orionbase.common import models
import datetime
from django.db import connection
from orion.sales_data_management import ps


class PreCheckMixIn(object):
    def __init__(self, check_data, cur_user, kwargs):
        self.check_data = check_data
        self.cur_user = cur_user
        self.kwargs = kwargs

    @abstractmethod
    def do_pre_check(self):
        return


class DCRSavePreCheck(PreCheckMixIn):
    '''客户变更保存'''

    def do_pre_check(self):
        print 'DCR do_pre_check:{}'.format(self.check_data)
        external_id = self.check_data.get('external_id')
        account = models.Accounts.objects.filter(
                external_id=external_id, deleted=0
            ).first()
        if account is None:
            return None

        existed_num = models.PositionToAccounts.objects.filter(
                record_id=account.id, deleted=0
            ).count()
        message = u'该医生已经关联岗位'
        if existed_num > 0:
            return {
                "warnings": [
                    u'%s' % message
                ],
            }

        return None


class SPEAKERDCRSavePreCheck(PreCheckMixIn):
    '''讲者申请时添加讲者级别信息提示'''

    def do_pre_check(self):
        speaker_purpose = self.check_data.get('level')
        if speaker_purpose:
            if speaker_purpose == '3b8731e6-8513-4d4a-b29a-14e0655c79c2':
                return {
                    "warnings": [u'城市级资质条件是：高年资住院医师、主治医师及以上']
                }
            elif speaker_purpose == 'a01a7caf-5414-4da9-8dd0-57899b62b1c4':
                return {
                    "warnings": [u'区域级资质条件是：副教授，或副主任医师；或省/市级学协会(主席，副主席，秘书长，常委/委员)；或5年内在国家级刊物以主要作者（第一作者或通讯作者）发表2篇以上文献，或者大会口头报告']
                }
            elif speaker_purpose == '381e52da-48b1-4ade-9bab-c21b6c65666b':
                return {
                    "warnings": [u'全国级资质条件是：正教授，或主任医师；或国家级学协会(主席，副主席，秘书长，常委/委员)；或5年内在国家级刊物以主要作者（第一作者或通讯作者）发表4篇以上文献，或者大会口头报告']
                }
        return None


pre_check_register = {
    'dcr__save': DCRSavePreCheck,
    'speaker-dcr__save': SPEAKERDCRSavePreCheck,
}


def do_pre_check(object_name, action_name, check_data, cur_user, kwargs):
    """
    前端一些主动操作进行之前，需要进行一些校验操作
    目前暂时只支持提醒不控制
    需求：https://jira.veevadev.com/browse/ORI-17745
    :param object_name:进行校验的object
    :param action_name:进行校验的操作
    :param check_data:校验的数据
    :param cur_user:校验用户
    :param kwargs:其他额外参数
    :return: {
       "warnings": ["sample warning"]  #返回多条提醒不控制信息
    }
    """
    check_key = object_name + '__' + action_name
    check_class = pre_check_register.get(check_key)
    if check_class:
        return check_class(check_data, cur_user, kwargs).do_pre_check()
    return None
