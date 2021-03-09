UPDATE `custom_settings` SET `deleted` = 0, `created_on` = '2020-08-11 10:51:48.563370', `modified_on` = '2020-08-11 10:51:48.563421', `key` = 'recordmergence_hospital_mergence_process_items', `value` = '[\"metrics\",\"professional\",\"sales_target\", \"hospital\",\"sales_data\", \"tth_relation\", \"package_price\", \"event\", \"tth\",\"sales_unit\"]', `created_by` = 1, `modified_by` = 1, `position_id` = NULL, `description` = '合并医院时处理相关对象设置', `type` = 'string', `module_id` = NULL WHERE `id` = 118;
-- 开启本周编辑
UPDATE `custom_settings` SET `value` = 'true' WHERE `id` = 119;
-- 新建日程时允许新建会议
UPDATE `objects` SET `label` = '会议' WHERE `id` = '3f49c30f-5d59-11e6-a130-5cc5d4d378cb';
