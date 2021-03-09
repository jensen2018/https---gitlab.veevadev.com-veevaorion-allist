# coding=utf-8
# - * - encoding: UTF-8 - * -
import requests
import logging
from abc import abstractmethod
from collections import namedtuple

from orionbase.common import models
import os
from orionbase.utils.utils import FileUtils
from django.conf import settings
from docxtpl import *
from docx.shared import Mm
from PIL import Image
import os
from decimal import *
from django.utils.timezone import utc, localtime, get_current_timezone, make_aware, now
from django.db.models import Q
import urllib
from django.db import connection

TemplateInfo = namedtuple(
    'TemplateInfo',
    ['template_name', 'target_type'])
Replacement = namedtuple(
    'Replacement',
    ['replace_content', 'replace_tpl', 'replace_pic'])

upper = [u"零", u"壹", u"贰", u"叁", u"肆", u"伍", u"陆", u"柒", u"捌", u"玖"]
decimal_unit = [u"角", u"分", u"厘", u"毫"]
section_unit = [u"万", u"亿", u"兆"]
count_unit = [u"拾", u"佰", u"仟"]

class CoverMixIn(object):
    def __init__(self, user):
        self.user = user

    @abstractmethod
    def get_template(self, record_id):
        return TemplateInfo(None, None)

    @abstractmethod
    def get_template_value(self, record_id, template_name, tpl, dirpath):
        return Replacement({}, {}, {})

    @abstractmethod
    def get_template_section(self, record_id, template_name, args_dct):
        return []

    @abstractmethod
    def get_template_watermark(self, record_id, template_name, args_dct):
        # 返回模板的水印 {"content": "EV00000001"}
        return None

