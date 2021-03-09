
-- 自定义对象的支持

INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `color`, `template`)
VALUES
	('2c2f1240-7026-11e7-b896-34f39ab71988', 'cs_operation_management', 'custom', '功能管理', NULL, 'category', 'large', NULL, 'veev-operation-m', 0, 1, '2018-07-21 03:14:04', 1, '2019-06-24 11:08:27', NULL, 'cs_operation_management');

INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `color`, `template`)
VALUES
	('f0473b98-af1a-4e41-a18e-691bcf7443be', 'cs_third_party_report', 'custom', '功能选择', '2c2f1240-7026-11e7-b896-34f39ab71988', 'menu', 'large', '305b5772-3f27-4e23-9ba1-98b5766d9ee5', NULL, 0, 1, '2019-06-18 00:00:00', 1, '2019-08-15 08:40:49', NULL, 'tableau_report');

-- 初始化内置账号
INSERT INTO `roles` (`id`, `name`, `type`, `source`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('0a80b0c3-bfd3-11e9-a37a-02f90e0f46f0', '项目经理', 'admin', 'custom', 0, 1, '2018-08-02 10:33:29', 1, '2018-08-02 10:33:29');


-- 授权菜单
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('eb57daf6-4bf2-4248-94ad-44847e56b651', '0a80b0c3-bfd3-11e9-a37a-02f90e0f46f0', '2c2f1240-7026-11e7-b896-34f39ab71988', 1, 0, 1, '2019-06-18 00:00:00', 1, '2019-06-18 00:00:00');
 	INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('eb57daf6-4bf2-4248-94ad-44847e56b652', '0a80b0c3-bfd3-11e9-a37a-02f90e0f46f0', 'f0473b98-af1a-4e41-a18e-691bcf7443be', 1, 0, 1, '2019-06-18 00:00:00', 1, '2019-06-18 00:00:00');

INSERT INTO `custom_pages` (`id`, `deleted`, `created_on`, `modified_on`, `name`, `description`, `created_by`, `modified_by`, `record_type_id`)
VALUES
 ('10258126-c4db-4087-894b-446663c412d9', 0, '2019-08-05 02:59:24.000000', '2019-08-05 02:59:24.000000', 'my_custom_page', '', 1, 1, '1207daf1-005c-4a0f-a402-d2e2920fec3b');
-- admin注入
-- 岗位版本
INSERT INTO `position_versions` (`id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `name`, `plan_start_date`, `end_time`, `is_active`, `start_time`, `enable_metrics`, `disable_metrics`) VALUES
('1', '0', '1',now(), '1', now(), date_format(curdate(),'%Y-%m'), date_add(curdate(), interval - day(curdate()) + 1 day), last_day(curdate()), '1',date_add(curdate(), interval - day(curdate()) + 1 day), '0','0');
-- admin岗位
INSERT INTO `positions` (id,`name`, `description`, `path`, `deleted`, `modified_on`, `created_by`, `created_on`, `modified_by`, `code`, `owner`,`effective`,`record_type_id`)
VALUES ('1' , 'admin', '', '/', '0', NOW(), '1', NOW(), '1', 'admin', '1', '1' ,'7e9e50d9-44c5-488e-ba7e-54a09b5622a1');
-- admin历史岗位
INSERT INTO `position_histories` (`id` ,`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `code`, `name`, `org_position_id`, `version_id`, `owner` , `record_type_id`)
VALUES('1' , '0' ,'1' , NOW() , '1' , NOW(), 'admin' , 'admin' , '1' ,'1' ,'1' ,'40ce7fa1-c996-4c2b-bdd7-ee9495893ea8');
-- admin 用户岗位关系
INSERT INTO `user_positions` (id,`user_id`, `position_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
values('1','1','1','1','0','1',NOW(),'1',NOW());
-- admin用户岗位关系历史表
INSERT INTO `user_position_histories` (`id`,`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `position_id`, `user_id`, `version_id`, `position_history_id`)
values('1','0','1',NOW(),'1',NOW(),'1','1','1','1','1');

INSERT INTO `auth_user` (`password`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`)
VALUES ('pbkdf2_sha256$24000$Iag4Tl75zk7L$+JF8qvkYnxeE+3F8W4uPFSUEI5dTFZOMoBFbBEC6yDs=', '0', 'PM', '', '', '', '0', '1', '2018-01-31 00:00:00.000000');

INSERT INTO `orion_users` (`name`, `wechat_username`, `deleted`, `state`, `user_id`, `role_id`, `created_by`, `created_on`, `modified_by`, `modified_on`, `privacy`, `owner`, `password_reset`, `department`)
select '项目经理', 'PM', '0', 'aac97c40-03d8-11e7-af86-68f72882c9d0', au.id, '0a80b0c3-bfd3-11e9-a37a-02f90e0f46f0', '1', '2018-01-31 00:00:00.000000', '1', '2018-01-31 00:00:00.000000', '0', '1', '0',''
from
(select id from auth_user where username ='PM') as au;

select @uid:=id from auth_user where username ='PM';
INSERT INTO `positions` (`id`, `name`, `description`, `parent_id`, `path`, `deleted`, `modified_on`, `created_by`, `created_on`, `modified_by`, `code`, `policy_id`, `owner`, `external_id`, `level_id`, `attachment_comment`, `boolean_1`, `boolean_10`, `boolean_2`, `boolean_3`, `boolean_4`, `boolean_5`, `boolean_6`, `boolean_7`, `boolean_8`, `boolean_9`, `date_1`, `date_10`, `date_2`, `date_3`, `date_4`, `date_5`, `date_6`, `date_7`, `date_8`, `date_9`, `datetime_1`, `datetime_10`, `datetime_2`, `datetime_3`, `datetime_4`, `datetime_5`, `datetime_6`, `datetime_7`, `datetime_8`, `datetime_9`, `image_1`, `image_10`, `image_2`, `image_3`, `image_4`, `image_5`, `image_6`, `image_7`, `image_8`, `image_9`, `longtext_1`, `longtext_10`, `longtext_2`, `longtext_3`, `longtext_4`, `longtext_5`, `longtext_6`, `longtext_7`, `longtext_8`, `longtext_9`, `number_1`, `number_10`, `number_11`, `number_12`, `number_13`, `number_14`, `number_15`, `number_16`, `number_17`, `number_18`, `number_19`, `number_2`, `number_20`, `number_3`, `number_4`, `number_5`, `number_6`, `number_7`, `number_8`, `number_9`, `picklist_1`, `picklist_10`, `picklist_11`, `picklist_12`, `picklist_13`, `picklist_14`, `picklist_15`, `picklist_16`, `picklist_17`, `picklist_18`, `picklist_19`, `picklist_2`, `picklist_20`, `picklist_3`, `picklist_4`, `picklist_5`, `picklist_6`, `picklist_7`, `picklist_8`, `picklist_9`, `text_1`, `text_10`, `text_11`, `text_12`, `text_13`, `text_14`, `text_15`, `text_16`, `text_17`, `text_18`, `text_19`, `text_2`, `text_20`, `text_3`, `text_4`, `text_5`, `text_6`, `text_7`, `text_8`, `text_9`, `geography_id`, `veeva_code`, `effective`, `global_positioning_system_id`, `virtual_parent_id`, `virtual_path`, `multiselect_picklist_1`, `multiselect_picklist_10`, `multiselect_picklist_2`, `multiselect_picklist_3`, `multiselect_picklist_4`, `multiselect_picklist_5`, `multiselect_picklist_6`, `multiselect_picklist_7`, `multiselect_picklist_8`, `multiselect_picklist_9`, `responsibility_id`, `superior_level_1_id`, `superior_level_2_id`, `superior_level_3_id`, `superior_level_4_id`, `superior_level_5_id`, `superior_level_6_id`, `record_type_id`)
VALUES
	(7, 'PM', '', 1, '/1/', 0, '2019-08-14 10:27:52', 1, '2019-08-14 10:27:52', 1, 'PM-01', NULL, 1, NULL, 'cf9e6bf5-3935-11e7-9629-784f43949f5b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7e9e50d9-44c5-488e-ba7e-54a09b5622a1');

INSERT INTO `position_histories` (`id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `code`, `name`, `description`, `org_parent`, `org_path`, `org_position_id`, `version_id`, `level_id`, `external_id`, `owner`, `policy_id`, `attachment_comment`, `boolean_1`, `boolean_10`, `boolean_2`, `boolean_3`, `boolean_4`, `boolean_5`, `boolean_6`, `boolean_7`, `boolean_8`, `boolean_9`, `date_1`, `date_10`, `date_2`, `date_3`, `date_4`, `date_5`, `date_6`, `date_7`, `date_8`, `date_9`, `datetime_1`, `datetime_10`, `datetime_2`, `datetime_3`, `datetime_4`, `datetime_5`, `datetime_6`, `datetime_7`, `datetime_8`, `datetime_9`, `image_1`, `image_10`, `image_2`, `image_3`, `image_4`, `image_5`, `image_6`, `image_7`, `image_8`, `image_9`, `longtext_1`, `longtext_10`, `longtext_2`, `longtext_3`, `longtext_4`, `longtext_5`, `longtext_6`, `longtext_7`, `longtext_8`, `longtext_9`, `number_1`, `number_10`, `number_11`, `number_12`, `number_13`, `number_14`, `number_15`, `number_16`, `number_17`, `number_18`, `number_19`, `number_2`, `number_20`, `number_3`, `number_4`, `number_5`, `number_6`, `number_7`, `number_8`, `number_9`, `picklist_1`, `picklist_10`, `picklist_11`, `picklist_12`, `picklist_13`, `picklist_14`, `picklist_15`, `picklist_16`, `picklist_17`, `picklist_18`, `picklist_19`, `picklist_2`, `picklist_20`, `picklist_3`, `picklist_4`, `picklist_5`, `picklist_6`, `picklist_7`, `picklist_8`, `picklist_9`, `text_1`, `text_10`, `text_11`, `text_12`, `text_13`, `text_14`, `text_15`, `text_16`, `text_17`, `text_18`, `text_19`, `text_2`, `text_20`, `text_3`, `text_4`, `text_5`, `text_6`, `text_7`, `text_8`, `text_9`, `geography_id`, `veeva_code`, `parent_id`, `global_positioning_system_id`, `org_virtual_parent`, `org_virtual_path`, `virtual_parent_id`, `multiselect_picklist_1`, `multiselect_picklist_10`, `multiselect_picklist_2`, `multiselect_picklist_3`, `multiselect_picklist_4`, `multiselect_picklist_5`, `multiselect_picklist_6`, `multiselect_picklist_7`, `multiselect_picklist_8`, `multiselect_picklist_9`, `responsibility_id`, `superior_level_1_id`, `superior_level_2_id`, `superior_level_3_id`, `superior_level_4_id`, `superior_level_5_id`, `superior_level_6_id`, `record_type_id`)
VALUES
	(7, 0, 1, '2019-08-14 10:27:52', 1, '2019-08-14 10:27:52', 'PM', 'PM', '', 1, '/1/', 7, 1, 'cf9e6bf5-3935-11e7-9629-784f43949f5b', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40ce7fa1-c996-4c2b-bdd7-ee9495893ea8');

INSERT INTO `user_positions` (`id`, `user_id`, `position_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	(7, @uid, 7, 1, 0, 1, '2019-08-14 10:27:52', 1, '2019-08-14 10:27:52');

INSERT INTO `user_position_histories` (`id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `position_id`, `user_id`, `version_id`, `position_history_id`)
VALUES
	(7, 0, 1, '2019-08-14 10:27:52', 1, '2019-08-14 10:27:52', 1, 7, @uid, 1, 7);

