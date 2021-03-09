-- 会议职务 改为 讲者描述及职务
-- select * from object_fields  where id='8d2c1c33-0d4f-444e-9785-1d4aa39e92db';--  like '%会议职务%';
 update object_fields set label = '讲者描述及职务' where Id = '8d2c1c33-0d4f-444e-9785-1d4aa39e92db';

-- 讲者管理 3655bdd0-c5b6-11ea-afad-a525c38fbwpz
-- 大区总监授权讲者管理模块功能  20228999-b5ff-11ea-aab5-0215c63fce1a
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a8d935a8-2329-11eb-bc49-0215c63fce1a', '20228999-b5ff-11ea-aab5-0215c63fce1a', '3655bdd0-c5b6-11ea-afad-a525c38fbwpz', '13', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');
-- INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('0b9ed567-529a-4891-a2a6-657b13381c74', '20228999-b5ff-11ea-aab5-0215c63fce1a', '627deed5-df83-11e9-b9aa-0298a876dwpz', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('819e274f-233a-11eb-bc49-0215c63fce1a', '20228999-b5ff-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', '2020-06-09 09:35:03', '1', '2020-06-09 09:35:03', '1');

-- 讲者管理 3655bdd0-c5b6-11ea-afad-a525c38fbwpz
-- 营销公司负责人 授权讲者管理模块功能  72e462a0-b600-11ea-aab5-0215c63fce1a 营错公司负责人已经有讲者管理权限，跳过
/*
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1405df9f-ece2-11ea-bc49-0215c63fc9ci', '72e462a0-b600-11ea-aab5-0215c63fce1a', '3655bdd0-c5b6-11ea-afad-a525c38fbwpz', '13', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('0b9ed567-529a-4891-a2a6-657b13381c74', '72e462a0-b600-11ea-aab5-0215c63fce1a', '627deed5-df83-11e9-b9aa-0298a876dwpz', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('819e274f-233a-11eb-bc49-0215c63fce1a', '72e462a0-b600-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', '2020-06-09 09:35:03', '1', '2020-06-09 09:35:03', '1');
*/
-- 所有微信端拜访报告中在view界面添加创建人字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `disable_click`) VALUES ('3ba707e5-2361-11eb-bc49-0215c63fce1a', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', 'field', '53700730-7408-11e6-b174-5cc5d4b571d2', '创建人', '13', '6', '0', '1', 'view', '0', '1', '2019-09-06 09:24:18', '1', '2020-08-19 12:44:30', '0', '0', '0', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `disable_click`) VALUES ('17ac8555-2363-11eb-bc49-0215c63fce1a', '58bb2940-7408-11e6-b9e1-5cc5d4b571d2', 'field', '53700730-7408-11e6-b174-5cc5d4b571d2', '创建人', '13', '6', '0', '1', 'view', '0', '1', '2019-09-06 09:24:18', '1', '2020-08-19 12:44:30', '0', '0', '0', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `disable_click`) VALUES ('2b36d3a2-2363-11eb-bc49-0215c63fce1a', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', 'field', '53700730-7408-11e6-b174-5cc5d4b571d2', '创建人', '13', '6', '0', '1', 'view', '0', '1', '2019-09-06 09:24:18', '1', '2020-08-19 12:44:30', '0', '0', '0', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `disable_click`) VALUES ('32186c68-2363-11eb-bc49-0215c63fce1a', 'a04c4491-bcee-11e6-a8ab-5cc5d4d378cb', 'field', '53700730-7408-11e6-b174-5cc5d4b571d2', '创建人', '13', '6', '0', '1', 'view', '0', '1', '2019-09-06 09:24:18', '1', '2020-08-19 12:44:30', '0', '0', '0', '0', '1');

