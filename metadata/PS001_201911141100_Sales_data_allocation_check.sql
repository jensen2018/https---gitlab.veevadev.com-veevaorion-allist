-- 销量对象
-- 8cd609b2-c5b6-4b8d-a314-4ccb30543b99 销量数据 
-- 3a519a1b-8c80-4479-8693-607e2853b4eb 岗位销量
-- 6ed2cbde-90f3-11e6-96b0-e4b318c6b596 销售指标
-- 802e500c-d202-4b43-ad3c-f50c79d68d5d 销量全局状态
-- 8b560397-86d4-41d2-8980-bab7f3b96df1 指标汇总
-- 91d5ad4d-5bd2-4b2b-8997-eeb63713331a 指标
-- 9f041acc-3dae-4721-9e83-86a9219baf21 销量预测
-- d12a8f5a-e87d-4b9a-8f5a-2e905b5832b1 销量确认详情

-- 微信端
-- 岗位销量page  sales_data_allocation_list_s 4b2f1680-c3ba-11e7-9fd3-c85b76d4d416 
-- sales_data_allocation_layout  0e6f64c0-2d2d-46e3-a322-3625c2e3d889
-- sales_data_allocation_tab  e07c9130-de41-11e7-9d41-ce9792169272

INSERT INTO `menus` (`id`, `name`, `source`, `label`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `color`, `template`) VALUES ('9abfdab0-c511-11e7-836d-5c514ff44493', 'sales_data_allocation', 'custom', '销量列表', 'menu', 'small', '4b2f1680-c3ba-11e7-9fd3-c85b76d4d416', 'veev-sales-data', '0', '1', '2019-11-04 03:14:29', '1', '2019-11-04 03:14:29', 'veev-blue', 'sales_data_allocation');

-- 流向核查列表 816ca040-c51e-11e7-a41d-c85b76d4d416  待确认销量列表 0a260000-c2d3-11e7-9f68-c85b76d4d416 已确认销量列表 9152ad4f-c44d-11e7-b770-c85b76d4d416

-- 岗位销量状态: 进货待核查 d5e4aa11-2306-443d-9105-c91f2743a8a3  待确认 7eae3aab-ae7e-4af4-a18a-68772d415b99  确认中 934dfcdc-06ce-450e-bf27-188ae5aa4931 已确认 a563fd81-a59f-4411-aadc-f75a1702e6c9
-- 销量数据状态:  草稿（新建库存） cf809620-30b6-44c3-ba55-69bfe0051098  调整中 1f71f423-90a1-49e8-9647-299746af2a53 初始状态 10d71fa3-b205-44a8-9b71-f56cfef72294  流向核查 fc34bb5f-b3b0-4e2c-ab17-200999a1fa9d
-- 已封存  08063d43-0497-427a-97ef-cb1afbf64e43

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('69996dcd-fee5-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '9abfdab0-c511-11e7-836d-5c514ff44493', '16', '0', '1', '2019-11-04 11:17:36', '1', '2019-11-04 11:17:36');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('08bf9a00-ff9c-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '9abfdab0-c511-11e7-836d-5c514ff44493', '16', '0', '1', '2019-11-04 11:17:36', '1', '2019-11-04 11:17:36');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0fc89070-ff9c-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '9abfdab0-c511-11e7-836d-5c514ff44493', '16', '0', '1', '2019-11-04 11:17:36', '1', '2019-11-04 11:17:36');

