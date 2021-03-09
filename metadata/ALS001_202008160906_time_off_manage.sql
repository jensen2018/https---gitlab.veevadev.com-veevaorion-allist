-- -----------------------------------------------------微信端 Start-----------------------------------------------------------
-- 启用字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'cd280cd8-8a11-44de-ba8c-87bd96fc1433');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '0f82db8a-ff2a-422e-a528-64bf13c3114b');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '07146c7e-8e30-4f16-8d7d-aaa01993feac');
UPDATE `object_fields` SET `name` = 'cs_description', `label` = '描述' WHERE (`id` = 'f584782e-5f22-4415-8886-befb0f3bb3d1');
UPDATE `object_fields` SET `name` = 'cs_postion_id', `label` = '岗位ID' WHERE (`id` = '2f7614ed-1d98-478d-be7d-9d95dfc44583');
UPDATE `object_fields` SET `name` = 'cs_postion_code', `label` = '岗位编码' WHERE (`id` = '6369b4db-5c31-4951-bd20-e2650e8784dd');

-- page_layout字段-待提交
UPDATE `page_layout_fields` SET `order` = '2' WHERE (`id` = '6a9cba39-4ee8-49f8-909e-66d8793921ca');
UPDATE `page_layout_fields` SET `order` = '3' WHERE (`id` = 'b5165393-3c89-47da-9658-202aa4430ef3');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = '30d51a1d-2543-4906-881c-cea634c9fce0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '311798ea-f105-46ab-a010-d88bdbb078c1');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '30d51a1d-2543-4906-881c-cea634c9fce0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b5165393-3c89-47da-9658-202aa4434726', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', 'field', 'f584782e-5f22-4415-8886-befb0f3bb3d1', '区域外时间描述', '4', '12', '0', '0', 'both', '0', '1', '2017-09-29 09:52:02', '1', '2020-06-22 13:45:58');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('30d51a1d-2543-4906-881c-cea634c95035', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', 'field', '6fb0a2a0-a289-11e7-8d59-02d2a924e5ba', '申请时间', '8', '12', '0', '1', 'view', '0', '1', '2019-06-24 11:23:44', '1', '2020-06-22 13:46:36', '1');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = 'b5165393-3c89-47da-9658-202aa4434726');
-- page_layout字段-已提交
UPDATE `page_layout_fields` SET `order` = '2' WHERE (`id` = 'e2908703-0a19-40a5-9afb-7dae7d0a54f4');
UPDATE `page_layout_fields` SET `order` = '3' WHERE (`id` = '03082c80-af64-480e-a343-cdb919a449e1');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = '3bfbce87-737a-4e68-b6e2-2e757a10c45c');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'bdf0b871-93f7-4ff5-8a3e-17ed3936efb5');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('03082c80-af64-480e-a343-cdb919a40342', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', 'field', 'f584782e-5f22-4415-8886-befb0f3bb3d1', '区域外时间描述', '4', '12', '0', '0', 'view', '0', '1', '2017-12-28 11:14:26', '1', '2020-06-22 14:03:30');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('30d51a1d-2543-4906-881c-cea634c90417', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', 'field', '6fb0a2a0-a289-11e7-8d59-02d2a924e5ba', '申请时间', '8', '12', '0', '1', 'view', '0', '1', '2019-06-24 11:23:44', '1', '2020-06-22 13:46:36', '1');

-- page_list字段
UPDATE `page_list_fields` SET `label` = '申请状态', `order` = '1' WHERE (`id` = 'c3ee4a05-6772-421b-8392-ee2bb03d21d5');
UPDATE `page_list_fields` SET `order` = '4' WHERE (`id` = '3230fe2e-7d60-403c-bbb9-83a924d706c9');
UPDATE `page_list_fields` SET `order` = '5' WHERE (`id` = 'bb5ba599-c9d5-42bc-8b00-7d576f5799a8');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '4771ee57-a801-41ac-ae1b-e791d6d11229');
UPDATE `page_list_fields` SET `order` = '2' WHERE (`id` = 'e1d5cc20-3507-4311-b674-a36f62fe5695');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e1d5cc20-3507-4311-b674-a36f62fe0937', '55efe00b-fa86-4b3a-88c4-01580cfb253d', 'f584782e-5f22-4415-8886-befb0f3bb3d1', '区域外时间描述', '3', '120', '0', '0', '0', '0', '1', '2017-09-29 09:52:01', '1', '2020-06-22 14:08:37');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4771ee57-a801-41ac-1122-e791d6d11229', '55efe00b-fa86-4b3a-88c4-01580cfb253d', '6fb0a2a0-a289-11e7-8d59-02d2a924e5ba', '申请时间', '7', '120', '1', '1', '1', '0', '1', '2017-09-29 09:52:01', '1', '2017-09-29 09:52:01');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '4771ee57-a801-41ac-3wtc-e791d6d11229');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '4771ee57-a801-41ac-1122-e791d6d11229');
UPDATE `page_list_fields` SET `allow_filter` = '1', `allow_sort` = '1' WHERE (`id` = 'e1d5cc20-3507-4311-b674-a36f62fe0937');
UPDATE `page_list_fields` SET `allow_filter` = '0', `allow_sort` = '0' WHERE (`id` = 'c3ee4a05-6772-421b-8392-ee2bb03d21d5');
UPDATE `page_list_fields` SET `allow_filter` = '1' WHERE (`id` = '4771ee57-a801-41ac-3wtc-e791d6d11229');
UPDATE `page_list_fields` SET `allow_filter` = '1' WHERE (`id` = '4771ee57-a801-41ac-1122-e791d6d11229');