-- 营销公司负责人添加工作tab，支持审批操作 72e462a0-b600-11ea-aab5-0215c63fce1a：
UPDATE `menus_assignments` SET `deleted` = '0' WHERE (`id` = 'hxf43ac0-wzh9-11e7-a543-5cc5d4d378c3'); -- 我发起的
UPDATE `menus_assignments` SET `deleted` = '0' WHERE (`id` = 'hxf43ac0-wzh9-11e7-a543-5cc5d4d378c2'); -- 我的待办


-- 市场部角色讲者管理页面点击讲者查看详细信息，添加医生详情查看权限   市场部 就是市场总监和市场经理两个角色 其中市场经理已经有了，我们只需要给 市场总监加上就行了
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b2b5614e-23be-11eb-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('4c07d79e-23c1-11eb-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '0', '0', '0', '0', '1', '2020-07-06 11:54:48', '1', '2020-08-27 13:18:01', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('cc97639d-23c3-11eb-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1'); -- 医生详情页面权限的子页面：医生分级 市场总监和市场经理
--  医院详情页面权限 市场总监
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5f8ab8c1-24b3-11eb-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');



-- 营销公司负责人开放报表，同DSM (地区经理)，需要进行验证是否支持。
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'e4ede646-23ed-11eb-bc49-0215c63fce1a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'homepage');

-- CEO角色报表同DSM一致，需验证
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', '94fa27e5-23ee-11eb-bc49-0215c63fce1a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'homepage');

-- CEO主页面菜单只显示：会议管理，电子资料，讲者管理
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '557b230f-7350-488d-91f4-7484f4aab66d');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'e640e607-a32d-4aa9-b865-d75a7cf0f2e5');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '80b6bb61-0c17-4e6b-8987-f30ec52d8fc6');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '4c1d5945-b0c0-4c4d-946e-ee9c4304d45c');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'c7e3c6e7-41fd-498e-969d-45b21543c269');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '8f0df1a0-b290-4b56-926c-921ed12c2a43');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'aca4ce2a-3b56-4df2-8b00-0bcd17b4958f');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('721a930f-4bab-4d12-91bb-99989e2c723c', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '3655bdd0-c5b6-11ea-afad-a525c38fbwpz', '1', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('7b00c9a7-1adc-4b9c-aaa5-336987216c41', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '627deed5-df83-11e9-b9aa-0298a739dwpz', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1c86ea3f-b6a0-4342-bffd-d2ffbbd36eb8', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00');

-- 市场总监添加电子资料模块
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5e54227c-d2e3-4d09-a5c8-e4874f0f1c30', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a2a193f0-bb99-11ea-ab68-4f37c5a3e901', '13', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('4dbd7b30-e53f-4d61-9670-49932ed513b3', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'b2b23f0a-a1f6-443a-a91a-d7c0509ad411', '1', '1', '1', '1', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a03c59aa-54c8-4b92-93b3-b994b93c8b67', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '1', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `tips`) VALUES ('6db4d6ab-1886-476f-bc85-65b17d32f16f', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', 'null');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('246a696e-5c7b-4d0a-bc53-95e51c5d869e', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '774911fe-d989-473d-86fa-693c26686239', '0', '1', '2020-11-04 20:00:00', '1', '2020-11-04 20:00:00', '1');

-- 区域市场经理创建会议时，可以支持选择产品（read all）
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '5b76d2b1-46d1-4a35-9561-14b0646eeb72');

