# coding=utf-8
"""
To define fixed approval process, please implement the following three methods
"""
from abc import abstractmethod
from collections import namedtuple
from django.db import connection
import datetime

from orion.budget.budget import is_event_report
from orionbase.common import models

ApprovalArgs = namedtuple('ApprovalArgs', ['record', 'user', 'position', 'is_final', 'is_approver'])


class ApprovalDataMixIn(object):
    def __init__(self, args_cls):
        self.args_cls = args_cls

    @abstractmethod #approval confirm data
    def get_approval_extra(self):
        return None

    @abstractmethod  #page layout advance field
    def get_approval_data(self):
        return None


class EventApproval(ApprovalDataMixIn):

    def get_approval_extra(self):
        """ 在提交页面上显示信息，没有阻止提交 """
        
        info = self.get_info()
        if info:
            return {
                'approval_invalid':False, # 不阻止提交
                'approval_invalid_msg': u'提示信息',
                'data': info
            }

    def get_info(self):
        """ 获取提醒信息内容 """
        event = self.args_cls.record
        info = []

        # 科室会、病人教育会，计划阶段，如果没有7天前申请，则需要提示
        if event.record_type.name in ('cs_department','cs_patient_education_meeting'):
            if event.created_on + datetime.timedelta(days=7) > event.event_start_time:
                info.append(u'会议申请时间距离会议开始时间小于7天')
         # 城市、内训、市场部会议，计划阶段，如果没有30天前申请，则需要提示
        if event.record_type.name in ('city','cs_tranning','cs_market','cs_medicine_meeting','cs_expert_consultant_meeting','cs_bbs_meeting','cs_satellite_meeting'):
            if event.created_on + datetime.timedelta(days=30) > event.event_start_time:
                info.append(u'会议申请时间距离会议开始时间小于30天')
            

        # 如果是报告阶段
        if is_event_report(event):

            plan = models.Events.objects.get(id=event.event.id)

            # 计划与报告的会议开始时间不一致，需要提示
            plan_date = plan.event_start_time.strftime("%Y-%m-%d")
            event_date = event.event_start_time.strftime("%Y-%m-%d")
            if plan_date <> event_date:
                info.append(u'计划日期：%s，实际日期：%s' % (plan_date, event_date))

            # 计划与报告的外部参会人数不一致，需要提示
            plan_event_attendance = plan.number_1
            event_event_attendance = event.number_1
            if plan_event_attendance <> event_event_attendance:
                info.append(u'计划参会医生数%s人，实际%s人' % (str(int(plan_event_attendance)), str(int(event_event_attendance))))

            # 计划与报告的讲者不一致，需要提示
            event_speakers = models.EventSpeakers.objects.filter(deleted=0,event_id=event.id)
            plan_speakers = models.EventSpeakers.objects.filter(deleted=0,event_id=plan.id)
            _event_speakers = list(event_speakers.values_list('speaker_id', flat=True))
            _plan_speakers = list(plan_speakers.values_list('speaker_id', flat=True))

            es_msg = ''
            for es in event_speakers:
                speaker_id = es.speaker.id
                if not speaker_id in _plan_speakers:
                # for ps in plan_speakers:
                #     if speaker_id == ps.speaker.id:
                #         continue
                    speaker_name = es.speaker.name
                    speaker_role = es.speaker_role.label if es.speaker_role else u'未指定角色'
                    es_msg += u'%s（%s）、' % (speaker_name, speaker_role)
            if es_msg:
                es_msg = es_msg[0:-1]

            ps_msg = ''
            for ps in plan_speakers:
                speaker_id = ps.speaker.id
                if not speaker_id in _event_speakers:
                # for es in event_speakers:
                #     if speaker_id == es.speaker.id:
                #         continue
                    speaker_name = ps.speaker.name
                    speaker_role = ps.speaker_role.label if ps.speaker_role else u'未指定角色'
                    ps_msg += u'%s（%s）、' % (speaker_name, speaker_role)
            if ps_msg:
                ps_msg = ps_msg[0:-1]
                
            if es_msg and ps_msg:
                info.append(u'计划外%s，临时取消%s' % (es_msg, ps_msg))
            elif es_msg:
                info.append(u'计划外%s' % (es_msg, ))
            elif ps_msg:
                info.append(u'临时取消%s' % (ps_msg, ))

            # 计划与报告的金额不一致，需要提示
            if event.number_4 and event.number_4 > 0:
                info.append(u'超预算%s元' % (str(round(event.number_4, 2)), ))

        return info

    def get_approval_data(self):
        """ 在layout的高级field上显示信息 """
        
        info = self.get_info()
        if info:

            return {
                'section': u'提示信息',
                'data': info,
            }
        

approval_object_register = {
    'event': EventApproval,
}


#返回数据格式固定
def get_approval_extra(object_name, approval_args):
    approval_class = approval_object_register.get(object_name)
    if approval_class:
        return approval_class(approval_args).get_approval_extra()
    return None


#返回数据格式固定
def get_approval_data(object_name, approval_args):
    approval_class = approval_object_register.get(object_name)
    if approval_class:
        return approval_class(approval_args).get_approval_data()
    return None
