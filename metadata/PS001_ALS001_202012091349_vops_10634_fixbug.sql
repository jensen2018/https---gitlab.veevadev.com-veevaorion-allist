
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
