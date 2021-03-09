-- 增加产品经理角色
INSERT INTO `roles` (`id`, `name`, `type`, `source`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b72453fc-efdb-11e9-b9aa-0298a739deb2', '产品经理', '', 'custom', '0', '1', '2019-10-16 10:33:29', '1', '2020-06-16 07:04:03');
-- 市场总监角色
UPDATE `roles` SET `name` = '市场总监' WHERE (`id` = 'b72453fc-efdb-11e9-b9aa-0298a739dec0');


-- 启用生效时间字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'ebf3c5eb-6ac6-11e7-9203-c85b76d4d416');
UPDATE `object_fields` SET `label` = '生效时间' WHERE (`id` = 'ebf3c5ec-6ac6-11e7-a150-c85b76d4d416');

-- page_list字段
UPDATE `page_list_fields` SET `label` = '企业账号' WHERE (`id` = '58f44980-f8c1-11e6-b05a-68f72882c9d0');
UPDATE `page_list_fields` SET `order` = '12' WHERE (`id` = 'd6d8479e-025a-11e7-80e3-34f39ab73qwa');
UPDATE `page_list_fields` SET `order` = '13' WHERE (`id` = 'd6d8479e-025a-11e7-80e3-34f39ab735av');
UPDATE `page_list_fields` SET `order` = '14' WHERE (`id` = 'd03d0f4a-5457-462a-81fd-0fd59815f3be');
UPDATE `page_list_fields` SET `order` = '15' WHERE (`id` = '38f73ee6-8b99-4c12-937b-0704c7d81f59');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('baff2040-0254-11e7-1624-34f39ab71988', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', 'ebf3c5ec-6ac6-11e7-a150-c85b76d4d416', '生效时间', '11', '120', '1', '1', '0', '0', '1', '2017-04-14 11:51:22', '1', '2020-07-20 10:54:42');

-- page_layout字段
UPDATE `page_layout_fields` SET `label` = '企业账号' WHERE (`id` = '3be36acf-f8ce-11e6-af68-68f72882c9d0');
UPDATE `page_layout_fields` SET `order` = '13' WHERE (`id` = '3bf1c2b0-f8ce-11e6-a06d-68f72882c9d5');
UPDATE `page_layout_fields` SET `order` = '14' WHERE (`id` = '3bf1c2b0-f8ce-11e6-a06d-68f72882c9d6');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('3bf1c2b0-f8ce-11e6-a06d-68f72881631', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', 'ebf3c5ec-6ac6-11e7-a150-c85b76d4d416', '生效时间', '12', '6', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-20 11:02:01', '0', '0', '0');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = '303d5b26-4d14-450b-998e-99a2537e3f74');
UPDATE `page_layout_fields` SET `order` = '8' WHERE (`id` = '6e49e66a-155b-40ab-97a0-62b6250fd005');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = '3bd4c4cf-f8ce-11e6-9a09-68f72882c9d0');
UPDATE `page_layout_fields` SET `is_readonly` = '1' WHERE (`id` = '3be36acf-f8ce-11e6-af68-68f72882c9d0');
UPDATE `page_layout_fields` SET `is_readonly` = '1' WHERE (`id` = '303d5b26-4d14-450b-998e-99a2537e3f74');
UPDATE `page_layout_fields` SET `is_readonly` = '1' WHERE (`id` = '6e49e66a-155b-40ab-97a0-62b6250fd005');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '3be36acf-f8ce-11e6-af68-68f72882c9d0');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '303d5b26-4d14-450b-998e-99a2537e3f74');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '6e49e66a-155b-40ab-97a0-62b6250fd005');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '3bd4c4cf-f8ce-11e6-9a09-68f72882c9d0');

-- 权限
UPDATE `role_to_object_permissions` SET `allow_delete` = '1' WHERE (`id` = 'b1d2cdc0-f8cf-11e6-b3c7-68f72882uxb1');
UPDATE `object_actions` SET `is_need_update` = '1' WHERE (`id` = '8afa4cb0-f978-11e6-a96a-68f72882c9d0');

-- 导入
UPDATE `import_templates` SET `instructions` = '导入说明###1.请按所示列提供用户名称、账号、员工编号、状态、角色、企业账号、手机号、邮箱、生效时间、入职时间、离职时间、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U' WHERE (`id` = '9b86c838-1e9c-4adf-ad37-4c55e722805a');
UPDATE `customer_map_column` SET `label` = '企业账号' WHERE (`id` = '25');
UPDATE `customer_map_column` SET `order` = '10' WHERE (`id` = '30');
UPDATE `customer_map_column` SET `order` = '11' WHERE (`id` = '31');
INSERT INTO `customer_map_column` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `temp_column_name`, `type`, `object_id`, `object_field_id`, `order`, `is_key`, `label`, `mandatory`, `sample_value`, `import_template_id`) VALUES ('0', '1', '2020-06-09 09:35:00.000000', '1', '2020-06-09 09:35:00.000000', 'field2', 'custom', 'c510bfc0-4351-11e6-a85e-5cc5d4d378cb', 'ebf3c5ec-6ac6-11e7-a150-c85b76d4d416', '9', '0', '生效时间', '0', '2020-08-01', '9b86c838-1e9c-4adf-ad37-4c55e722805a');
