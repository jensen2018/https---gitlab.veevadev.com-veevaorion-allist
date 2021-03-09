-- 修复共享规则中共享岗位和被共享岗位无法搜索bug
UPDATE `object_fields` SET `lookup_filter_id` = '8f2fb529-f9ff-410c-9136-e5a270c59d2e' WHERE `id` = '52afb3a6-8004-4602-9f1e-50443e28c2cf';
UPDATE `object_fields` SET `lookup_object_id` = 'cb52e9cf-4342-11e6-a1a8-5cc5d4d378cb' WHERE `id` = 'd0c02b15-37d0-4416-acda-78d0a0e69d21';

-- 合并主数据中医生界面去除医生id字段显示
UPDATE `page_list_fields` SET `deleted` = 1 WHERE `id` = 'ac3a6dc8-3154-467e-b642-52f1fdd7d04e';
UPDATE `page_list_fields` SET `deleted` = 1 WHERE `id` = '8d855453-310d-47d1-8c46-9ae0d704e9cf';
UPDATE `page_layout_fields` SET `deleted` = 1 WHERE `id` = 'cd00be78-3b90-4838-a2b5-c846c818aa57';
UPDATE `page_layout_fields` SET `deleted` = 1 WHERE `id` = 'd3e79571-dd87-4b47-9ff9-de589da41649';

-- 调整拜访逻辑 已保存的直接为完成状态且可修改。两天后系统自动递交且不可修改
UPDATE `page_layout_actions` SET `deleted` = 1 WHERE `id` = 'dbf4bb70-bcf4-11e6-9496-5cc5d4d378cb';
UPDATE `page_layout_actions` SET `deleted` = 1 WHERE `id` = 'dbb71630-bcf4-11e6-a588-5cc5d4d378cb';
UPDATE `object_states` SET `label` = '已完成' WHERE `id` = '58551470-7408-11e6-85ed-5cc5d4b571d2';

