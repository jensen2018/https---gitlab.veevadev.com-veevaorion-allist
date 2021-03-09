UPDATE `object_database_columns` SET `object_id`='3f49c30f-5d59-11e6-a130-5cc5d4d378cb', `name`='datetime_1', `type`='datetime', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-12-04 02:02:46' WHERE `id`='bb9272b0-5ed9-11e6-9ba1-5cc5d4d378cb' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='3f49c30f-5d59-11e6-a130-5cc5d4d378cb', `name`='datetime_2', `type`='datetime', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-12-04 02:03:35' WHERE `id`='bc23b630-5ed9-11e6-af47-5cc5d4d378cb' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='3f49c30f-5d59-11e6-a130-5cc5d4d378cb', `object_database_column_id`='bb9272b0-5ed9-11e6-9ba1-5cc5d4d378cb', `name`='cs_bak_event_start_time', `label`='日程中的会议开始时间', `description`='日程中的会议开始时间', `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`=NULL, `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-12-04 02:02:46', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`=NULL, `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='bbe2194f-5ed9-11e6-a85c-5cc5d4d378cb' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='3f49c30f-5d59-11e6-a130-5cc5d4d378cb', `object_database_column_id`='bc23b630-5ed9-11e6-af47-5cc5d4d378cb', `name`='cs_bak_event_end_time', `label`='日程中的会议结束时间', `description`='日程中的会议结束时间', `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`=NULL, `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2017-01-01 00:00:00', `modified_by`='1', `modified_on`='2020-12-04 02:03:36', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`=NULL, `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='bc6504f0-5ed9-11e6-aa07-5cc5d4d378cb' LIMIT 1 ;

delete from object_validations where id = 'b73b2094-027d-4f8b-8630-f504e41e3195';
INSERT INTO `object_validations`(`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`) VALUES ('b73b2094-027d-4f8b-8630-f504e41e3195', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', '创建日程用的会议时间', '创建日程用的会议时间', 'trigger', NULL, 'from django.utils.timezone import utc, localtime, get_current_timezone, make_aware, now
userid = instance.owner.id
# 时间验证
if instance:
    event_record_type = instance.record_type.name
    if event_record_type in (u\'cs_department\',u\'cs_department__report\',u\'cs_patient_education_meeting\',u\'cs_patient_education_meeting__report\'):
        today_date = datetime.datetime.now()
        if type(instance.date_1) == datetime.datetime:
            today_date = localtime(instance.date_1.replace(tzinfo=utc))
        else:
            today_date = make_aware(datetime.datetime.strptime(instance.date_1, \'%Y-%m-%d\'))

        print 11111111111111111111111111
        print instance.picklist_2_id
        print 11111111111111111111111111
        if instance.picklist_2_id == \'9bedaa54-e621-40da-b814-6b34af3e66ae\':
            start_datetime = today_date.replace(minute=0, hour=9, second=0)
            end_datetime = today_date.replace(minute=30, hour=9, second=0)
        # 下午
        elif instance.picklist_2_id == u\'a3630acd-5fa1-4146-94fe-f56fd03e1f05\':
            start_datetime = today_date.replace(minute=30, hour=16, second=0)
            end_datetime = today_date.replace(minute=0, hour=17, second=0)
    else:
        if type(instance.event_start_time) == datetime.datetime:
            start_time = localtime(instance.event_start_time.replace(tzinfo=utc))
        else:
            start_time = make_aware(datetime.datetime.strptime(instance.event_start_time, \'%Y-%m-%d %H:%M:%S\'))
        if type(instance.event_end_time) == datetime.datetime:
            end_time = localtime(instance.event_end_time.replace(tzinfo=utc))
        else:
            end_time = make_aware(datetime.datetime.strptime(instance.event_end_time, \'%Y-%m-%d %H:%M:%S\'))

        # ----------------------------------------------------------------------
        # 开始时间 小于 9点
        start_hour = start_time.strftime(\'%H\')
        start_datetime = start_time
        if int(start_hour) < 9:
            start_datetime = start_time.replace(minute=0, hour=9, second=0)

            # 开始时间大于17
        elif int(start_hour) >= 16:
            start_m = start_time.strftime(\'%M\')
            if int(start_m) > 30:
                start_datetime = start_time.replace(minute=30, hour=16)
            else:
                start_datetime = start_time.replace(hour=16)
        
        # 结束时间小于9点
        end_hour = end_time.strftime(\'%H\')
        end_datetime = end_time
        if int(end_hour) <= 9:
            end_m = end_time.strftime(\'%M\')
            if int(end_m) < 30:
                end_datetime = end_time.replace(minute=30, hour=9)
            else:
                end_datetime = end_time.replace(hour=9)
        elif int(end_hour) >= 17:
            end_datetime = end_time.replace(minute=0, hour=17)
        # ----------------------------------------------------------------------
        instance.datetime_1 = start_datetime
        instance.datetime_2 = end_datetime', '', '0', '1', '2020-12-04 02:12:48', '1', '2020-12-04 02:37:12', 'pre_save', '1', 'custom', 'cs_create_calendar_event_date', NULL, NULL) ;
UPDATE `custom_settings` SET `deleted`='0', `created_on`='2020-02-05 07:31:40.655174', `modified_on`='2020-02-05 07:31:40.655270', `key`='calendar_display_mode_setting', `value`='{"tot_state_to_be_compared": [], "enable_weekly_plan": true, "enable_allow_adjust": false, "call_state_to_be_compared": ["585cb58f-7408-11e6-934d-5cc5d4b571d2", "58551470-7408-11e6-85ed-5cc5d4b571d2"], "enable_call_finish_action": true, "enable_differential_display": true, "calendar_timeline": {"every_day_range_time": {"am": ["09:00:00", "12:00:00"], "pm": ["12:00:00", "17:00:00"]}, "unknown_max_minutes": 30, "objects": {"time_off_territory": {"__default__": {"values": {"am": ["forenoon"], "pm": ["afternoon"]}, "column_names": ["date", "ampm"], "type": "full"}, "internal_meeting_leave": {"column_names": ["datetime_1", "datetime_2"], "type": "range"}}, "coaching": {"__default__": {"type": "ampm", "column_names": ["coaching_date", "picklist_8"], "values": {"am": ["am"], "pm": ["pm"]}}}, "call": {"__default__": {"type": "ampm", "column_names": ["call_date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}, "event": {"__default__": {"column_names": ["datetime_1", "datetime_2"], "type": "range"}, "cs_patient_education_meeting": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}, "cs_department": {"type": "ampm", "column_names": ["date_1", "picklist_2"], "values": {"am": ["am"], "pm": ["pm"]}}}, "weekly_plan": {"__default__": {"values": {"am": ["am"], "pm": ["pm"]}, "column_names": ["date", "ampm"], "type": "ampm"}, "time_off_territory": {"type": "full", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}, "weekly_plan_coaching_plans": {"type": "ampm", "column_names": ["date", "ampm"], "values": {"am": ["am"], "pm": ["pm"]}}}}, "plan_hidden_modes": {"call_mode": "day"}}, "enable_coaching_finish_action": true, "enable_call_accompanying_person": false}', `created_by`='1', `modified_by`='1', `position_id`=NULL, `description`='日程显示方式设置', `type`='json', `module_id`='schedule' WHERE `id`='95' LIMIT 1 ;


update events set datetime_1=event_start_time, datetime_2=event_end_time where deleted = 0;