class EventCover(CoverMixIn):
    # 数字金额转换汉字大写
    def split_num(self,num):
        num_list = []
        if (len(num) <= 4):
            num_list.append(num)
            return num_list
        while (len(num)):
            if (len(num) <= 4):
                num_list.append(num)
                num_list.reverse()
                return num_list
            sec = num[-4:]
            num_list.append(sec)
            num = num[:-4]

    # 处理小数部分，只支持4位，多于4位，四舍五入。
    def convert_dec(self, num):
        result = ""
        count = 0
        for i in num:
            n = int(i)
            if (0 != n):
                result += upper[n]
                result += decimal_unit[count]
            if len(num) > 1:
                if 0 == n and 0 != num[count + 1]:
                    result += upper[n]
            count += 1
        return result

    # 处理整数部分
    def convert_int(self,num):
        section_list = self.split_num(num)
        result = ""
        sec_index = len(section_list) - 2
        for item in section_list:
            index = len(item) - 2
            # 统计连续出现的数字0的个数。
            flag = 0
            # 计算遍历过的item中的字符数。
            count = 0
            # 对每个section进行处理，得到数字对应的汉字。
            for i in item:
                n = int(i)
                if (0 == n):
                    flag += 1
                else:
                    flag = 0
                # 用来区分section的最后一位为0的情况
                if (count != len(item) - 1):
                    # 该位置的数字为0，并且它的下一个数字非0。
                    if ((flag >= 1) and ('0' != item[count + 1])):
                        result += upper[n]
                    elif (0 != n):
                        result += upper[n]
                else:
                    # section的最后一个数字非0的情况。
                    if (0 != n):
                        result += upper[n]
                # 最后一个数字以及数字为0时，都不需要添加单位。
                if ((index >= 0) and (0 != n)):
                    result += count_unit[index]
                index -= 1
                count += 1
            # 从第1个section开始，如果section中的数字不全为0，其后就需要添加section对应的单位
            if (sec_index >= 0 and flag != count):
                result += section_unit[sec_index]
            sec_index -= 1
        # result = result.replace(u"壹拾", u"拾")
        result += u"元"
        return result

    # 转换函数
    def convert(self, num):
        result = ""
        num = round(float(num), 4)
        integer, decimal = str(num).split('.')
        result_int = self.convert_int(integer)
        result_dec = self.convert_dec(decimal)

        if (len(result_dec) == 0):
            result = result_int + u"整"
        elif u'分' not in result_dec and u'角' in result_dec:
            result = result_int + result_dec + u'整'
        else:
            result = result_int + result_dec
        return result

    def get_template(self, record_id):
        sales_roles = [
            u'销售代表',u'销售主管',u'地区经理',u'大区经理',u'大区总监',u'销售总监',u'营销公司负责人'
        ]
        market_roles = [
            u'市场经理', u'市场总监', u'区域产品经理', u'医学总监', u'培训经理'
        ]
        events = models.Events.advance_objects.filter(id=record_id)
        role = events[0].owner.orionusers.role.name if events else ''
        record_type_name = events[0].record_type.name if events else ''
        # 销售使用营销公司模板
        if role in sales_roles:
            if record_type_name in (u'cs_market',u'cs_market__report'):
                return TemplateInfo('cover_with_nda.docx', 'pdf')
            else:
                return TemplateInfo('cover.docx', 'pdf')
        elif role in market_roles:
            if record_type_name in (u'cs_market',u'cs_market__report'):
                return TemplateInfo('cover_with_nda_marketing.docx', 'pdf')
            else:
                return TemplateInfo('cover_marketing.docx', 'pdf')
        else:
            return None


    def get_template_section(self, record_id, user, args_dct):
        events = models.Events.advance_objects.filter(id=record_id)
        record_type_name = events[0].record_type.name if events  else ''
        with_nda = [
            {
                'name': 'basic',
                'label': u'表单封皮',
                'mandatory': True,
            },
            {
                'name': 'nda',
                'label': u'保密协议',
                'mandatory': True,
            },
            {
                'name': 'speaker_labor',
                'label': u'讲者协议函',
                'mandatory': True,
            }
        ]
        not_nda =  [
            {
                'name': 'basic',
                'label': u'表单封皮',
                'mandatory': True,
            },
            {
                'name': 'speaker_labor',
                'label': u'讲者协议函',
                'mandatory': True,
            }
        ]
        # 专家顾问会 带保密协议
        if record_type_name in (u'cs_market', u'cs_market__report'):
            return with_nda
        else:
            return not_nda


    def get_template_watermark(self, record_id, user, args_dct):
        event = models.Events.advance_objects.get(id=record_id)
        content = event.veeva_code
        # config 配置map
        #     {
        #         font: {
        #             size: number 字体大小
        #             bold: True/False 是否粗体
        #             italic: True/False 是否斜体
        #             font: 字体  #暂不支持
        #             color: '#000000' 字体颜色
        #             transparency: 透明度
        #             rotate: 旋转
        #         }
        #         content: 'aaaaa',
        #         exclude_pages: [1,3,5], #不需要水印的页码
        #     }
        return {
            'font': {
                'size':60
            },
            'content': content
        }




    def get_template_value(self, record_id, template_name, tpl, dirpath):
        replace_content = {}
        replace_tpl = {}
        replace_pic = {}
        replace_tpl['event_speaker_items'] = []
        # 获取event_speaker
        event_speaker_ids = models.EventSpeakers.objects.filter(event_id=record_id, deleted=0).values('speaker__name',
            'speaker__certificate_no','speaker__debit_card_number','speaker__text_4','speaker_expense','text_1','event__event_start_time',
                                                                                                      'event__event_place','event__name', 'speaker__veeva_code')
        speaker_labor = []
        replace_speaker_expenses_blank = {
            'speaker_name': u'','speaker_expense':u'',
            'speaker__certificate_no': u'','text_1':u'',
            'speaker__debit_card_number': u'','event__event_start_time':u'',
            'speaker__text_4': u'','event__event_place':u'','event__name':u''
        }
        for item in event_speaker_ids:
            if item.get('speaker__name'):
                speaker_labor.append({
                    'speaker__name':item.get('speaker__name'),
                    # 'speaker_expense': item.get('speaker_expense'),
                    'speaker_expense':item.get('speaker_expense').quantize(Decimal('0.00')) if item.get('speaker_expense') else u'0.00',
                    'speaker__certificate_no': item.get('speaker__certificate_no'),
                    'text_1': item.get('text_1') if item.get('text_1') else '',
                    'speaker__debit_card_number':item.get('speaker__debit_card_number') if item.get('speaker__debit_card_number') else '',
                    'event_start_time': localtime(item.get('event__event_start_time')).strftime("%Y-%m-%d") if item.get('event__event_start_time') else '',
                    'speaker__text_4': item.get('speaker__text_4') if item.get('speaker__text_4') else '',
                    'event_place': item.get('event__event_place'),
                    'name': item.get('event__name'),
                    'speaker_code': item.get('speaker__veeva_code'),
                })
        replace_tpl['event_speaker_items'] = speaker_labor

        field_labels = ['record_type__label', 'veeva_code', 'name', 'owner', 'position_history__name',
                        'position_history__text_3', 'position_history__text_4',
                        'event_start_time', 'event_end_time',
                        'state__label', 'event_place','picklist_3__label','number_3','text_4','text_1','record_type__name','event_budget','event_expense']
        fields_values_dict_list = models.Events.objects.filter(id=record_id).values(
            'record_type__label', 'veeva_code', 'name', 'owner', 'position_history__name',
            'position_history__text_3', 'position_history__text_4',
            'event_start_time', 'event_end_time',
            'state__label', 'event_place','picklist_3__label','number_3','text_4','text_1','record_type__name','event_budget','event_expense')
        if fields_values_dict_list:
            fields_values_dict = fields_values_dict_list[0]
            for field_label in field_labels:
                field_value_x = fields_values_dict[field_label]
                if not field_value_x:
                    field_value_x = u''
                if field_label.endswith('time') and field_value_x:
                    field_value_x = localtime(field_value_x).strftime("%Y-%m-%d")
                replace_content[field_label] = field_value_x
        # 会议owner相关信息
        user = models.OrionUsers.objects.get(user_id=replace_content['owner'])
        # 会议相关信息
        replace_content['event_budget'] = str(replace_content['event_budget']) if replace_content['event_budget'] else '0'
        if replace_content['record_type__name'].endswith('__report'):
            replace_content['event_expense'] = str(replace_content['event_expense']) if replace_content['event_expense'] else '0'
        
        # 会议编码
        replace_content['event_code'] = replace_content['veeva_code']
        # 员工号
        replace_content['employee_number'] = user.text_4
        # 会议名称
        replace_content['event_name'] = replace_content['name']
        # 会议类型
        replace_content['event_type'] = replace_content['record_type__label']
        # 岗位名称
        replace_content['position_name'] = replace_content['position_history__name']
        # 大区
        replace_content['rs_name'] = replace_content['position_history__text_3']
        # 地区
        replace_content['ds_name'] = replace_content['position_history__text_4']
        # 会议主题
        if replace_content['picklist_3__label']:
            replace_content['promotion_theme'] = replace_content['picklist_3__label']
        else:
            replace_content['promotion_theme'] = replace_content['text_1']
        # 会议地点
        replace_content['event_place'] = replace_content['event_place']
        # 会议时间
        replace_content['event_time'] = replace_content['event_start_time']
        # 会议总人数
        if replace_content['number_3']:
            replace_content['event_attendance'] = str(replace_content['number_3'].quantize(Decimal('0')))
        else:
            replace_content['event_attendance'] = '0'

        # 提交人
        orien_user_object = models.OrionUsers.objects.get(user_id=replace_content['owner'])
        user_name = orien_user_object.name
        replace_content['user_name'] = user_name
        # 会议审批流程
        action_label_map = {
            'submit_for_approval': u'提交申请',
            'transfer': u'审批通过',
            'approve': u'审批完成',
            'reject': u'审批拒绝',
            'unlock_reject': u'撤回申请',
            'inner_reject': u'审批拒绝'
        }
        approval_label = u'该活动于{datetime}由{actor}{action_label}'
        approval_chain = u''
        approval_instances = models.ApprovalInstances.advance_objects.filter(
            object_id=record_id, content_type__model='events').values('id')
        if approval_instances:
            history_list = list(models.ApprovalInstanceHistories.advance_objects.filter(
                approval_instance_id=approval_instances).values_list('original_actor_id', 'order', 'action',
                                                                     'created_on').order_by('order'))
            for actor, order, action, approval_time in history_list:
                user_name = models.OrionUsers.objects.get(user_id=actor)
                if order != 1:
                    approval_chain += '\n'
                approval_chain += approval_label.format(
                    datetime=localtime(approval_time).strftime('%Y-%m-%d'),
                    actor=user_name.name,
                    action_label=action_label_map.get(action)
                )

        replace_content['apporval_chain'] = approval_chain
        # 会议日程
        event_schedules = []
        event_schedule = models.EventSchedules.objects.filter(event_id=record_id,deleted=0)
        if event_schedule:
            for item in event_schedule:
                involvers = []
                involver = models.EventScheduleInvolvers.objects.filter(event_schedule_id=item.id,deleted=0)
                if involver:
                    for j in involver:
                        if j.name:
                            involvers.append(j.name)
                        else:continue
                event_schedules.append(
                    {
                    'start_time':localtime(item.start_time).strftime("%Y-%m-%d %H:%M")if item.start_time else replace_content['event_start_time'],
                    'end_time': localtime(item.end_time).strftime("%Y-%m-%d %H:%M") if item.end_time else replace_content['event_end_time'],
                    'content':item.content if item.content else u'',
                    'peoples':','.join(involvers) if len(involvers) > 0 else u''
                    }
                )
        replace_tpl['event_schedules'] = event_schedules

        # 成本中心
        with connection.cursor() as cursor:
            select_sql = """
            select group_concat(text_1) from custom_object_4 where event_1_id = {event_id} and deleted = 0;
            """.format(event_id=record_id)
            cursor.execute(select_sql)
            rows = cursor.fetchall()
            if rows[0][0]:
                replace_content['cost_center'] = rows[0][0]

        # 签到表
        replace_event_attendee = []
        event_attendee_blank = {
            'name': u'',
            'hospital_name': u'',
            'department': u'',
            'event_name': u'',
            'event_code': u'',
            'type': u'',
        }
        event_accounts = models.EventAccounts.objects.filter(event_id=record_id, deleted=0,
                                                             record_type__name='event_professional').values(
            'account__name', 'account__hospital__name', 'account__standard_department__label',
            'event__name', 'event__event_start_time', 'event__veeva_code','check_in_type',
            'electric_check_in_type'
        )
        event_contacts = models.Contacts.objects.filter(event_id=record_id, deleted=0).values(
            'name', 'company', 'event__name', 'event__event_start_time', 'event__veeva_code','check_in_type','electric_check_in_type')
        event_professional = models.EventProfessionals.objects.filter(event_id=record_id, deleted=0).values(
            'name', 'hospital__name', 'hospital_name', 'standard_department__label',
            'event__name', 'event__event_start_time', 'event__veeva_code','check_in_type',
            'electric_check_in_type','text_1'
        )
        if event_accounts:
            for ea in event_accounts:
                if ea.get('electric_check_in_type'):
                    check_type = u'电子签到'
                elif ea.get('check_in_type') and ea.get('electric_check_in_type') is None:
                    check_type = u'手动签到'
                else:
                    check_type = u'未签到'
                replace_event_attendee.append({
                    'name': ea.get('account__name') if ea.get('account__name') else '',
                    'hospital_name': ea.get('account__hospital__name') if ea.get('account__hospital__name') else '',
                    'department': ea.get('account__standard_department__label') if ea.get(
                        'account__standard_department__label') else '',
                    'event_name': ea.get('event__name') if ea.get('event__name') else '',
                    'event_code': ea.get('event__veeva_code') if ea.get('event__veeva_code') else '',
                    'type':check_type
                })
        if event_professional:
            for ep in event_professional:
                if ep.get('hospital__name'):
                    hospital_name = ep.get('hospital__name')
                elif ep.get('text_1'):
                    hospital_name = ep.get('text_1')
                else:
                    hospital_name = ''
                if ep.get('electric_check_in_type'):
                    check_type = u'电子签到'
                elif ep.get('check_in_type') and ep.get('electric_check_in_type') is None:
                    check_type = u'手动签到'
                else:
                    check_type = u'未签到'
                replace_event_attendee.append({
                    'name': ep.get('name') if ep.get('name') else '',
                    'hospital_name': hospital_name,
                    'department': ep.get('standard_department__label') if ep.get(
                        'standard_department__label') else '',
                    'event_name': ep.get('event__name') if ep.get(
                        'event__name') else '',
                    'event_code': ep.get('event__veeva_code') if ep.get('event__veeva_code') else '',
                    'type': check_type
                })
        if event_contacts:
            for ec in event_contacts:
                if ec.get('electric_check_in_type'):
                    check_type = u'电子签到'
                elif ec.get('check_in_type') and ec.get('electric_check_in_type') is None:
                    check_type = u'手动签到'
                else:
                    check_type = u'未签到'
                replace_event_attendee.append({
                    'name': ec.get('name') if ec.get('name') else '',
                    'hospital_name': ec.get('company') if ec.get('company') else '',
                    'event_name': ec.get('event__name') if ec.get(
                        'event__name') else '',
                    'event_code': ec.get('event__veeva_code') if ec.get('event__veeva_code') else '',
                    'type':check_type
                })
        for i in range(max(2 - len(replace_event_attendee), 0)):
            replace_event_attendee.append(event_attendee_blank)
        replace_tpl['event_attendee'] = replace_event_attendee
        # 费用明细
        # 会议费用
        event_expense = []
        three_expenses = []
        event_expenses_blank = {
            'label': u'',
            'total_expense': u'',
            'person_number': u'',
            'person_price': u''
        }
        other_event_expense_blank = {
            'label': u'',
            'total_expense': u'',
            'name':u''
        }
        event_expense_record_types = ['meal_fee','cs_other','communication_expense','hotel_fee','cs_rent_facility','cs_rent_expense']
        event_expense_items = models.EventExpenses.advance_objects.filter(event_id=record_id,deleted=0,
                                                                          record_type__name__in=event_expense_record_types).values(
            'record_type__name','record_type__label', 'total_expense','number_1','number_2')
        if event_expense_items:
            for item in event_expense_items:
                event_expense.append({
                    'label':item.get('record_type__label'),
                    'total_expense': item.get('total_expense').quantize(Decimal('0.00')) if item.get('total_expense') else '0.00',
                    'person_number': item.get('number_1').quantize(Decimal('0')) if item.get('number_1') else u'',
                    'person_price': item.get('number_2').quantize(Decimal('0.0')) if item.get('number_2') else u''
                })
        for i in range(max(2-len(event_expense),0)):
            event_expense.append(event_expenses_blank)
        replace_tpl['event_expenses'] = event_expense
        # 第三方费用
        other_event_expense_record_type = ['cs_three_expense']
        other_event_expense_items = models.EventExpenses.advance_objects.filter(event_id=record_id, deleted=0,
                                                                          record_type__name__in=other_event_expense_record_type).values(
            'record_type__name', 'record_type__label', 'total_expense', 'event_logistic__name', 'text_2')
        if other_event_expense_items:
            for three_item in other_event_expense_items:
                three_expenses.append({
                    'label':three_item.get('record_type__label'),
                    'name': three_item.get('text_2') or '',
                    'total_expense': three_item.get('total_expense').quantize(Decimal('0.00')) if three_item.get('total_expense') else '0.00'
                })
        for i in range(max(2-len(three_expenses),0)):
            three_expenses.append(other_event_expense_blank)
        replace_tpl['three_expenses'] = three_expenses
        # 讲课费
        # 讲者费用
        event_speaker_expense = 0
        replace_speaker_expenses = []
        replace_speaker_expenses_blank = {
            'speaker_name': u'',
            'speaker_role': u'',
            'speaker_expense': u'',
            'speaker_level': u''
        }
        event_speaker_expense_items = models.EventSpeakers.advance_objects.filter(event_id=record_id, deleted=0).values\
            ('speaker__name', 'speaker_role__label', 'speaker__level__label', 'speaker_expense')
        for item in event_speaker_expense_items:
            if item.get('speaker__name'):
                replace_speaker_expenses.append({
                    'speaker_name': item.get('speaker__name'),
                    'speaker_role': item.get('speaker_role__label') if item.get('speaker_role__label') else u'',
                    'speaker_expense': item.get('speaker_expense').quantize(Decimal('0.00')) if item.get('speaker_expense') else u'0.00',
                    'speaker_level': item.get('speaker__level__label') if item.get('speaker__level__label') else u''
                })
                event_speaker_expense += Decimal(item.get('speaker_expense')).quantize(Decimal('0.00')) if item.get('speaker_expense') else Decimal(0.00).quantize(Decimal('0.00'))
        for i in range(max(2-len(replace_speaker_expenses),0)):
            replace_speaker_expenses.append(replace_speaker_expenses_blank)
        replace_tpl['event_speaker_expenses'] = replace_speaker_expenses

        # 会议支付凭证和供应商合同
        attachment_dict = {}
        attachment_list = models.Attachments.objects.filter(object__name='event',record_id=record_id,deleted=0,type='image').values_list(
            'attachment_group_id','attachment_group__label','s3_path','comments').order_by('attachment_group_id')
        for group_id,group_label,s3_path,comments in attachment_list:
            if group_label in(u'供应商合同', u'支付凭证'):
                AWS_NGINX_S3_URL = settings.S3_URL
                path = FileUtils.get_file_url(AWS_NGINX_S3_URL, s3_path)  # 获取附件图片的全路径
                temp_file = os.path.join(dirpath, os.path.basename(path))  # 根据dirpath和附件图片的文件名生成保存本地的图片绝对路径
                try:
                    urllib.urlretrieve(path, filename=temp_file)
                    width, height = adjust_size(temp_file)
                    if not attachment_dict.get(group_label):
                        attachment_dict[group_label] = {
                            'group_label': group_label,
                            'images': []
                        }
                    attachment_dict[group_label]['images'].append(
                        {
                         'image': InlineImage(tpl, temp_file, height=Mm(height), width=Mm(width)),
                         'comments': comments
                         }
                    )
                except:
                    pass
        replace_tpl['attachments'] = attachment_dict.values() if attachment_dict else []
        return Replacement(replace_content, replace_tpl, replace_pic)

