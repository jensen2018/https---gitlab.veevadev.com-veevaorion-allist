# -*- coding: utf-8 -*-
from orionbase.common.models import CustomObject, Events


# class Scoring(object):
#     def __init__(self, current_user, event_id, paramdict):
#         self.current_user = current_user
#         self.event_id = event_id
#         self.paramdict = paramdict
#
#     def get_scoring(self):
#         user_id = self.current_user.user_id
#         CustomObject2 = type('CustomObject2', (CustomObject,),
#                              dict(Meta=type('Meta', (), {'db_table': 'custom_object_2'}),
#                                   __module__='orionbase.common.models'))
#         score = CustomObject2.advance_objects.get(user_1_id=user_id, event_1_id=self.event_id)
#         return score
#
# def get_survey_id_by_event_id(event_id, user_id, kwargs):
#     return 123
#
#
# def get_event_professional_hospital_field():
#     return 'text_1'

# 子会议一键发送按钮控制 删掉 走config控制
# def get_document_click_button(event_id, kwargs):
#     return True
#
#
# def get_invitation_click_button(event_id, kwargs):
#     return True
# 
#
# def get_survey_click_button(event_id, kwargs):
#     return True

def handle_event_schedule_tab_editable(event_id, current_user, kwargs):
    obj = Events.objects.get(pk=event_id)
    owner, record_type, state = obj.owner, str(obj.record_type.name), str(obj.state.name)
    if owner.id != current_user.user_id or state in ('sent_approval','approved','cancelled','finished','write_off'):
        return False
    return True

def attendee_filter(accounts, professionals, contacts, kwargs):
    return accounts, professionals, contacts

def handle_event_schedule_default_time(event_id, current_user, kwargs):
    obj = Events.objects.get(pk=event_id)
    if obj.record_type.name in ('cs_department','cs_department__report','cs_patient_education_meeting','cs_patient_education_meeting__report'):
        return obj.date_1, obj.date_1
    else:
        return obj.event_start_time, obj.event_end_time