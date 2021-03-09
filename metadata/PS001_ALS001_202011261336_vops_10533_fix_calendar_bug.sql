-- custom_settings的calendar_display_mode_setting中新增设置"enable_call_accompanying_person": true, # 是否将拜访同行人显示在日程中
-- update custom_settings
-- set `value` = '{"tot_state_to_be_compared": [], "enable_weekly_plan": true, "enable_allow_adjust": false, "call_state_to_be_compared": ["585cb58f-7408-11e6-934d-5cc5d4b571d2", "58551470-7408-11e6-85ed-5cc5d4b571d2"], "enable_call_finish_action": true, "enable_differential_display": true, "calendar_timeline": {"every_day_range_time": {"am": ["09:00:00", "12:00:00"], "pm": ["12:00:00", "17:00:00"]}, "unknown_max_minutes": 30, "objects": {"time_off_territory": {"__default__": {"values": {"am": ["forenoon"], "pm": ["afternoon"]}, "column_names": ["date", "ampm"], "type": "full"}}, "coaching": {"__default__": {"column_names": ["coaching_date"], "type": "date"}}, "call": {"__default__": {"type": "ampm", "column_names": ["call_date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}, "event": {"__default__": {"column_names": ["event_start_time", "event_end_time"], "type": "range"}, "cs_patient_education_meeting": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}, "cs_department": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}}, "weekly_plan": {"__default__": {"values": {"am": ["am"], "pm": ["pm"]}, "column_names": ["date", "ampm"], "type": "ampm"}, "time_off_territory": {"type": "full", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}, "weekly_plan_coaching_plans": {"type": "ampm", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}}, "plan_hidden_modes": {"call_mode": "day"}}, "enable_coaching_finish_action": true, "enable_call_accompanying_person": false}'
-- where `key` = 'calendar_display_mode_setting';
-- INSERT INTO `picklists`(`id`, `name`, `label`, `source`, `description`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5b1fb296-f657-471a-9c85-073cf952f847', 'coaching_ampm', '协访上下午', 'custom', '', '0', '1', '2020-11-30 08:42:09', '1', '2020-11-30 08:42:09') ;
-- INSERT INTO `picklist_values`(`id`, `picklist_id`, `name`, `label`, `order`, `description`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`, `depending_on`) VALUES ('245a22cf-ff10-4d18-aa3b-72d84f097881', '5b1fb296-f657-471a-9c85-073cf952f847', 'am', 'am', '1', '', '0', '1', '2020-11-30 08:42:26', '1', '2020-11-30 08:42:26', 'custom', NULL) ;
-- INSERT INTO `picklist_values`(`id`, `picklist_id`, `name`, `label`, `order`, `description`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`, `depending_on`) VALUES ('9998fe0a-d457-4505-ad5e-45fe3ae8cb8c', '5b1fb296-f657-471a-9c85-073cf952f847', 'pm', 'pm', '2', '', '0', '1', '2020-11-30 08:42:35', '1', '2020-11-30 08:42:35', 'custom', NULL) ;
UPDATE `object_database_columns` SET `object_id`='3bb97df0-75a3-11e6-b1d3-5cc5d4b571d2', `name`='picklist_8', `type`='picklist', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-11-30 08:43:47' WHERE `id`='41afd421-75a3-11e6-86ae-5cc5d4b571d2' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='3bb97df0-75a3-11e6-b1d3-5cc5d4b571d2', `object_database_column_id`='41afd421-75a3-11e6-86ae-5cc5d4b571d2', `name`='cs_ref_coaching_ampm', `label`='协访下午下午', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`=NULL, `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`='238f6540-0960-11e7-b956-68f72882c9d0', `picklist_type`='picklist', `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-11-30 08:43:47', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`=NULL, `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='41b8adc0-75a3-11e6-83b2-5cc5d4b571d2' LIMIT 1 ;





--  Auto-generated SQL script #202011301526
UPDATE custom_settings
    SET value='{
    "tot_state_to_be_compared":[

    ],
    "enable_weekly_plan":true,
    "enable_allow_adjust":false,
    "call_state_to_be_compared":[
        "585cb58f-7408-11e6-934d-5cc5d4b571d2",
        "58551470-7408-11e6-85ed-5cc5d4b571d2"
    ],
    "enable_call_finish_action":true,
    "enable_differential_display":true,
    "calendar_timeline":{
        "every_day_range_time":{
            "am":[
                "09:00:00",
                "12:00:00"
            ],
            "pm":[
                "12:00:00",
                "17:00:00"
            ]
        },
        "unknown_max_minutes":30,
        "objects":{
            "time_off_territory": {
                "__default__": {
                    "values": {
                        "am": [
                            "forenoon"
                        ],
                        "pm": [
                            "afternoon"
                        ]
                    },
                    "column_names": [
                        "date",
                        "ampm"
                    ],
                    "type": "full"
                },
                "internal_meeting_leave": {
                    "column_names": [
                        "datetime_1",
                        "datetime_2"
                    ],
                    "type": "range"
                }
            },
            "coaching":{
                "__default__":{
                    "column_names":[
                        "coaching_date",
                        "picklist_8"
                    ],
                    "type":"ampm",
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                }
            },
            "call":{
                "__default__":{
                    "type":"ampm",
                    "column_names":[
                        "call_date",
                        "ampm"
                    ],
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                }
            },
            "event":{
                "__default__":{
                    "column_names":[
                        "event_start_time",
                        "event_end_time"
                    ],
                    "type":"range"
                },
                "cs_patient_education_meeting":{
                    "type":"ampm",
                    "column_names":[
                        "date_1",
                        "picklist_2"
                    ],
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                },
                "cs_department":{
                    "type":"ampm",
                    "column_names":[
                        "date_1",
                        "picklist_2"
                    ],
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                }
            },
            "weekly_plan":{
                "__default__":{
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    },
                    "column_names":[
                        "date",
                        "ampm"
                    ],
                    "type":"ampm"
                },
                "time_off_territory":{
                    "type":"full",
                    "column_names":[
                        "date",
                        "ampm"
                    ],
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                },
                "weekly_plan_coaching_plans":{
                    "type":"ampm",
                    "column_names":[
                        "date",
                        "ampm"
                    ],
                    "values":{
                        "am":[
                            "am"
                        ],
                        "pm":[
                            "pm"
                        ]
                    }
                }
            }
        },
        "plan_hidden_modes":{
            "call_mode":"day"
        }
    },
    "enable_coaching_finish_action":true, 
    "enable_call_accompanying_person": false
}'
    WHERE id=95;



