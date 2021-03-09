-- 会议费用详情页中人数改为人次
update page_layout_fields set label = '人次' where object_field_id = 'f2468003-ea19-4790-a7db-34e988d22128';
-- 会议费用单价默认为0
UPDATE `object_fields` SET `number_default` = NULL WHERE (`id` = 'c0934862-f8e8-4ecd-bee6-bce2c4093b0a');

-- 餐费和住宿费添加提示信息
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d7aa988e-e76f-11ea-bc49-0215c63fce1a', '2eece1f9-1c4a-4843-bba5-e45c91419cff', 'section', '提示信息:人次和单价为计划时需填写，金额和人次报告时需填写', '0', '12', '0', '1', 'both', '0', '1', '2020-02-27 00:00:00', '1', '2020-08-28 04:12:03');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d7aa98b0-e76f-11ea-bc49-0215c63fce1a', 'd60bfa9e-9244-4665-bb04-4ea87d2e8ee4', 'section', '提示信息:人次和单价为计划时需填写，金额和人次报告时需填写', '0', '12', '0', '1', 'both', '0', '1', '2020-02-27 00:00:00', '1', '2020-08-28 06:14:04');
