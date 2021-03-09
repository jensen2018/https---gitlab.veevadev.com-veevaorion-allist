# coding=utf-8


import json
from abc import abstractmethod
# from orion.survey.survey import raise_survey_error
# from django.db import connection


class SurveyMixIn(object):
    def __init__(self, user):
        self.user = user

    @abstractmethod
    def get_survey_id(self):
        return None

    @abstractmethod
    def get_field_value(self, answers, score, extra_data):
        return None

    @abstractmethod
    def get_survey_id_extra(self, extra_data):
        return None


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


def get_survey_id_extra(object_name, object_field_name, survey_user, extra_data):
    survey_key = object_name + '_' + object_field_name
    survey_class = survey_object_name_register.get(survey_key)
    if survey_class:
        return survey_class(survey_user).get_survey_id_extra(extra_data)

    return None

def get_field_value(object_name, object_field_name, survey_user, survey_answers, survey_score, extra_data):
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
        return survey_class(survey_user).get_field_value(survey_answers, survey_score, extra_data)
    return None


class ProductMetricsEvaluationGroupSurvey(SurveyMixIn):
    TIER_VALUE_MAP = {
        1: u'720ae7ac-fwev-11e7-9f5c-caeb633220fd',  # A
        2: u'd2b6b4a4-4g34-11e7-b63a-caeb633220fd',  # B
        3: u'e561ceae-43rr-11e7-8b52-caeb633220fd',  # C
        4: u'f70228dc-grrs-11e7-9a64-caeb633220fd'  # D
    }

    def get_survey_id(self):
        pass

    def get_survey_id_extra(self, extra_data):
        # 问卷ID hard code
        return 1

    def get_field_value(self, answers, score, extra_data):
        answer1 = answers[0]['answer']['number']
        answer2 = answers[1]['answer']['number']
        answer3 = answers[2]['answer']['number']
        answer4 = answers[3]['answer']['number']
        answer5 = answers[4]['answer']['option_orders'][0]

        ret_dict = {}
        extra_data = json.loads(extra_data)

        if int(answer2) + int(answer4) >= 4:
            tier = 1
        elif 4 > int(answer2) + int(answer4) >= 2:
            tier = 2
        elif 2 > int(answer2) + int(answer4) > 0:
            tier = 3
        else:
            tier = 4
        ret_dict['evaluation'] = self.TIER_VALUE_MAP[tier]
        return ret_dict



# key: object_name  + '_' + object_field_name
survey_object_name_register = {
    # 'metricsreqitems_cs_survey_group': ProductMetricsEvaluationGroupSurvey,
}