UPDATE `object_validations` SET `object_id`='5299a45e-7408-11e6-bbe0-5cc5d4b571d2', `label`='创建拜访计划和协访报告', `description`='如果拜访表单填写了下次拜访日期及协访人,则生成对应的拜访计划和协访报告', `type`='trigger', `formula`=NULL, `trigger_code`='from orionbase.common import models
import datetime
from orionbase.common.orion_errors import create_validation_trigger_rule_errors
if instance and instance.id:

    # coach_users = models.CallAccompanyingPersons.objects.filter(call_id = instance.id,deleted=0).values_list(\'accompanying_person_id\',flat=True)
    # if len(coach_users) > 1:
    #    raise create_validation_trigger_rule_errors(u\'只能选择一个协访人.\')

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
        print 1111111
        # 先删掉之前创建的
        if instance.coaching:
            print 22222
            # 这个协访是自动生成的还是上级自己创建的
            coach = models.Coachings.objects.get(id=instance.coaching.id,deleted=0)
            if coach:
                print 333333
                if str(coach.created_by.id) == str(instance.owner.id) and coach.state_id==\'443d5cd1-75a3-11e6-a19f-5cc5d4b571d2\':
                    # 是自动生成的 并且还是草稿状态就删除
                    # coaching_id = instance.coaching
                    # instance.coaching = None
                    # instance.save(update_fields=[\'coaching\'])
                    # coach.deleted=1
                    # coach.save(update_fields=[\'deleted\'])
                    coaching_ids = list(models.CoachingTargets.objects.filter(call_id = instance.id).values_list(\'coaching_id\', flat=True))
                    print coaching_ids
                    models.Coachings.objects.filter(created_by = instance.owner, id__in=coaching_ids).update(deleted=1)
                    models.CoachingTargets.objects.filter(created_by = instance.owner, coaching_id__in = coaching_ids).update(deleted=1)
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
                                    rep_position_id = instance.position_id,
                                    picklist_8_id = instance.ampm_id
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



update custom_settings set `value`=true where `key` = 'allow_multicoachings_by_superiors';

-- update coachings set  created_by = owner where 1= 1;
delete from object_validations where id in ('828d4d2f-8f7b-41f2-98d5-303f88aa601a', '0d0dae4c-2a53-11eb-bc49-0215c63fce1a');


update page_list_fields set object_field_id = '3f01a411-75a3-11e6-969d-5cc5d4b571d2' where page_list_id = '48cf8f1e-75a3-vwfv-b0d3-5cc5d4b571d2'
and object_field_id='3ecd9bc0-75a3-11e6-818f-5cc5d4b571d2';


-- 协访报告创建功能去掉
update role_to_object_permissions set allow_create=0 where object_id = '3bb97df0-75a3-11e6-b1d3-5cc5d4b571d2';
-- 日程中的协访计划 
update role_to_object_record_types set deleted = 1 where object_record_type_id = '5d8eg1db-cb61-4f3e-b761-51fe15eadf2b';