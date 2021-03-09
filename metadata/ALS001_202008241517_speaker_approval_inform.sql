-- 讲者审批人3天未审批的，推送企业微信消息提醒
INSERT INTO `djcelery_periodictask` (`name`, `task`, `args`, `kwargs`, `queue`, `exchange`, `routing_key`, `expires`, `enabled`, `last_run_at`, `total_run_count`, `date_changed`, `description`, `crontab_id`, `interval_id`) VALUES
('notifications_for_pending_approval_speaker_dcr', 'notifications_for_pending_approval_speaker_dcr', '[]', '{}', NULL, NULL, NULL, NULL, '1', NOW(), '0', NOW(), '', NULL, '3');

-- 讲者/会议审批人3天未审批的，推送企业微信消息提醒——每天9点半
INSERT INTO `djcelery_crontabschedule` (`id`, `minute`, `hour`, `day_of_week`, `day_of_month`, `month_of_year`) VALUES
('18', '30', '9', '*', '*', '*');

update djcelery_periodictask set crontab_id = 18, interval_id = NULL where id in (16, 18);