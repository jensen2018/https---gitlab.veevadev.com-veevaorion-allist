-- 删除产品默认配置用户授权
delete from menus_assignments where role_id='e5d39840-f751-11e6-9ee6-68f72882c9d0' and menu_id='b85a0400-f8a8-11e6-8f8e-68f72882c9d0';
delete from page_list_assignments where role_id='e5d39840-f751-11e6-9ee6-68f72882c9d0' and page_list_id='39f3b11e-f8c0-11e6-92db-68f72882c9d0'; 
delete from page_layout_assignments where role_id='e5d39840-f751-11e6-9ee6-68f72882c9d0' and page_layout_id='1c353f40-f8cb-11e6-90af-68f72882c9d0';
-- admin授权用户管理menu
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f72882c9d1','e5d39840-f751-11e6-9ee6-68f72882c9d0','b85a0400-f8a8-11e6-8f8e-68f72882c9d0',1,0,1,now(),1,now());
-- sfe经理 授权系统管理/用户管理menu
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f728824ez9','53de9674-1da3-11e6-ac97-5cc5d4b57137','855fefb0-f8a8-11e6-b6f8-68f72882c9d0',1,0,1,now(),1,now());
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f72882c349','53de9674-1da3-11e6-ac97-5cc5d4b57137','b85a0400-f8a8-11e6-8f8e-68f72882c9d0',1,0,1,now(),1,now());
-- admin授权用户管理list
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f72882c9d1','e5d39840-f751-11e6-9ee6-68f72882c9d0','39f3b11e-f8c0-11e6-92db-68f72882c9d0',0,1,now(),1,now(),1);
-- sfe 经理 授权用户管理list
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f72882c0nv','53de9674-1da3-11e6-ac97-5cc5d4b57137','39f3b11e-f8c0-11e6-92db-68f72882c9d0',0,1,now(),1,now(),1);
-- admin授权page layout
insert into page_layout_assignments(id, role_id, object_state_id, page_layout_id, deleted, created_by, created_on, modified_by, modified_on)values
('2325b9e4-b930-11e7-b38c-02d2a924e5b1','e5d39840-f751-11e6-9ee6-68f72882c9d0','2c3e6d37-0f03-4fcd-a9d6-3eb4efe0a032','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now()),
('64b12af0-f8cf-11e6-a5e7-68f72882c9d1','e5d39840-f751-11e6-9ee6-68f72882c9d0','aac97c40-03d8-11e7-af86-68f72882c9d0','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now()),
('a0edc280-056d-11e7-b03f-68f72882c9d1','e5d39840-f751-11e6-9ee6-68f72882c9d0','aae93940-03d8-11e7-8f53-68f72882c9d0','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now());
-- sfe 经理授权page layout
insert into page_layout_assignments(id, role_id, object_state_id, page_layout_id, deleted, created_by, created_on, modified_by, modified_on)values
('2325b9e4-b930-11e7-b38c-02d2a924e3ws','53de9674-1da3-11e6-ac97-5cc5d4b57137','2c3e6d37-0f03-4fcd-a9d6-3eb4efe0a032','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now()),
('64b12af0-f8cf-11e6-a5e7-68f72882c1fv','53de9674-1da3-11e6-ac97-5cc5d4b57137','aac97c40-03d8-11e7-af86-68f72882c9d0','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now()),
('a0edc280-056d-11e7-b03f-68f72882c8az','53de9674-1da3-11e6-ac97-5cc5d4b57137','aae93940-03d8-11e7-8f53-68f72882c9d0','1c353f40-f8cb-11e6-90af-68f72882c9d0',0,1,now(),1,now());
-- sfe经理object assignment
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES
('b1d2cdc0-f8cf-11e6-b3c7-68f72882uxb1', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '1', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '1', '1', '1', '1');

-- list去除新建时间/编辑时间
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='21cef421-025b-11e7-90c5-34f39ab71988';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='d6d8479e-025a-11e7-80e3-34f39ab71988';
-- list添加员工编号、最后登录时间
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d6d8479e-025a-11e7-80e3-34f39ab71899', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', '4e20f1ae-4115-11e7-9f87-c85b76d4d416', '员工编号', '8', '120', '0', '0', '0', '', '0', '1', now(), '1', now());
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) 
VALUES ('0825eaca-272f-4c75-9ffc-256f5a8bb240', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'last_time', '最后登录时间', '', 'custom', 'refer', 'all', 'both', '0', '1', '2018-07-24 07:56:47', '1', '2018-07-24 07:56:47', '{\"refer_field\": {\"path\": \"user.last_login\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d6d8479e-025a-11e7-80e3-34f39ab71510', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', '0825eaca-272f-4c75-9ffc-256f5a8bb240', '最后登录时间', '9', '120', '0', '0', '0', '', '1', '1', '2017-04-14 11:51:22', '1', '2019-08-09 03:42:35');
-- list更改手机号排序
UPDATE `page_list_fields` SET `order`='10' WHERE `id`='baff2040-0254-11e7-80e8-34f39ab71988';
-- list创建邮箱字段、入职时间、离职时间
UPDATE `object_fields` SET `label`='邮箱' WHERE `id`='76188eb2-6ac2-11e7-a3dd-c85b76d4d416';
UPDATE `object_database_columns` SET `used`='1' WHERE `id`='76188eb1-6ac2-11e7-b315-c85b76d4d416';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('baff2040-0254-11e7-80wb-34f39ab71988', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', '76188eb2-6ac2-11e7-a3dd-c85b76d4d416', '邮箱', '11', '120', '0', '0', '0', '0', '1', '2017-04-14 11:51:22', '1', '2019-08-09 06:58:06');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d6d8479e-025a-11e7-80e3-34f39ab73qwa', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', 'bf7edd6e-6aca-11e7-a95d-c85b76d4d416', '入职时间', '12', '120', '0', '0', '0', '', '0', '1', '2017-04-14 11:51:22', '1', '2019-08-09 03:42:35');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d6d8479e-025a-11e7-80e3-34f39ab735av', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', 'e9a7680f-6aca-11e7-a5a8-c85b76d4d416', '离职时间', '13', '120', '0', '0', '0', '', '0', '1', '2017-04-14 11:51:22', '1', '2019-08-09 03:42:35');


-- layout调整排序
UPDATE `page_layout_fields` SET `order`='6' WHERE `id`='3be36acf-f8ce-11e6-af68-68f72882c9d0';
UPDATE `page_layout_fields` SET `order`='7' WHERE `id`='3bd4c4cf-f8ce-11e6-9a09-68f72882c9d0';
-- 添加员工编号
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d1', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', '4e20f1ae-4115-11e7-9f87-c85b76d4d416', '员工编号', '8', '6', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0');
UPDATE `page_layout_fields` SET `order`='9' WHERE `id`='3bf1c2b0-f8ce-11e6-a06d-68f72882c9d0';
UPDATE `page_layout_fields` SET `deleted`='0' WHERE `id`='3bd4c4cf-f8ce-11e6-9a09-68f72882c9d0';
-- 添加邮箱 修改人  修改时间 入职时间 离职时间
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d2', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', '76188eb2-6ac2-11e7-a3dd-c85b76d4d416', '邮箱', '10', '6', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2019-08-09 07:35:25', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d3', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', '4d2272c0-f8ae-11e6-a6a2-68f72882c9d0', '修改人', '13', '6', '0', '1', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2019-08-09 07:35:25', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d4', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', '4da36291-f8ae-11e6-9a04-68f72882c9d0', '最后修改时间', '14', '6', '0', '1', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2019-08-09 07:35:25', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d5', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', 'bf7edd6e-6aca-11e7-a95d-c85b76d4d416', '入职时间', '11', '6', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2019-08-09 07:35:25', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72882c9d6', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', 'e9a7680f-6aca-11e7-a5a8-c85b76d4d416', '离职时间', '12', '6', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2019-08-09 07:35:25', '0');
UPDATE `page_layout_fields` SET `is_readonly`='1' WHERE `id`='3bd4c4cf-f8ce-11e6-9a09-68f72882c9d0';
UPDATE `page_layout_fields` SET `disable_click`='1' WHERE `id`='3bf1c2b0-f8ce-11e6-a06d-68f72882c9d3';

-- 去除初始授权，添加导入/导出权限
delete from role_to_object_permissions where role_id='e5d39840-f751-11e6-9ee6-68f72882c9d0' and object_id='c510bfc0-4351-11e6-a85e-5cc5d4d378cb';
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('b1d2cdc0-f8cf-11e6-b3c7-68f72882c9d1', 'e5d39840-f751-11e6-9ee6-68f72882c9d0', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '1', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '1', '1', '0', '0');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('ecb38391-f9a0-11e6-818e-68f72882c9ec', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', '66cd3b3a-e36d-42fa-939b-752afe475bb9', '2', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '0', '0', '0');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) 
VALUES ('ecb38391-f9a0-11e6-818e-68f72882c1qa', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', 'ae2631c8-7960-41bb-a35e-29a07d29d8a1', '3', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '0', '0', '0');
-- 配置导入权限/字段
INSERT INTO `import_templates` (`deleted`, `created_on`, `modified_on`, `id`, `configurations`, `instructions`, `created_by`, `modified_by`, `object_id`)
VALUES(0, '2019-07-17 07:10:00.798379', '2019-07-17 07:10:00.798432', '9b86c838-1e9c-4adf-ad37-4c55e722805a', NULL, '导入说明###1. 请按所示列提供用户名称、账号、状态、角色、微信号、手机号、员工号、部门、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U', 1, 1, 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb');
INSERT INTO `import_template_assignments` (`deleted`, `created_on`, `modified_on`, `id`, `configurations`, `created_by`, `import_template_id`, `modified_by`, `object_record_type_id`, `role_id`)
VALUES(0, '2019-07-17 07:10:00.801072', '2019-07-17 07:10:00.801111', '776c3f58-b44c-4637-9f08-d2d39a746a5b', NULL, 1, '9b86c838-1e9c-4adf-ad37-4c55e722805a', 1, NULL, 'e5d39840-f751-11e6-9ee6-68f72882c9d0');
INSERT INTO `import_template_assignments` (`deleted`, `created_on`, `modified_on`, `id`, `configurations`, `created_by`, `import_template_id`, `modified_by`, `object_record_type_id`, `role_id`)
VALUES(0, now(), now(), '776c3f58-b44c-4637-9f08-d2d39a744qax', NULL, 1, '9b86c838-1e9c-4adf-ad37-4c55e722805a', 1, NULL, '53de9674-1da3-11e6-ac97-5cc5d4b57137');
-- 更改导入提示文字
UPDATE `import_templates` SET `instructions`='导入说明###1.请按所示列提供用户名称、账号、员工编号、状态、角色、微信号、手机号、邮箱、入职时间、离职时间、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U' WHERE `id`='9b86c838-1e9c-4adf-ad37-4c55e722805a';

INSERT INTO `customer_map_column` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `temp_column_name`, `type`, `object_id`, `object_field_id`, `order`, `is_key`, `label`, `mandatory`, `object_record_type_id`, `sample_value`, `import_template_id`)
VALUES
(0, 1, now(), 1, now(), 'field1', 'custom', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '76188eb2-6ac2-11e7-a3dd-c85b76d4d416', 8, 0, '邮箱', 0, NULL, 'changle@veeva.com', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '4e20f1ae-4115-11e7-9f87-c85b76d4d416', 3, 0, '员工编号', 1, NULL, '', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'ff738e9e-4404-11e6-a10e-5cc5d4d378cb', 7, 0, '手机号', 0, NULL, '', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'ff402291-4404-11e6-950c-5cc5d4d378cb', 6, 0, '微信号', 1, NULL, 'changle', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '4b84a140-f8ae-11e6-bf73-68f72882c9d0', 5, 0, '角色', 1, NULL, 'admin', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'db6e0ee1-0538-11e7-b868-68f72882c9d0', 4, 0, '状态', 1, NULL, '启用', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '49f036de-440a-11e6-941f-5cc5d4d378cb', 2, 1, '账号', 1, NULL, 'changle', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'ff29b461-4404-11e6-8bcf-5cc5d4d378cb', 1, 0, '用户名称', 1, NULL, '常乐', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'bf7edd6e-6aca-11e7-a95d-c85b76d4d416', 9, 0, '入职时间', 0, NULL, '2019-08-12', '9b86c838-1e9c-4adf-ad37-4c55e722805a'),
(0, 1, now(), 1, now(), NULL, 'standard', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'e9a7680f-6aca-11e7-a5a8-c85b76d4d416', 10, 0, '离职时间', 0, NULL, '2019-09-12', '9b86c838-1e9c-4adf-ad37-4c55e722805a');

-- trigger 离职时间晚于入职时间
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `version`) VALUES ('h0052552-e0e1-11e8-b6c8-02f90e0f3wrb', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', '用户管理离职时间验证', '用户管理离职时间不得早于入职时间', 'trigger', 'from orionbase.common import models\nfrom django.utils.timezone import utc, localtime\nimport datetime\n\nif instance.entry_date and instance.leave_date:\n    if type(instance.entry_date) == datetime.date:\n        start_time = instance.entry_date\n    else:\n        start_time = datetime.datetime.strptime(instance.entry_date, \'%Y-%m-%d\').date()\n\n    if type(instance.leave_date) == datetime.date:\n        leave_time = instance.leave_date\n    else:\n        leave_time = datetime.datetime.strptime(instance.leave_date, \'%Y-%m-%d\').date()\n\n    if leave_time < start_time:\n        message = \'离职时间不能早于入职时间\'\n        raise create_validation_trigger_rule_errors(message)', '', '0', '1', '2019-06-24 11:08:42', '1', '2019-10-15 13:27:29', 'pre_save', '1', 'custom', 'usermanage leave_date rule', '1');