-- 市场总监在创建会议时支持选择产品（read all）
UPDATE `role_to_object_permissions` SET `allow_create` = '1' WHERE (`id` = '632b7a1e-efdc-11e9-b9aa-0298a739dec0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('0d9362f4-716f-4c52-9b89-ab62481945d3', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'eabf78a1-6b3e-11e6-9f28-5cc5d4d378cb', '0', '0', '0', '0', '0', '1', '2020-11-09 00:00:00', '1', '2020-11-09 00:00:00', '0', '0', '1', '0', '0', '0', '0', '0');
UPDATE `role_to_object_permissions` SET `allow_update` = '1', `allow_delete` = '1', `allow_update_attachment` = '1' WHERE (`id` = '632b7a1e-efdc-11e9-b9aa-0298a739dec0');
UPDATE `role_to_object_permissions` SET `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = 'd901da95-f0b7-11e9-b9aa-0298a739dec0');
UPDATE `role_to_object_permissions` SET `allow_update_all` = '1', `allow_update_attachment` = '1', `allow_terminate_approval` = '0', `allow_modify_approver` = '0', `allow_create_page_list` = '0' WHERE (`id` = '2f1dcfa5-f3dc-11e9-b9aa-0298a739dec0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('860c6a3e-36a0-4e07-9dc2-c4b691f33e3d', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '87d3c319-598a-4fe2-b391-21b8bbcae4c7', '1', '1', '1', '1', '0', '1', '2020-11-11 00:00:00', '1', '2020-11-11 00:00:00', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('43bfab38-2aa0-43a8-bd89-da14d796b100', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '81aee6b5-2a63-4563-aa5a-1a880ffb0dac', '1', '1', '1', '1', '0', '1', '2020-11-11 00:00:00', '1', '2020-11-11 00:00:00', '0', '1', '0', '0', '0', '0', '0', '0');

-- CEO角色添加看板模块
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('034f9846-24f8-11eb-bc49-0215c63fce1a', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', '2020-06-27 06:10:09', '1', '2020-07-01 13:13:09', 'null');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', 'a65e501c-2560-11eb-bc49-0215c63fce1a', '1', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'bf5abc67-2560-11eb-bc49-0215c63fce1a', '1', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'c446e1ae-2560-11eb-bc49-0215c63fce1a', '2', 'd738decc-ff98-11e9-b9aa-0298a739dec0', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-07-15 14:23:49.726568', 'c9b57f08-2560-11eb-bc49-0215c63fce1a', '0', 'dfc3e782-0129-11ea-b9aa-0298a739dec0', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');

-- 除病人教育会和科室会之外的会议类型均添加第三方费用 已经是的，不需要改了。

-- 营销公司负责人添加"日程"功能  权限
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('ea0d93c5-258d-11eb-bc49-0215c63fce1a', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'c82410cc-48a1-11e6-bbd1-5cc5d4d378cb', '1', '0', '1', '2020-11-13 20:20:20', '1', '2020-11-13 20:20:20', 'null');

-- 拜访计划页面添加创建人字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('0df580ae-2595-11eb-bc49-0215c63fce1a', '61085cf7-4048-460e-b59c-38c53785e79a', 'field', 'cbfef470-873d-4306-ae2f-6394a5e519d2', '创建人', '7', '6', '0', '1', 'view', '0', '1', '2020-11-13 20:20:20', '1', '2020-11-13 20:20:20', '0', '0');
UPDATE `page_layout_fields` SET `disable_click` = '1' WHERE (`id` = '0df580ae-2595-11eb-bc49-0215c63fce1a');


-- 销售主管协访计划不需要去完成按钮
UPDATE `role_to_object_permissions` SET `allow_update` = '0' WHERE (`id` = 'b93a1165-86dd-4f6e-a61a-cf65592af981');

-- 市场总监增加会议类型 同Local MKT
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d2b1907c-d970-415f-b28b-53dd7d948f67', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '8e4c3440-e30a-4708-8bd6-69a7172a78e0', '0', '0', '1', '2020-11-14 00:00:00', '1', '2020-11-14 00:00:00');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('994323c4-1920-49c3-8460-b8f5a9a25348', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'f9bafb0b-f5c5-4e0d-9ead-79a932aef6c0', '0', '0', '1', '2020-11-14 00:00:00', '1', '2020-11-14 00:00:00');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('10130b98-b5ba-4f89-a1ad-0e96122f9bc2', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '5cff6d54-6175-4c41-96ac-2fad8b8461c0', '0', '0', '1', '2020-11-14 00:00:00', '1', '2020-11-14 00:00:00');

