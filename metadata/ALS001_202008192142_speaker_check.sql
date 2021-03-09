--  单会议的讲者使用限制trigger
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`)
VALUES
	('87451b14-bce1-1234-8758-020652a9390e', '81aee6b5-2a63-4563-aa5a-1a880ffb0dac', '检查单场会的讲者使用', 'event_speaker', 'trigger', NULL, 
"# object_name = sender._meta.db_table
# if object_name == 'event_speakers' and event == 'pre_save':
msg = ''
# 1. 单会议的讲者使用限制
# 讲者级别	单次费用限制（含）	全年单一讲者讲课费支付上限	年度使用次数	特殊规则
# 城市级	1300~3200	<=120000	<25次	城市级讲者在科室会内讲课，单次不超过1300
# 区域级	2500~5000	<=150000	<25次	
# 全国级	3800~7500	<=200000	<25次	

if instance.speaker_level.label == u'城市级':
    if instance.speaker_expense < 1300 or instance.speaker_expense > 3200:
        msg += u'城市级讲者（%s）单次费用限制1300~3200' % instance.speaker.name
    # 科室会的特殊规则
    if instance.event.record_type.name == 'cs_department':
        if instance.speaker_expense > 1300:
            msg += u'城市级讲者（%s）在科室会内讲课，单次不超过1300' % instance.speaker.name

if instance.speaker_level.label == u'区域级':
    if instance.speaker_expense < 2500 or instance.speaker_expense > 5000:
        msg += u'区域级讲者（%s）单次费用限制2500~5000' % instance.speaker.name
if instance.speaker_level.label == u'全国级':
    if instance.speaker_expense < 3800 or instance.speaker_expense > 7500:
        msg += u'全国级讲者（%s）单次费用限制3800~7500' % instance.speaker.name
if msg:
    raise create_validation_trigger_rule_errors(msg)", '', 0, 1, '2020-08-19 11:08:42', 1, '2020-08-19 08:53:54', 'pre_save', 1, 'custom', 'event_speaker', NULL, '1');

-- 年度讲者的使用限制trigger
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`)
VALUES
	('87451b14-bce1-4321-8758-020652a9390e', '81aee6b5-2a63-4563-aa5a-1a880ffb0dac', '检查年度的讲者使用', 'event_speaker_year', 'trigger', NULL, 
"# object_name = sender._meta.db_table

# if object_name == 'event_speakers' and event == 'pre_save':
msg = ''
# 2. 年度的讲者使用限制

# 统计已发生讲者费用/次数的会议范围分为两部分：
# 1 本会议，按计划的，无论当前提交的是计划还是报告
# 2 其他会议，按报告的讲者费，开始时间跟本会议的开始时间同年度，状态限于（审批中、审批通过、已核销），不限提交人

# 获取当前用户的实际使用讲者情况，加上本次审批的会议
event_id = instance.event.id
event_plan_id = instance.event.event_id
event_record_type = instance.event.record_type.name
with connection.cursor() as cursor:
    
    calc_event_id = event_plan_id if '__report' in event_record_type else event_id

    sql_str = '''
        select 
            ifnull(sum(es.speaker_expense),0), 
            count(es.id)
        from events e
        left join event_speakers es on e.id = es.event_id and es.deleted=0
        left join object_states os on e.state = os.id 
        left join object_record_types ort on e.record_type = ort.id 
        where 
        (
            e.deleted = 0 
            and date_format(e.event_start_time,'%Y') = (select date_format(event_start_time,'%Y') from events where id = {})
            and os.name in ('sent_approval','approved','write_off')
            and ort.name like '%__report'
            and e.id <> {}
            and es.speaker_id = {}
        )
        or e.id = {} and es.speaker_id = {}
    '''
    cursor.execute(sql_str.format(event_id, event_id, instance.speaker.id,calc_event_id,instance.speaker.id))
    row = cursor.fetchone()
    if row:
        year_speakr_expense, year_speakr_count = row

        # 比较是否超限
        if instance.speaker_level.label == u'城市级':
            if year_speakr_expense > 120000 or year_speakr_count >= 25:
                msg += u'城市级讲者（%s）年度使用超限，禁止使用' % instance.speaker.name
        if instance.speaker_level.label == u'区域级':
            if year_speakr_expense > 150000 or year_speakr_count >= 25:
                msg += u'区域级讲者（%s）年度使用超限，禁止使用' % instance.speaker.name
        if instance.speaker_level.label == u'全国级':
            if year_speakr_expense > 200000 or year_speakr_count >= 25:
                msg += u'全国级讲者（%s）年度使用超限，禁止使用' % instance.speaker.name
if msg:
    raise create_validation_trigger_rule_errors(msg)", '', 0, 1, '2020-08-19 11:08:42', 1, '2020-08-19 08:53:54', 'pre_save', 1, 'custom', 'event_speaker_year', NULL, '1');
