-- 合并主数据的时候去掉合并流向，销量，指标功能
update custom_settings
set `value` = '["metrics","professional", "hospital", "package_price", "event", "sales_unit"]'
where `key` = 'recordmergence_hospital_mergence_process_items';

-- 协访计划的去完成按钮清除
update page_layout_actions set deleted = 1 where id = '34560a5e-5f95-44f7-9c6d-5cc5d4d378cb';


UPDATE `object_validations` SET `object_id`='5299a45e-7408-11e6-bbe0-5cc5d4b571d2', `label`='创建拜访计划和协访报告', `description`='如果拜访表单填写了下次拜访日期及协访人,则生成对应的拜访计划和协访报告', `type`='trigger', `formula`=NULL, `trigger_code`='from orionbase.common import models
import datetime
from orionbase.common.orion_errors import create_validation_trigger_rule_errors
if instance and instance.id:

    coach_users = models.CallAccompanyingPersons.objects.filter(call_id = instance.id,deleted=0).values_list(\'accompanying_person_id\',flat=True)
    if len(coach_users) > 1:
        raise create_validation_trigger_rule_errors(u\'只能选择一个协访人.\')

    userid = instance.owner.id
    owner = models.User.objects.get(id=userid)
    if instance.state.name == \'unfinished\':
        # 如有填写了下次拜访时间，则生成下次拜访计划
        models.WeeklyPlans.objects.filter(text_1 = instance.id,record_type__name=\'weekly_plan_call_plans\').delete()
        need_create_call_plan = []
        if instance.date_1:
            if not models.WeeklyPlans.objects.filter(deleted=0,date=instance.date_1,ampm__name=instance.ampm,
                                                        professional_id=instance.account_id,owner=instance.owner,
                                                        record_type__name=\'weekly_plan_call_plans\').exists():

                call_plan = models.WeeklyPlans(
                    deleted = 0,
                    date = instance.date_1,
                    ampm_id = instance.ampm,
                    hospital_id = models.Accounts.objects.get(id=instance.account_id).hospital.id,
                    created_by = owner,
                    modified_by = owner,
                    owner = owner,
                    record_type_id = models.ObjectRecordTypes.objects.get(object__name=\'weekly_plan\',name=\'weekly_plan_call_plans\'),
                    professional_id = instance.account_id,
                    created_on = datetime.datetime,
                    modified_on = datetime.datetime,
                    text_1 = instance.id
                )
                need_create_call_plan.append(call_plan)
        if len(need_create_call_plan):
            models.WeeklyPlans.objects.bulk_create(need_create_call_plan, batch_size=500)

        # 如有填写了协访人，则生成下次拜访报告
        is_need_create = 0
        # 先删掉之前创建的
        if instance.coaching:
            # 这个协访是自动生成的还是上级自己创建的
            coach = models.Coachings.objects.get(id=instance.coaching.id,deleted=0)
            if coach:
                if str(coach.created_by.id) == str(instance.owner.id) and coach.state_id==\'443d5cd1-75a3-11e6-a19f-5cc5d4b571d2\':
                    # 是自动生成的 并且还是草稿状态就删除
                    coaching_id = instance.coaching
                    instance.coaching = None
                    instance.save(update_fields=[\'coaching\'])
                    coach.deleted=1
                    coach.save(update_fields=[\'deleted\'])
                else:
                    is_need_create = -1
        if is_need_create == 0:
            # 获取上级
            # parent_position = models.Positions.objects.filter(id=instance.position.id,deleted=0).values_list(\'parent_id\',flat=True)
            # 获取上级
            _positions = models.Positions.objects.filter(id=instance.position.id,deleted=0)
            _parent_ids = []
            if _positions:
                _path = _positions[0].path
                split_parent_ids = _path.split(\'/\') if _path else []
                for split_parent_id in split_parent_ids:
                    if split_parent_id:
                        _parent_ids.append(split_parent_id)

            parent_position = _parent_ids # models.Positions.objects.filter(id=instance.position.id,deleted=0).values_list(\'parent_id\',flat=True)
            if parent_position:
                parent_user = models.UserPositions.objects.filter(position_id__in = parent_position,deleted=0).values_list(\'user_id\',flat=True)
                parent_user_position_dict = dict(models.UserPositions.objects.filter(position_id__in = parent_position,deleted=0, is_default=1).values_list(\'user_id\', \'position_id\'))
                print 1234,parent_user
                if parent_user:
                    # 上级为地区经理  or 主管，并且在代表选择的协访人里面
                    # parent = models.OrionUsers.objects.filter(role_id__in =[u\'5a013aaa-b5c5-11ea-aab5-0215c63fce1a\',u\'b74845ad-b5fe-11ea-aab5-0215c63fce1a\'],deleted=0,user_id__in=parent_user).first()
                    parent_user_ids = models.OrionUsers.objects.filter(deleted=0,user_id__in=parent_user).values_list(\'user_id\',flat=True)
                    print 12345,parent_user_ids
                    if parent_user_ids:
                        coach_users = models.CallAccompanyingPersons.objects.filter(call_id = instance.id,deleted=0).values_list(\'accompanying_person_id\',flat=True)
                        for coach_user in coach_users:
                            if coach_user in parent_user_ids:
                                is_need_create =1
                                # 获取填写的协访人
                                coach_user = coach_user
                                coach_owner = models.User.objects.get(id=coach_user)
                                coach_position = models.Positions.objects.get(id=parent_user_position_dict.get(coach_user),deleted=0)
                                current = models.PositionVersions.objects.get(is_active=True)
                                coach_position_history = models.UserPositionHistories.objects.get(version=current,deleted=0, position_id=parent_user_position_dict.get(coach_user))
                                coach_report = models.Coachings(
                                    deleted = 0,
                                    created_on = datetime.datetime,
                                    modified_on = datetime.datetime,
                                    created_by = instance.owner,
                                    modified_by = instance.owner,
                                    coaching_date = instance.call_date,
                                    owner = coach_owner,
                                    coaching_rep_id = userid,
                                    record_type_id = \'441d51b0-75a3-11e6-a00a-5cc5d4b51432\',
                                    state_id = \'443d5cd1-75a3-11e6-a19f-5cc5d4b571d2\',
                                    position_id = coach_position.id,
                                    position_history_id = coach_position_history.id if coach_position_history else None,
                                    rep_position_id = instance.position_id
                                )
                                coach_report.save()

                                coach_target = models.CoachingTargets(
                                    deleted = 0,
                                    created_on = datetime.datetime,
                                    modified_on = datetime.datetime,
                                    created_by = instance.owner,
                                    modified_by = instance.owner,
                                    coaching = coach_report,
                                    call_id = instance.id
                                )
                                coach_target.save()

                                # 回写拜访id
                                instance.coaching = coach_report
                                instance.save(update_fields=[\'coaching\'])
                                ', `error_message`='', `deleted`='0', `created_by`='1', `created_on`='2019-10-11 03:26:32', `modified_by`='1', `modified_on`='2020-11-18 03:49:36', `edit_type`='post_save_page', `is_active`='1', `source`='custom', `name`='generate_weekly_plan', `listens`=NULL, `version`='1' WHERE `id`='dd185d53-b407-4a74-9347-4e4e2612bb67' LIMIT 1 ;


insert into coaching_targets (deleted, created_on, modified_on, call_id, coaching_id, created_by, modified_by)
select 0,c.created_on,c.modified_on,c.id,c.coaching,c.created_by,c.modified_by from calls c left join coaching_targets ct on ct.call_id=c.id  and ct.deleted=0
where c.coaching is not null and c.deleted=0 and ct.id is null;

UPDATE `custom_settings` SET `deleted`='0', `created_on`='2020-02-05 07:31:40.655174', `modified_on`='2020-02-05 07:31:40.655270', `key`='calendar_display_mode_setting', `value`='{"tot_state_to_be_compared": [], "enable_weekly_plan": true, "enable_allow_adjust": false, "call_state_to_be_compared": ["585cb58f-7408-11e6-934d-5cc5d4b571d2", "58551470-7408-11e6-85ed-5cc5d4b571d2"], "enable_call_finish_action": true, "enable_differential_display": true, "calendar_timeline": {"every_day_range_time": {"am": ["09:00:00", "12:00:00"], "pm": ["12:00:00", "17:00:00"]}, "unknown_max_minutes": 30, "objects": {"time_off_territory": {"__default__": {"values": {"am": ["forenoon"], "pm": ["afternoon"]}, "column_names": ["date", "ampm"], "type": "full"}}, "coaching": {"__default__": {"column_names": ["coaching_date"], "type": "date"}}, "call": {"__default__": {"type": "ampm", "column_names": ["call_date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}, "event": {"__default__": {"column_names": ["event_start_time", "event_end_time"], "type": "range"}, "cs_patient_education_meeting": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}, "cs_department": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}}, "weekly_plan": {"__default__": {"values": {"am": ["am"], "pm": ["pm"]}, "column_names": ["date", "ampm"], "type": "ampm"}, "time_off_territory": {"type": "full", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}, "weekly_plan_coaching_plans": {"type": "ampm", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}}, "plan_hidden_modes": {"call_mode": "day"}}, "enable_coaching_finish_action": true}', `created_by`='1', `modified_by`='1', `position_id`=NULL, `description`='日程显示方式设置', `type`='json', `module_id`='schedule' WHERE `id`='95' LIMIT 1 ;





UPDATE `object_validations` SET `object_id`='5299a45e-7408-11e6-bbe0-5cc5d4b571d2', `label`='创建拜访计划和协访报告', `description`='如果拜访表单填写了下次拜访日期及协访人,则生成对应的拜访计划和协访报告', `type`='trigger', `formula`=NULL, `trigger_code`='from orionbase.common import models
import datetime
from orionbase.common.orion_errors import create_validation_trigger_rule_errors
if instance and instance.id:

    coach_users = models.CallAccompanyingPersons.objects.filter(call_id = instance.id,deleted=0).values_list(\'accompanying_person_id\',flat=True)
    if len(coach_users) > 1:
        raise create_validation_trigger_rule_errors(u\'只能选择一个协访人.\')

    userid = instance.owner.id
    owner = models.User.objects.get(id=userid)
    if instance.state.name == \'unfinished\':
        # 如有填写了下次拜访时间，则生成下次拜访计划
        models.WeeklyPlans.objects.filter(text_1 = instance.id,record_type__name=\'weekly_plan_call_plans\').delete()
        need_create_call_plan = []
        if instance.date_1:
            if not models.WeeklyPlans.objects.filter(deleted=0,date=instance.date_1,ampm__name=instance.ampm,
                                                        professional_id=instance.account_id,owner=instance.owner,
                                                        record_type__name=\'weekly_plan_call_plans\').exists():

                call_plan = models.WeeklyPlans(
                    deleted = 0,
                    date = instance.date_1,
                    ampm_id = instance.ampm,
                    hospital_id = models.Accounts.objects.get(id=instance.account_id).hospital.id,
                    created_by = owner,
                    modified_by = owner,
                    owner = owner,
                    record_type_id = models.ObjectRecordTypes.objects.get(object__name=\'weekly_plan\',name=\'weekly_plan_call_plans\'),
                    professional_id = instance.account_id,
                    created_on = datetime.datetime,
                    modified_on = datetime.datetime,
                    text_1 = instance.id
                )
                need_create_call_plan.append(call_plan)
        if len(need_create_call_plan):
            models.WeeklyPlans.objects.bulk_create(need_create_call_plan, batch_size=500)

        # 如有填写了协访人，则生成下次拜访报告
        is_need_create = 0
        # 先删掉之前创建的
        if instance.coaching:
            # 这个协访是自动生成的还是上级自己创建的
            coach = models.Coachings.objects.get(id=instance.coaching.id,deleted=0)
            if coach:
                if str(coach.created_by.id) == str(instance.owner.id) and coach.state_id==\'443d5cd1-75a3-11e6-a19f-5cc5d4b571d2\':
                    # 是自动生成的 并且还是草稿状态就删除
                    coaching_id = instance.coaching
                    instance.coaching = None
                    instance.save(update_fields=[\'coaching\'])
                    coach.deleted=1
                    coach.save(update_fields=[\'deleted\'])
                else:
                    is_need_create = -1
                                ', `error_message`='', `deleted`='0', `created_by`='1', `created_on`='2019-10-11 03:26:32', `modified_by`='1', `modified_on`='2020-11-18 03:49:36', `edit_type`='post_save_page', `is_active`='1', `source`='custom', `name`='generate_weekly_plan', `listens`=NULL, `version`='1' WHERE `id`='dd185d53-b407-4a74-9347-4e4e2612bb67' LIMIT 1 ;

delete from object_validations where id in ('828d4d2f-8f7b-41f2-98d5-303f88aa601a', '0d0dae4c-2a53-11eb-bc49-0215c63fce1a');
INSERT INTO `object_validations`(`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`) VALUES 
('828d4d2f-8f7b-41f2-98d5-303f88aa601a', '5299a45e-7408-11e6-bbe0-5cc5d4b571d2', '完成拜访的时候删除协访计划', '完成拜访的时候删除协访计划', 'trigger', NULL, 'from orionbase.common import models
from orionbase.common import orion_errors
from orionbase.middelware.common import get_request
from django.db import connection
import json
from orion import context, status
from django.utils import timezone

if context.env == \'request\':
    if instance.id:
        with connection.cursor() as cursor:
            _sql = u"""
                    select ttt.coachw_id from calls ca
                    join call_accompanying_persons cap on cap.call_id = ca.id 
                    join (select coachw.id coachw_id , callw.date call_date,callw.owner call_owner,callw.professional_id account_id,coachw.owner coach_owner from weekly_plans callw
                    join  weekly_plans coachw on coachw.id =  callw.parent_id and coachw.record_type_id = \'5d8eg1db-cb61-4f3e-b761-51fe15eadf2b\'
                    where  callw.record_type_id = \'1860f152-e352-4d5c-947c-a28c27bb1b94\'
                    and callw.date =\'{call_date}\'
                    and coachw.deleted = 0
                    and callw.deleted = 0
                    and callw.owner ={owner}) ttt
                    on ttt.call_date =  ca.call_date 
                    and  ttt.account_id =  ca.account_id 
                    and  ttt.call_owner =  ca.owner
                    and  ttt.coach_owner =  cap.accompanying_person_id
                    where ca.id = {call_id}
                """.format(call_id=instance.id,call_date=instance.call_date,owner=instance.owner_id)
            print \'828d4d2f-8f7b-41f2-98d5-303f88aa601a\'
            print _sql
            print \'828d4d2f-8f7b-41f2-98d5-303f88aa601a\'
            cursor.execute(_sql)
            rows = cursor.fetchall()
            if rows and rows:
                _wp_ids = [0]
                for row in rows:
                    _wp_ids.append(row[0])
                now = timezone.now()
                models.WeeklyPlans.objects.filter(deleted=0,id__in=_wp_ids).update(deleted=1,modified_on=now)', '', '0', '1', '2020-11-19 09:06:09', '1', '2020-11-19 09:12:01', 'post_save', '1', 'custom', 'cs_del_coach_week_plan', NULL, NULL) ;



INSERT INTO `object_validations`(`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`) VALUES 
('0d0dae4c-2a53-11eb-bc49-0215c63fce1a', '8fdc0d73-b922-43e0-8552-972b681c3436', '完成拜访的时候删除协访计划', '完成拜访的时候删除协访计划', 'trigger', NULL, 'from orionbase.common import models
from orionbase.common import orion_errors
from orionbase.middelware.common import get_request
from django.db import connection
import json
from orion import context, status
from django.utils import timezone

if context.env == \'request\':
    if instance.id and instance.call_id:
        print instance.id 
        with connection.cursor() as cursor:
            _sql = u"""
                    select ttt.coachw_id from calls ca
                    join call_accompanying_persons cap on cap.call_id = ca.id 
                    join (select coachw.id coachw_id , callw.date call_date,callw.owner call_owner,callw.professional_id account_id,coachw.owner coach_owner from weekly_plans callw
                    join  weekly_plans coachw on coachw.id =  callw.parent_id and coachw.record_type_id = \'5d8eg1db-cb61-4f3e-b761-51fe15eadf2b\'
                    where  callw.record_type_id = \'1860f152-e352-4d5c-947c-a28c27bb1b94\'
                    and coachw.deleted = 0
                    and callw.deleted = 0
                    and callw.date =\'{call_date}\'
                    and callw.owner ={owner}) ttt
                    on ttt.call_date =  ca.call_date 
                    and  ttt.account_id =  ca.account_id 
                    and  ttt.call_owner =  ca.owner
                    and  ttt.coach_owner =  cap.accompanying_person_id
                    where cap.id = {call_id}
                """.format(call_id=instance.id,call_date=instance.call.call_date,owner=instance.call.owner_id)
            print \'0d0dae4c-2a53-11eb-bc49-0215c63fce1a\'
            print _sql
            print \'0d0dae4c-2a53-11eb-bc49-0215c63fce1a\'
            cursor.execute(_sql)
            rows = cursor.fetchall()
            if rows:
                _wp_ids = [0]
                for row in rows:
                    _wp_ids.append(row[0])
                print \'0d0dae4c-2a53-11eb-bc49-0215c63fce1a\'
                print _wp_ids
                print \'0d0dae4c-2a53-11eb-bc49-0215c63fce1a\'
                now = timezone.now()
                models.WeeklyPlans.objects.filter(deleted=0,id__in=_wp_ids).update(deleted=1,modified_on=now)', '', '0', '1', '2020-11-19 09:06:09', '1', '2020-11-19 09:12:01', 'post_save', '1', 'custom', 'cs_del_coach_week_plan', NULL, NULL) ;

