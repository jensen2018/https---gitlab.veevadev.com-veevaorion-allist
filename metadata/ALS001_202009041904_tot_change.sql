-- 区域外时间的申请状态去除详情页字段，  系统到申请日期自动提交

-- 1. 去掉新建页面的保存并提交按钮
-- 2. 未提交状态页面的提交按钮去掉
-- 3. 未提交状态label改为已提交
-- 4. 详情页去掉状态字段
-- 5. 定时任务处理将过去的时间直接改为已提交，未来时间需要到未来日期+1天改为已提交，注意时区

-- 1. 去掉新建页面的保存并提交按钮
update page_layout_actions set deleted = 1 where id = '1ce9c0e0-96e5-4a21-8bfb-cffac2465d7d';

-- 2. 未提交状态页面的提交按钮去掉
update page_layout_actions set deleted = 1 where id = 'f0816918-4f0c-4fbe-9af9-bee6c8ed3d1f';

-- 3. 未提交状态label改为已提交
update object_states set label = '已提交' where id = '6fa53cbc-a289-11e7-8d59-02d2a924e5ba';

-- 4. 详情页去掉状态字段
update page_layout_fields set deleted = 1 where id in (
'6a9cba39-4ee8-49f8-909e-66d8793921ca',
'e2908703-0a19-40a5-9afb-7dae7d0a54f4',
'e86caa85-1436-4147-80db-8ed660558b25'
);

-- 5. 定时任务处理将过去的时间直接改为已提交，未来时间需要到未来日期+1天改为已提交，时间频率与拜访一致
INSERT INTO `djcelery_periodictask` (`name`, `task`, `args`, `kwargs`, `queue`, `exchange`, `routing_key`, `expires`, `enabled`, `last_run_at`, `total_run_count`, `date_changed`, `description`, `crontab_id`, `interval_id`) VALUES
('time_off_territory_auto_submit', 'time_off_territory_auto_submit', '[]', '{}', NULL, NULL, NULL, NULL, '1', NOW(), '15', NOW(), '', '17', NULL);

