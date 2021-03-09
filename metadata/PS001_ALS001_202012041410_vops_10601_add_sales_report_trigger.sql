UPDATE `object_validations` SET `object_id`='2f9fd080-ee39-418d-b320-80bb7e6d57f6', `label`='默认销量上报填写时间为当前', `description`='默认销量上报填写时间为当前', `type`='trigger', `formula`=NULL, `trigger_code`='from django.utils.timezone import utc, localtime
from django.utils import timezone
import datetime
if instance and not instance.date_1:
    now_date = datetime.datetime.now().date()
    instance.date_1 = now_date
if instance.owner and not instance.position_id:
    agent_position_id = models.UserPositions.advance_objects.get(user_id=instance.owner, is_default=1).position_id
    instance.position_id = agent_position_id
if instance and instance.number_1:
    if int(instance.number_1) < 0:
        raise create_validation_trigger_rule_errors(u\'销量不允许填写负数.\')', `error_message`='', `deleted`='0', `created_by`='1', `created_on`='2019-10-11 03:26:32', `modified_by`='1', `modified_on`='2020-12-04 08:30:48', `edit_type`='pre_save', `is_active`='1', `source`='custom', `name`='sales_reported_date_set_now', `listens`=NULL, `version`=NULL WHERE `id`='hxf4ef70-e980-11e9-b9aa-0298a739d7eb' LIMIT 1 ;


UPDATE page_layout_fields
set object_field_id = '3f01a411-75a3-11e6-969d-5cc5d4b571d2'
WHERE id in (
'00132974-1fde-483f-b788-a0b2b9fa67ea',
'1a171e79-6481-11e7-9a65-02b9cf3f3fde',
'1f475682-eb44-11e8-b6c8-02f90e0f46f0',
'27019bfc-6483-11e7-9a65-02b9cf3f3fde',
'31f4cdf4-cc03-4843-af80-c7f7f0d8e284',
'31f4cdf4-cc03-4843-b44d-c7f7f0d8e284',
'3a9e8916-5072-11e9-99c4-02f90e0f46f0',
'3e9313b0-8727-11e7-a3db-34f39ab71988',
'700d531b-6481-11e7-9a65-02b9cf3f3fde',
'867c0ade-cae3-4296-9956-8e66ba59ccb3',
'ba97f900-8635-11e7-92dc-34f39ab71988',
'dac98014-8625-11e7-bc93-34f39ab71988',
'dac98061-8625-11e7-9a2c-34f39ab71988',
'dd33da8d-6482-11e7-9a65-02b9cf3f3fde',
'fe37cc4a-4186-4cba-a2bb-8c9a36c5d11f');


update page_lists
set external_condition = '
from django.db import models as djm
def get_condition(metadata_user, page_list):
    return djm.Q(account_1__isnull=False)
'
where id = '0bf3eb0b-2345-475a-bcb8-e04c08d12345';