-- page_list倒序
UPDATE `page_lists` SET `sort_field` = '6fb0a2a0-a289-11e7-8d59-02d2a924e5ba' WHERE (`id` = '55efe00b-fa86-4b3a-88c4-01580cfb253d');

-- 通过trigger保存岗位信息
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `version`) VALUES ('cff3ab18-0f28-11ea-ae33-0221860e9b7e', '6fa1a44e-a289-11e7-8d59-02d2a924e5ba', 'tot_add_position_code', '创建TOT时保存用户主岗位', 'trigger', 'from orionbase.common import models\nif instance and instance.owner and is_create:\n    user_positions = models.UserPositions.advance_objects.filter(user__id=instance.owner.id,is_default=1)\n    for up in user_positions:\n        instance.text_2_1=up.position.id\n        instance.text_3= up.position.code', '', '0', '1', '2019-06-24 11:08:57', '1', '2020-01-13 08:40:25', 'pre_save_page', '1', 'custom', 'tot_create_position_code', '1');

-- 微信端授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a047465a-a840-4ec6-914d-a65f3851926e', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '791a5f36-72cd-4419-91f1-39febdf1e029', '7', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('a047465a-a841-4ec6-914d-a65f3851926e', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '791a5f36-72cd-4419-91f1-39febdf1e029', '7', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('a047465a-a842-4ec6-914d-a65f3851926e', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '791a5f36-72cd-4419-91f1-39febdf1e029', '7', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02');
UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '6fea0869-0f42-49eb-aa8c-a7b872c0aed4');
UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = 'f5177a76-dc8b-4e6c-82fc-3b9a3a59e79b');
UPDATE `role_to_object_permissions` SET `allow_create` = '0', `allow_update` = '0', `allow_delete` = '0' WHERE (`id` = '94c24c98-a8a6-4387-b02b-fe6cc8701acm');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES
('02f78dd4-44a1-42f9-98dd-6e32529d8b13', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '55efe00b-fa86-4b3a-88c4-01580cfb253d', '0', '1', '2019-11-01 07:46:27', '1', '2019-11-01 07:46:27', '1'),
('02f78dd4-44a2-42f9-98dd-6e32529d8b13', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '55efe00b-fa86-4b3a-88c4-01580cfb253d', '0', '1', '2019-11-01 07:46:27', '1', '2019-11-01 07:46:27', '1'),
('02f78dd4-44a3-42f9-98dd-6e32529d8b13', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '55efe00b-fa86-4b3a-88c4-01580cfb253d', '0', '1', '2019-11-01 07:46:27', '1', '2019-11-01 07:46:27', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fab433b2-45b1-4cfc-b65d-e380807e6c7d', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b2-4cfc-b65d-e380807e6c7d', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b3-4cfc-b65d-e380807e6c7d', '20228999-b5ff-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b4-4cfc-b65d-e380807e6c7d', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b5-4cfc-b65d-e380807e6c7d', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b6-4cfc-b65d-e380807e6c7d', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b7-4cfc-b65d-e380807e6c7d', '72e462a0-b600-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b8-4cfc-b65d-e380807e6c7d', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02'),
('fab433b2-45b9-4cfc-b65d-e380807e6c7d', '02ebda16-b601-11ea-aab5-0215c63fce1a', '6fa53cbc-a289-11e7-8d59-02d2a924e5ba', '6a8e33fd-3bae-454a-bfd0-4650c44b6503', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7186824a-46c1-4c01-af32-5e0b91cfd4d1', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c2-4c01-af32-5e0b91cfd4d1', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c3-4c01-af32-5e0b91cfd4d1', '20228999-b5ff-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c4-4c01-af32-5e0b91cfd4d1', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c5-4c01-af32-5e0b91cfd4d1', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c6-4c01-af32-5e0b91cfd4d1', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c7-4c01-af32-5e0b91cfd4d1', '72e462a0-b600-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c8-4c01-af32-5e0b91cfd4d1', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04'),
('7186824a-46c9-4c01-af32-5e0b91cfd4d1', '02ebda16-b601-11ea-aab5-0215c63fce1a', '6fa84682-a289-11e7-8d59-02d2a924e5ba', '763ce287-96ba-4d97-97fa-8fa9b0a08a9f', '0', '1', '2017-10-20 07:37:04', '1', '2017-10-20 07:37:04');

-- -----------------------------------------------------电脑端 Start-----------------------------------------------------------
-- page_list字段
UPDATE `page_list_fields` SET `label` = '申请状态', `order` = '1' WHERE (`id` = '6b069816-87f6-4dd4-a10c-eedfaac5cbb8');
UPDATE `page_list_fields` SET `order` = '2' WHERE (`id` = 'a20f5567-5198-4300-8162-584811e00665');
UPDATE `page_list_fields` SET `order` = '4' WHERE (`id` = 'fd22d23e-48a0-48ff-8595-0b14d26fa03a');
UPDATE `page_list_fields` SET `order` = '6' WHERE (`id` = 'fd22d23e-48a0-3olm-8595-0b14d26fa03a');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'b18e1813-45ec-4eb9-b8cf-6830ac7c5d93');
UPDATE `page_list_fields` SET `label` = '申请人姓名' WHERE (`id` = 'fd22d23e-48a0-3olm-8595-0b14d26fa03a');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('fd22d23e-48a0-3olm-8595-0b14d26f4301', '40fac1de-51f5-4bb4-9726-794c120aca4b', '6fb0a2a0-a289-11e7-8d59-02d2a924e5ba', '申请提交时间', '7', '120', '1', '1', '1', '0', '1', '2017-09-29 09:52:02', '1', '2020-06-22 14:43:25', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b18e1813-45ec-4eb9-b8cf-6830ac7c4902', '40fac1de-51f5-4bb4-9726-794c120aca4b', '6369b4db-5c31-4951-bd20-e2650e8784dd', '申请人岗位编码', '5', '120', '1', '1', '1', '0', '1', '2017-09-29 09:52:02', '1', '2020-06-22 14:42:45');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'b18e1813-45ec-4eb9-b8cf-6830ac7c4902');
UPDATE `page_list_fields` SET `order` = '8', `deleted` = '0' WHERE (`id` = 'b18e1813-45ec-4eb9-b8cf-6830ac7c5d93');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'fd22d23e-48a0-3olm-8595-0b14d26f4301');
UPDATE `page_list_fields` SET `label` = '申请人' WHERE (`id` = 'fd22d23e-48a0-3olm-8595-0b14d26fa03a');
UPDATE `page_list_fields` SET `order` = '7' WHERE (`id` = '0ba8d32c-c455-4636-875b-f2aff2ad3b15');
UPDATE `page_list_fields` SET `width` = '140' WHERE (`id` = 'b18e1813-45ec-4eb9-b8cf-6830ac7c5d93');
UPDATE `page_list_fields` SET `width` = '140' WHERE (`id` = '0ba8d32c-c455-4636-875b-f2aff2ad3b15');

-- page_list默认排序
UPDATE `page_lists` SET `sort_field` = '6369b4db-5c31-4951-bd20-e2650e8784dd', `is_desc` = '0' WHERE (`id` = '40fac1de-51f5-4bb4-9726-794c120aca4b');

-- 电脑端授权
-- 活动
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('04a1ee3d-d2ed-11e9-b9aa-0298a739da58', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'dd8e572e-1d93-11e6-b5d0-5cc5d4d378cb', '5', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('04a1ee3d-d2ed-11e9-b9aa-0298a739da59', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'dd8e572e-1d93-11e6-b5d0-5cc5d4d378cb', '5', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
-- 区域外时间管理
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('04a1ee3d-2302-11e9-b9aa-0298a739da58', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '8f271afa-27bb-4b0a-9b11-ed1c6644bae2', '3', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('04a1ee3d-2302-11e9-b9aa-0298a739da59', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '8f271afa-27bb-4b0a-9b11-ed1c6644bae2', '3', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
-- page_list
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('6e9806a4-0dc1-4687-84e7-990a5690978c', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '40fac1de-51f5-4bb4-9726-794c120aca4b', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('6e9806a4-0dc2-4687-84e7-990a5690978c', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '40fac1de-51f5-4bb4-9726-794c120aca4b', '0', '1', '2017-09-29 09:52:02', '1', '2017-09-29 09:52:02', '1');