cover_object_register = {'event': EventCover}

# 宽度最大值，单位为毫米(且>=A4纸宽度-左边距-右边距)
MAXWIDTH = 146
# 高度最大值，单位为毫米(且>=A4纸高度-上边距-下边距)
MAXHEIGHT = 230
def adjust_size(file_name):
    img = Image.open(file_name)
    width, height = img.size
    # 96为设定的word展示图片的默认dpi，单位为点数每英寸；25.4为英寸和毫米的换算单位， 1英寸=25.4毫米
    width_in_mm, height_in_mm = round(width / 96 * 25.4, 2), round(height / 96 * 25.4, 2)
    divisor = 1
    if width_in_mm > MAXWIDTH or height_in_mm > MAXHEIGHT:
        divisor = max(width_in_mm / MAXWIDTH, height_in_mm / MAXHEIGHT)
    return round(width_in_mm / divisor, 2), round(height_in_mm / divisor, 2)

def get_template(object_name, record_id, user):
    """
    :param object_name: the object name
    :param record_id: the record instance id
    :return: template_name, target_type
    """
    cover_class = cover_object_register.get(object_name)
    if cover_class:
        return cover_class(user).get_template(record_id)
    return TemplateInfo(None, None)


def get_template_value(object_name, record_id, template_name, user, tpl, dirpath):
    """
    :param object_name: the object name
    :param record_id: the record instance id
    :param template_name:
    :return: Replacement
    """
    cover_class = cover_object_register.get(object_name)
    if cover_class:
        return cover_class(user).get_template_value(record_id, template_name, tpl, dirpath)
    return Replacement({}, {}, {})

def get_template_section(object_name, record_id, user, args_dct):
    """
    :param object_name: the object name
    :param record_id: the record instance id
    :param template_name:
    :return: Replacement
    """
    cover_class = cover_object_register.get(object_name)
    if cover_class:
        return cover_class(user).get_template_section(record_id, user, args_dct)
    return []


def get_template_watermark(object_name, record_id, user, args_dct):
    """
    :param object_name: the object name
    :param record_id: the record instance id
    :param template_name:
    :return: Replacement
    """
    cover_class = cover_object_register.get(object_name)
    if cover_class:
        return cover_class(user).get_template_watermark(record_id, user, args_dct)
    return None
