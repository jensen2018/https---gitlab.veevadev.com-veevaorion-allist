# coding=utf-8


from abc import abstractmethod
import datetime
from django.db import connection
from orion.survey.survey import raise_survey_error

class SurveyMixIn(object):
    def __init__(self, user):
        self.user = user

    @abstractmethod
    def get_survey_id(self):
        return None

    @abstractmethod
    def get_field_value(self, answers, score):
        return None

# 已废弃，使用survey_calc
class ProfessionalDCRMetricsSurvey(SurveyMixIn):
    TIER_VALUE_MAP = {
        1: u'720ae7ac-fwev-11e7-9f5c-caeb633220fd',  # A
        2: u'd2b6b4a4-4g34-11e7-b63a-caeb633220fd',  # B
        3: u'e561ceae-43rr-11e7-8b52-caeb633220fd',  # C
        4: u'f70228dc-grrs-11e7-9a64-caeb633220fd'  # D
    }

    def get_survey_id(self):
        pass

    def get_field_value(self, answers, score):
        answer1 = answers[0]['answer']['number']
        answer2 = answers[1]['answer']['number']
        answer3 = answers[2]['answer']['number']
        answer4 = answers[3]['answer']['number']
        answer5 = answers[4]['answer']['option_orders'][0]
        
        if float(answer2) + float(answer4) >= 4:
            tier = 1
        elif 4 > float(answer2) + float(answer4) >= 2:
            tier = 2
        elif 2 > float(answer2) + float(answer4) > 0:
            tier = 3
        else:
            tier = 4
        return self.TIER_VALUE_MAP[tier]

#key: object_name  + '_' + object_field_name
survey_object_name_register = {
    'metricsreqitems_evaluation': ProfessionalDCRMetricsSurvey,
}


def get_survey_id(object_name, object_field_name, survey_user):
    """
    :param object_name:
    :param object_field_name:
    :param survey_user:
    :return: survey_id
    """
    survey_key = object_name + '_' + object_field_name
    survey_class = survey_object_name_register.get(survey_key)
    if survey_class:
        return survey_class(survey_user).get_survey_id()

    return None


def get_field_value(object_name, object_field_name, survey_user, survey_answers, survey_score):
    """
    :param object_name:
    :param object_field_name:
    :param survey_user:
    :param survey_answers:
        [
            {
                'order':1,
                'answer':{
                    'option_orders':[1,2],
                    'text':'text',
                    number:1,
                }
            }
        ]
    :param survey_score:
    :return:
    """
    survey_key = object_name + '_' + object_field_name
    survey_class = survey_object_name_register.get(survey_key)
    if survey_class:
        return survey_class(survey_user).get_field_value(survey_answers, survey_score)
    return None