-- 代表
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('70eebda0-fee8-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '816ca040-c51e-11e7-a41d-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('94251b19-fee8-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '0a260000-c2d3-11e7-9f68-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('a47b4e54-fee8-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '9152ad4f-c44d-11e7-b770-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
-- 经理 
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('3681231b-ff9c-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '816ca040-c51e-11e7-a41d-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('456452fe-ff9c-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '0a260000-c2d3-11e7-9f68-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('4a83393c-ff9c-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '9152ad4f-c44d-11e7-b770-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');

-- 大区经理 
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('6079e8ef-ff9c-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '816ca040-c51e-11e7-a41d-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('677917e4-ff9c-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '0a260000-c2d3-11e7-9f68-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('6cfcf77e-ff9c-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '9152ad4f-c44d-11e7-b770-c85b76d4d416', '0', '1', '2019-11-02 06:06:56', '1', '2019-11-02 06:06:56', '1');

-- 删除流向待核查 待确认 列表，仅保留已确认销量列表
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='456452fe-ff9c-11e9-b9aa-0298a739dec0';
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='677917e4-ff9c-11e9-b9aa-0298a739dec0';
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='94251b19-fee8-11e9-b9aa-0298a739dec0';
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='3681231b-ff9c-11e9-b9aa-0298a739dec0';
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='6079e8ef-ff9c-11e9-b9aa-0298a739dec0';
UPDATE `page_list_assignments` SET `deleted`='1' WHERE `id`='70eebda0-fee8-11e9-b9aa-0298a739dec0';

UPDATE `page_lists` SET `label`='确认销量列表' WHERE `id`='9152ad4f-c44d-11e7-b770-c85b76d4d416';

-- 金额 88179b8a-cc30-43c0-8ef3-7fbcec3e3e0f  数量 bc58a3e9-47aa-45a0-b09b-6d8772829780

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c23f7f0d-020b-11ea-b9aa-0298a739dec0', '9152ad4f-c44d-11e7-b770-c85b76d4d416', '52e59482-2334-46f4-8c61-fd6e1a748e6c', '销售年月', '0', '12', '1', '1', '1', '0', '1', '2019-11-08 10:04:24', '1', '2019-11-08 10:04:24');
UPDATE `page_list_fields` SET `label`='数量' WHERE `id`='fc9441f0-c44d-11e7-8c15-c85b76d4d416';
UPDATE `page_list_fields` SET `label`='金额' WHERE `id`='f513f061-c44d-11e7-a577-c85b76d4d416';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='68072c91-c87c-11e7-a604-c85b76d4d416';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='61e76a1e-f426-11e7-9562-c85b76d4d416';

-- layout
-- sales_data_allocation_checking_s  511dffed-1ba8-4188-ab39-60833f7eeb76
--  sales_data_allocation_pending_shangxiao_s bdc90fc3-9311-47fe-942e-9c0f07b0efb8
-- sales_data_allocation_confirmed_shangxiao_s fcec4359-84fd-4201-83b1-bb060d5e7f47

-- bbea2c57-e8c1-4c54-8759-46d0f425c746 record_type  商销 
-- 1a295e95-20bb-4419-aa74-92ceb8e131c7  record_type 实销

-- 53de6f5e-1da3-11e6-b011-5cc5d4b57134 代表
-- 53de9670-1da3-11e6-961c-5cc5d4b57135 销售经理
-- 53de9671-1da3-11e6-93fb-5cc5d4b57136 大区经理
-- 3a519a1b-8c80-4479-8693-607e2853b4eb allocation object

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`) VALUES ('1ad1d860-0468-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3a519a1b-8c80-4479-8693-607e2853b4eb', '1', '0', '0', '0', '0', '1', '2019-11-11 07:37:46', '1', '2019-11-11 07:37:46', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`) VALUES ('328063d6-0468-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '3a519a1b-8c80-4479-8693-607e2853b4eb', '1', '0', '0', '0', '0', '1', '2019-11-11 07:37:46', '1', '2019-11-11 07:37:46', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('4893d249-0468-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '3a519a1b-8c80-4479-8693-607e2853b4eb', '1', '0', '0', '0', '0', '1', '2019-11-11 07:37:46', '1', '2019-11-11 07:37:46', '0', '0', '0', '0');


-- 代表 
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bc21f453-ffbb-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'd5e4aa11-2306-443d-9105-c91f2743a8a3', '511dffed-1ba8-4188-ab39-60833f7eeb76', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('db5f37c4-ffbb-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '934dfcdc-06ce-450e-bf27-188ae5aa4931', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0e569adb-ffbc-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'a563fd81-a59f-4411-aadc-f75a1702e6c9', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24dbed07-ffbc-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '7eae3aab-ae7e-4af4-a18a-68772d415b99', 'bdc90fc3-9311-47fe-942e-9c0f07b0efb8', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
-- 经理 大区 
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('374f5bf7-0049-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'a563fd81-a59f-4411-aadc-f75a1702e6c9', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3e3066bf-0049-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '7eae3aab-ae7e-4af4-a18a-68772d415b99', 'bdc90fc3-9311-47fe-942e-9c0f07b0efb8', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('42f39a00-0049-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'd5e4aa11-2306-443d-9105-c91f2743a8a3', '511dffed-1ba8-4188-ab39-60833f7eeb76', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4844dcaa-0049-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '934dfcdc-06ce-450e-bf27-188ae5aa4931', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5d1ccd1d-0049-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'a563fd81-a59f-4411-aadc-f75a1702e6c9', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('61dc0981-0049-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '7eae3aab-ae7e-4af4-a18a-68772d415b99', 'bdc90fc3-9311-47fe-942e-9c0f07b0efb8', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('667be369-0049-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'd5e4aa11-2306-443d-9105-c91f2743a8a3', '511dffed-1ba8-4188-ab39-60833f7eeb76', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6ac9d8f2-0049-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', '934dfcdc-06ce-450e-bf27-188ae5aa4931', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', '0', '1', '2019-11-05 07:17:58', '1', '2019-11-05 07:17:58');

-- f183839c-5a66-41e2-bc14-b6f406b595d2 流向tab列表 
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('80f7964d-0046-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'f183839c-5a66-41e2-bc14-b6f406b595d2', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b1185e6c-0049-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'f183839c-5a66-41e2-bc14-b6f406b595d2', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5d06b5b-0049-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'f183839c-5a66-41e2-bc14-b6f406b595d2', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');
-- 删掉流向tab
UPDATE `page_layout_tabs` SET `deleted`='1' WHERE `id`='97382a72-1c90-43fc-a526-0c556c0c2ad7';

-- 增加医院总销量 字段 number_1  e36e438d-e8d3-412b-9729-58203943c022
-- columns d69ecbd4-5ac7-41c3-a9e4-55dff05434fd  

UPDATE `object_database_columns` SET `used`='1' WHERE `id`='d69ecbd4-5ac7-41c3-a9e4-55dff05434fd';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`) VALUES ('5ea768dd-05f0-11ea-b9aa-0298a739dec0', 'fcec4359-84fd-4201-83b1-bb060d5e7f47', 'field', 'e36e438d-e8d3-412b-9729-58203943c022', '医院总销量', '16', '12', '0', '1', 'both', '0', '1', '2019-11-13 06:54:57', '1', '2019-11-13 06:54:57', '0');

UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='e91ee65a-69d3-4aec-9fa4-8bb334bef240';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='660791f9-45e9-4509-9e3a-e2867aa044cf';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='68d82f50-2437-4eaf-9750-1fc2860d3267';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='6ff52d16-8af7-4622-8310-c3593cf9e1f8';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='b82e0c58-cd4a-471f-b047-c1355d48674b';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='d064b1cf-93f6-4d12-aa9a-d7660c73f239';
UPDATE `page_layout_fields` SET `label`='金额' WHERE `id`='2d6c3099-7982-4a4a-a827-ce03ce31b6f2';
UPDATE `page_layout_fields` SET `label`='数量' WHERE `id`='65cd5305-da08-406c-9ab4-46115b7b6e3b';

UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='2d6c3099-7982-4a4a-a827-ce03ce31b6f2';
UPDATE `page_layout_fields` SET `deleted`='0' WHERE `id`='68d82f50-2437-4eaf-9750-1fc2860d3267';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='65cd5305-da08-406c-9ab4-46115b7b6e3b';
UPDATE `page_layout_fields` SET `deleted`='0' WHERE `id`='d064b1cf-93f6-4d12-aa9a-d7660c73f239';

-- 电脑端 
-- 53de9674-1da3-11e6-ac97-5cc5d4b57137  sfe经理 
-- sale_data
UPDATE `pages` SET `url`='/sales-data/{id}' WHERE `id`='b8952ab0-c36b-11e7-9e61-c85b76d4d416';
UPDATE `pages` SET `url`='/sales-data' WHERE `id`='c6e73000-c2f7-11e7-92f2-c85b76d4d416';

-- d1810351-976e-46d4-9e69-0c548cde4be3 状态 field 

-- 7b80408f-c42b-11e7-a5ac-c85b76d4d416 库存管理(menu)
-- d1bf4321-c42b-11e7-b28d-c85b76d4d416 销量(parent menu)
-- INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('7b80408f-c42b-11e7-a5ac-c85b76d4d416', 'sales_data_l', 'custom', '销量库存管理', 'd1bf4321-c42b-11e7-b28d-c85b76d4d416', 'menu', 'large', 'c6e73000-c2f7-11e7-92f2-c85b76d4d416', '0', '1', '2019-11-06 08:15:12', '1', '2019-11-06 08:15:12', 'sales_data_l');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('198fbea8-005e-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '7b80408f-c42b-11e7-a5ac-c85b76d4d416', '1', '0', '1', '2019-11-06 04:18:13', '1', '2019-11-06 04:18:13');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f7428be3-005e-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'd1bf4321-c42b-11e7-b28d-c85b76d4d416', '8', '0', '1', '2019-11-06 04:18:13', '1', '2019-11-06 04:18:13');

select * from menus_assignments where id='198fbea8-005e-11ea-b9aa-0298a739dec0';
-- 暂删除menus,不要库存管理
UPDATE `menus_assignments` SET `deleted`='1' WHERE `id`='198fbea8-005e-11ea-b9aa-0298a739dec0';

--  ca69d7d1-c2db-11e7-8713-c85b76d4d416  库存列表
-- 增加状态field 
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5c7ac3f6-006e-11ea-b9aa-0298a739dec0', 'ca69d7d1-c2db-11e7-8713-c85b76d4d416', 'd1810351-976e-46d4-9e69-0c548cde4be3', '状态', '18', '120', '1', '1', '0', '1', '2019-11-06 10:04:21', '1', '2019-11-06 10:04:21');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('ad663a2d-0060-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'ca69d7d1-c2db-11e7-8713-c85b76d4d416', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('b3043f01-0061-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '8cd609b2-c5b6-4b8d-a314-4ccb30543b99', '1', '1', '1', '1', '0', '1', '2019-11-06 07:04:49', '1', '2019-11-06 07:04:49', '1', '1', '1', '1');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('b3043f01-0061-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '2a619683-79aa-4bdb-9eca-50a481c40cf8', 'cf809620-30b6-44c3-ba55-69bfe0051098', 'e406c089-631f-4fa3-88f5-7ae04fa0314f', '0', '1', '2019-11-06 03:50:14', '1', '2019-11-06 03:50:14', NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('44be7be3-006d-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '2a619683-79aa-4bdb-9eca-50a481c40cf8', '1f71f423-90a1-49e8-9647-299746af2a53', '242b0461-c36d-11e7-a22f-c85b76d4d416', '0', '1', '2019-11-06 03:50:14', '1', '2019-11-06 03:50:14');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5d8dde82-006d-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '2a619683-79aa-4bdb-9eca-50a481c40cf8', 'fc34bb5f-b3b0-4e2c-ab17-200999a1fa9d', '242b0461-c36d-11e7-a22f-c85b76d4d416', '0', '1', '2019-11-06 03:50:14', '1', '2019-11-06 03:50:14');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('78f8cddb-006d-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '2a619683-79aa-4bdb-9eca-50a481c40cf8', '08063d43-0497-427a-97ef-cb1afbf64e43', '242b0461-c36d-11e7-a22f-c85b76d4d416', '0', '1', '2019-11-06 03:50:14', '1', '2019-11-06 03:50:14');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('8f07aff8-006d-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '2a619683-79aa-4bdb-9eca-50a481c40cf8', '10d71fa3-b205-44a8-9b71-f56cfef72294', '91afbfb8-52bf-4131-a3f1-0a5ae3d8dc8b', '0', '1', '2019-11-06 03:50:14', '1', '2019-11-06 03:50:14');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('e52bd577-0075-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '3337f5d1-de43-11e7-ab7a-ce9792169272', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');

-- 岗位销量明细/销量确认详情
-- sales_data_allocation_detail  object d12a8f5a-e87d-4b9a-8f5a-2e905b5832b1

INSERT INTO `pages` (`id`, `name`, `object_id`, `description`, `type`, `page_type`, `url`, `target_screen_size`, `used_as_menu`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`, `label`) VALUES ('2e2abb9e-37de-11e8-a673-c85b76d4d416', 'cs_sales_data_allocation_detail_list_l', 'd12a8f5a-e87d-4b9a-8f5a-2e905b5832b1', 'sales data allocation detail list', 'list', 'standard', '/sales-data-allocation-detail', 'large', '1', '0', '1', '2019-11-06 08:15:12', '1', '2019-11-06 08:15:12', 'system', '销量确认详情');

INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('417e6cc9-41f1-11e8-b95c-020652a9390e', 'sales_data_allocation_detail_l', 'custom', '岗位销量明细', 'd1bf4321-c42b-11e7-b28d-c85b76d4d416', 'menu', 'large', '2e2abb9e-37de-11e8-a673-c85b76d4d416', '0', '1', '2019-11-06 06:20:34', '1', '2019-11-06 06:20:34', 'sales_data_allocation_detail_l');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('263ff0c1-007d-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '417e6cc9-41f1-11e8-b95c-020652a9390e', '2', '0', '1', '2019-11-06 11:17:36', '1', '2019-11-06 11:17:36');
-- 岗位销量明细 暂删除menus
UPDATE `menus_assignments` SET `deleted`='1' WHERE `id`='263ff0c1-007d-11ea-b9aa-0298a739dec0';

INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `detail_disabled`, `primary_filter`, `primary_filter_configurations`) VALUES ('0364b121-37e1-11e8-bf4f-c85b76d4d416', '2e2abb9e-37de-11e8-a673-c85b76d4d416', 'cs_sales_data_allocation_detail_list_l', 'all', 'custom', '岗位销量统计列表', 'large', '0', '1', '2019-11-06 05:08:02', '1', '2019-11-06 05:08:02', '1', 'yearmonth', '{\"multiple_option\":true}');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('01cfe380-37e5-11e8-a500-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '7eb6c9e5-e4fe-4278-abfd-1af9c5b40e44', '本月销量(支/盒)', '4', '120', '0', '1', '0', '0', '1', '2018-08-06 06:19:38', '1', '2018-08-06 06:19:38');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('7becae61-37e4-11e8-a540-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '75ef65d5-a200-4391-b318-9b232732c345', '代表岗位', '6', '120', '0', '0', '0', '0', '1', '2018-05-03 02:28:08', '1', '2018-05-03 02:28:08');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('8b7f3140-37e4-11e8-b887-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', 'ebbb8202-7c1c-4e52-933c-7b81b98b76d9', '医院 ID', '1', '120', '1', '0', '0', '0', '1', '2018-05-03 02:28:21', '1', '2018-05-03 02:28:21');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('940bc2ae-37e4-11e8-bcf5-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '7bf2c421-cf69-4cc9-b4c6-bc165f2e324e', '医院', '2', '120', '1', '0', '0', '0', '1', '2018-05-03 02:28:21', '1', '2018-05-03 02:28:21');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9d6089c2-876c-11e9-a37a-02f90e0f46f0', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '84068ef4-dff1-408d-8cfd-d6fdd3712d70', '年月', '0', '120', '1', '1', '0', '0', '1', '2019-06-06 09:10:47', '1', '2019-06-06 09:10:47');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('cf05b8cf-37e4-11e8-b933-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '9afbc07b-8e1d-4eb9-bb35-113e6eca90a2', '产品', '3', '120', '1', '0', '0', '0', '1', '2018-08-06 06:19:38', '1', '2018-08-06 06:19:38');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d69e2640-37e4-11e8-b717-c85b76d4d416', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '8b59a328-f3f4-4deb-a564-d831aebc3c0e', '品规', '4', '120', '1', '0', '0', '0', '1', '2018-08-06 06:19:38', '1', '2018-08-06 06:19:38');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('73dd2a4c-007f-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '0', '1', '2019-11-06 06:06:56', '1', '2019-11-06 06:06:56', '1');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`) VALUES ('5a7d4db9-045a-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'd12a8f5a-e87d-4b9a-8f5a-2e905b5832b1', '1', '0', '0', '0', '0', '1', '2019-11-11 07:37:46', '1', '2019-11-11 07:37:46', '0', '1', '1', '0', '0');

-- 本月销量(支/盒)  代表岗位  医院 ID  医院  年月  产品  品规

-- object_id=d12a8f5a-e87d-4b9a-8f5a-2e905b5832b1

-- 67ee487f-a8f2-4beb-b4ce-aac1006797a4 终端或分销商 
-- 0227dc8f-49c2-11e8-bba0-c85b76d4d416 岗位 
-- 6b619d25-255e-4dd6-9f25-03d5cc96d521 岗位销量 -- 无法添加此字段，如果添加报错 
-- 7eb6c9e5-e4fe-4278-abfd-1af9c5b40e44 本月销量(支/盒) 
-- 84068ef4-dff1-408d-8cfd-d6fdd3712d70 年月 
-- c626ca85-606d-4ded-94ba-e94c492699a8 销量
-- ec153d7e-c75a-44dc-9914-8a729f8d9a08 编号 

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('514609b8-0086-11ea-b9aa-0298a739dec0', '0364b121-37e1-11e8-bf4f-c85b76d4d416', '6b619d25-255e-4dd6-9f25-03d5cc96d521', '岗位销量', '1', '120', '1', '0', '0', '1', '1', '2019-11-06 06:19:38', '1', '2019-11-06 06:19:38');

-- 3a519a1b-8c80-4479-8693-607e2853b4eb 岗位销量 object 
-- 6b619d25-255e-4dd6-9f25-03d5cc96d521  岗位销量 field
UPDATE `object_fields` SET `lookup_object_id`='3a519a1b-8c80-4479-8693-607e2853b4eb' WHERE `id`='6b619d25-255e-4dd6-9f25-03d5cc96d521';
UPDATE `object_fields` SET `lookup_object_id`=null WHERE `id`='6b619d25-255e-4dd6-9f25-03d5cc96d521';


-- 岗位销量 allocation
INSERT INTO `pages` (`id`, `name`, `object_id`, `description`, `type`, `page_type`, `url`, `target_screen_size`, `used_as_menu`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`, `label`) VALUES ('84146976-0432-11ea-b9aa-0298a739dec0', 'sales_data_allocation_list_l', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'sales data allocation list', 'list', 'standard', '/sales-data-allocation', 'large', '1', '0', '1', '2019-11-11 10:33:29', '1', '2019-11-11 10:33:29', 'system', '岗位销量');
-- menu page  84146976-0432-11ea-b9aa-0298a739dec0

INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('cc60334a-0432-11ea-b9aa-0298a739dec0', 'sales_data_allocation', 'custom', '岗位销量查询', 'd1bf4321-c42b-11e7-b28d-c85b76d4d416', 'menu', 'large', '84146976-0432-11ea-b9aa-0298a739dec0', 'veev-sales-data', '0', '1', '2019-11-11 10:33:29', '1', '2019-11-11 10:33:29', 'sales_data_allocation');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3c889abd-0433-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cc60334a-0432-11ea-b9aa-0298a739dec0', '3', '0', '1', '2019-11-11 11:17:36', '1', '2019-11-11 11:17:36');

INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e57cca71-0438-11ea-b9aa-0298a739dec0', '84146976-0432-11ea-b9aa-0298a739dec0', 'cs_sales_data_allocation_l', 'all', 'custom', '销量列表', 'large', '0', '1', '2019-11-11 05:08:02', '1', '2019-11-11 05:08:02');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('2215ecee-0439-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '0', '1', '2019-11-11 06:06:56', '1', '2019-11-11 06:06:56', '1');

-- sales_data_allocation 列表 e57cca71-0438-11ea-b9aa-0298a739dec0

-- 配置列表导出按钮 
-- 632d834f-c7ad-4f6b-8779-a99f0bd0f9d0 导出 action 
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('ac059559-0460-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '632d834f-c7ad-4f6b-8779-a99f0bd0f9d0', '1', '0', '1', '2019-11-11 00:00:00.000000', '1', '2019-11-11 00:00:00.000000', '0', '0', '0');

-- allocation 字段 
-- 医院 ea894d2d-0244-408f-a7d1-0d75d3a1f339 
-- 剂型 79d6ccb3-3346-4005-9c25-2ebc9260f119
-- 52e59482-2334-46f4-8c61-fd6e1a748e6c 年月 
-- 数量 bc58a3e9-47aa-45a0-b09b-6d8772829780
-- 价格 a5e3d1e0-f4ab-4673-be8b-752cdb0b50d9
-- 金额 88179b8a-cc30-43c0-8ef3-7fbcec3e3e0f
-- 岗位 62875185-c147-4d9c-b290-ad7095fa1e16 上级岗位 50ca1402-0448-11ea-b9aa-0298a739dec0  上级经理 604a422a-0448-11ea-b9aa-0298a739dec0 大区经理岗位  6d59259c-0448-11ea-b9aa-0298a739dec0
-- 大区经理  5765d768-0448-11ea-b9aa-0298a739dec0 所在大区  68e8f51c-0448-11ea-b9aa-0298a739dec0  所在区域 77724a3b-0448-11ea-b9aa-0298a739dec0  
-- 所在BU  7bf17806-0448-11ea-b9aa-0298a739dec0  所在地区  8080243d-0448-11ea-b9aa-0298a739dec0

INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('50ca1402-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'parent_position', '上级岗位', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.parent.name\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('5765d768-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'daqu_position_user', '大区经理', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 06:48:50', '{\"refer_field\": {\"path\": \"position.superior_level_3.userpositions.user.orionusers.name\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('604a422a-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'parent_position_user', '上级经理', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.parent.userpositions.user.orionusers.name\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('68e8f51c-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'position_dayu', '所在大区', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.text_3\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('6d59259c-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'daqu_position', '大区经理岗位', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.superior_level_3.name\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('726c7117-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'position_no', '岗位编码', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.code\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('77724a3b-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'position_quyu', '所在区域', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.text_2\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7bf17806-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'position_BU', '所在BU', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.text_1\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('8080243d-0448-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'position_diqu', '所在地区', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-12 09:24:12', '1', '2019-09-12 09:24:12', '{\"refer_field\": {\"path\": \"position.text_4\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a309839f-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'ea894d2d-0244-408f-a7d1-0d75d3a1f339', '终端或医院', '2', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a7936929-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '52e59482-2334-46f4-8c61-fd6e1a748e6c', '年月', '1', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('abcbd7e7-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '79d6ccb3-3346-4005-9c25-2ebc9260f119', '剂型', '3', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('af41784c-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'bc58a3e9-47aa-45a0-b09b-6d8772829780', '数量', '4', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b2dc04e3-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'a5e3d1e0-f4ab-4673-be8b-752cdb0b50d9', '价格', '5', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b6e99e98-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '88179b8a-cc30-43c0-8ef3-7fbcec3e3e0f', '金额', '6', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ba7d59b5-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '62875185-c147-4d9c-b290-ad7095fa1e16', '岗位', '7', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('beb34dde-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '50ca1402-0448-11ea-b9aa-0298a739dec0', '上级岗位', '8', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c28bf3f1-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '604a422a-0448-11ea-b9aa-0298a739dec0', '上级经理', '9', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c5f74496-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '6d59259c-0448-11ea-b9aa-0298a739dec0', '大区经理岗位', '10', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c98568a4-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '5765d768-0448-11ea-b9aa-0298a739dec0', '大区经理', '11', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('cd2a0eb2-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '68e8f51c-0448-11ea-b9aa-0298a739dec0', '所在大区', '12', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d16d1250-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '77724a3b-0448-11ea-b9aa-0298a739dec0', '所在区域', '13', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d48c47ef-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '7bf17806-0448-11ea-b9aa-0298a739dec0', '所在BU', '14', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d7c05dcc-044a-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '8080243d-0448-11ea-b9aa-0298a739dec0', '所在地区', '15', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');


-- 增加 医院省市区县字段 
-- geo_province  geo_city  geo_district
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('eb3fcbc1-05f2-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'hospi_province', '省', 'custom', 'refer', 'all', 'both', '0', '1', '2019-11-13 02:20:39', '1', '2019-11-13 02:20:39', '{\"refer_field\": {\"path\": \"account.geo_province\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('5f12e088-05f3-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'hospi_city', '市', 'custom', 'refer', 'all', 'both', '0', '1', '2019-11-13 02:20:39', '1', '2019-11-13 02:20:39', '{\"refer_field\": {\"path\": \"account.geo_city\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('8b35c358-05f3-11ea-b9aa-0298a739dec0', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'hospi_district', '区', 'custom', 'refer', 'all', 'both', '0', '1', '2019-11-13 02:20:39', '1', '2019-11-13 02:20:39', '{\"refer_field\": {\"path\": \"account.geo_district\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
-- e57cca71-0438-11ea-b9aa-0298a739dec0 电脑端列表id
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('12b3ee8c-05f4-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'eb3fcbc1-05f2-11ea-b9aa-0298a739dec0', '省', '2', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3445af74-05f4-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '5f12e088-05f3-11ea-b9aa-0298a739dec0', '市', '2', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4de988a2-05f4-11ea-b9aa-0298a739dec0', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '8b35c358-05f3-11ea-b9aa-0298a739dec0', '区', '2', '120', '1', '1', '0', '0', '1', '2019-11-11 07:33:22', '1', '2019-11-11 07:33:22');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`) VALUES ('31a87549-044c-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '3a519a1b-8c80-4479-8693-607e2853b4eb', '1', '0', '0', '0', '0', '1', '2019-11-11 07:37:46', '1', '2019-11-11 07:37:46', '0', '1', '1', '0', '0');

-- 0e6f64c0-2d2d-46e3-a322-3625c2e3d889  sales_data_allocation_layout
-- 93b56540-de53-11e7-ac90-ce9792169272  sales_data_allocation_confirmed_shangxiao_l

-- bbea2c57-e8c1-4c54-8759-46d0f425c746 record_type  商销 
-- 1a295e95-20bb-4419-aa74-92ceb8e131c7  record_type 实销
-- 岗位销量状态: 进货待核查 d5e4aa11-2306-443d-9105-c91f2743a8a3  待确认 7eae3aab-ae7e-4af4-a18a-68772d415b99  确认中 934dfcdc-06ce-450e-bf27-188ae5aa4931 已确认 a563fd81-a59f-4411-aadc-f75a1702e6c9
-- 仅配置已确认状态
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('72a12cdf-0453-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bbea2c57-e8c1-4c54-8759-46d0f425c746', 'a563fd81-a59f-4411-aadc-f75a1702e6c9', '93b56540-de53-11e7-ac90-ce9792169272', '0', '1', '2019-11-11 07:17:58', '1', '2019-11-11 07:17:58');

UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='108186c0-de55-11e7-9ebb-ce9792169272';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='a7b29a4f-faa4-11e7-b7ba-c85b76d4d416';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='b367c170-de54-11e7-8585-ce9792169272';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='c35c8891-de54-11e7-b444-ce9792169272';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='cb495791-de54-11e7-864a-ce9792169272';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='daa9f500-de54-11e7-aa0d-ce9792169272';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='ef757180-de54-11e7-a0ec-ce9792169272';

-- 确认列表中报表配置
-- report_id eb7797ff-dff5-11e7-803d-0228028941a6  销量 
-- embedded
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES ('0', '1', '2019-11-13 17:04:38.000000', '1', '2019-11-13 17:04:38.000000', 'eb7797ff-dff5-11e7-803d-0228028941a6', '销量小报表', 'custom', 'S', '0');

INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2019-11-12 02:11:00.581249', '1', '2019-11-12 02:11:00.581249', '197be83f-92e0-44db-84f9-59c809e9af38', '1', 'eb7797ff-dff5-11e7-803d-0228028941a6', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'embedded');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2019-11-12 02:11:00.581249', '1', '2019-11-12 02:11:00.581249', 'c2fbe879-0602-11ea-b9aa-0298a739dec0', '1', 'eb7797ff-dff5-11e7-803d-0228028941a6', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'embedded');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2019-11-12 02:11:00.581249', '1', '2019-11-12 02:11:00.581249', 'cedb4090-0602-11ea-b9aa-0298a739dec0', '1', 'eb7797ff-dff5-11e7-803d-0228028941a6', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'embedded');

UPDATE `page_lists` SET `configurations`='{\"show_report\": true, \"report_path\": \"/shared/report/eb7797ff-dff5-11e7-803d-0228028941a6/\"}' WHERE `id`='9152ad4f-c44d-11e7-b770-c85b76d4d416';
