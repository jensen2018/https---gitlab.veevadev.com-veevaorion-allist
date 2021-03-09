-- ----------------------------------------------------------------微信端 Start--------------------------------------------------------------
-- 科室picklist
UPDATE `picklist_values` SET `order` = '6' WHERE (`id` = '0e496b6d-bf5d-4bde-b86d-7cb4d1664125');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('4422b2e5-4564-4d06-9c93-58b7553758bd', '38015cbe-fd9d-4674-9fef-52905d2fcfd2', 'pharmacy', '药剂科', '5', '0', '1', '2020-07-30 12:53:57', '1', '2017-07-17 07:54:29', 'system');
-- 职称picklist
UPDATE `picklist_values` SET `order` = '1' WHERE (`id` = '78d4a370-e06c-11e6-9dfe-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '3' WHERE (`id` = '78e2ad30-e06c-11e6-a113-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '4' WHERE (`id` = '78f746a1-e06c-11e6-b5ed-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '5', `deleted` = '0' WHERE (`id` = '796c2880-e06c-11e6-bab9-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '6', `deleted` = '0' WHERE (`id` = '7bee8da1-e06c-11e6-9b5a-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '78c70ee1-e06c-11e6-9690-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '79052951-e06c-11e6-932b-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7917ee00-e06c-11e6-8ea2-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7871c2f0-e06c-11e6-9f3d-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7893f0f0-e06c-11e6-9303-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '78a3f680-e06c-11e6-8b67-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '78b61ef0-e06c-11e6-a639-5cc5d4d378cb');
-- 行政职务picklist
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7c5abcf0-e06c-11e6-bbb7-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7caea94f-e06c-11e6-a2f7-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7cc1e330-e06c-11e6-ac84-5cc5d4d378cb');
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = '7ccfc5de-e06c-11e6-b875-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '党委书记', `order` = '5', `deleted` = '0' WHERE (`id` = '7cebb24f-e06c-11e6-adf5-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '党委副书记', `order` = '6', `deleted` = '0' WHERE (`id` = '7cfd8ca1-e06c-11e6-ac9c-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '科室主任', `order` = '1' WHERE (`id` = '7c687891-e06c-11e6-a02a-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '科室副主任', `order` = '2' WHERE (`id` = '7c765b40-e06c-11e6-87e5-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '3' WHERE (`id` = '7c35a8c0-e06c-11e6-8068-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '4' WHERE (`id` = '7c4909b0-e06c-11e6-b725-5cc5d4d378cb');

-- page_list字段
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '7a21aa9e-7665-11e6-b101-5cc5d4d378cb');
UPDATE `page_list_fields` SET `label` = '医生编码', `order` = '1' WHERE (`id` = '178debb1-834d-4003-9514-c89246d5e6d5');
UPDATE `page_list_fields` SET `order` = '2' WHERE (`id` = '79d9f340-7665-11e6-a568-5cc5d4d378cb');
UPDATE `page_list_fields` SET `order` = '3' WHERE (`id` = 'bd0db0c5-41a6-407a-9bbc-b35a753f86b1');
UPDATE `page_list_fields` SET `label` = '医院' WHERE (`id` = '79e9839e-7665-11e6-abeb-5cc5d4d378cb');
UPDATE `page_list_fields` SET `label` = '科室', `order` = '5' WHERE (`id` = '7a0d1130-7665-11e6-8e3a-5cc5d4d378cb');
UPDATE `page_list_fields` SET `order` = '6' WHERE (`id` = '0e735e0d-9242-4e4c-83f7-7476f47e68a6');
UPDATE `page_list_fields` SET `order` = '8' WHERE (`id` = '733d014f-bb61-11e6-943c-5cc5d4d378cb');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0e735e0d-9242-4e4c-83f7-7476f47e1350', 'db527440-7664-11e6-b30b-5cc5d4d378cb', '84140691-e071-11e6-aaa7-5cc5d4d378cb', '行政职务', '7', '120', '1', '1', '0', '0', '1', '2020-07-15 08:07:13', '1', '2020-08-07 05:50:32');
UPDATE `page_list_fields` SET `allow_filter` = '0', `allow_sort` = '0' WHERE (`id` = '0e735e0d-9242-4e4c-83f7-7476f47e1350');
UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '178debb1-834d-4003-9514-c89246d5e6d5');
UPDATE `page_list_fields` SET `is_default` = '1' WHERE (`id` = '0e735e0d-9242-4e4c-83f7-7476f47e68a6');

-- 启用带组医生boolean字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '83496030-74dc-11e6-9266-5cc5d4d378cb');
UPDATE `object_fields` SET `label` = '带组医生' WHERE (`id` = '8355952e-74dc-11e6-bfe1-5cc5d4d378cb');

-- page_layout字段
UPDATE `page_layout_fields` SET `order` = '4' WHERE (`id` = 'feffa1c0-765f-11e6-ba05-5cc5d4d378cc');
UPDATE `page_layout_fields` SET `order` = '5' WHERE (`id` = 'ef0bfdcf-765f-11e6-adf8-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = 'eee53bf0-765f-11e6-9df2-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '8' WHERE (`id` = 'if268ab0-765f-11e6-8dbe-5cc5d4d378cg');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'ef268ab0-765f-11e6-8dbe-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `label` = '手机号' WHERE (`id` = 'ef6abfa1-765f-11e6-8d1d-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `label` = '医院名称' WHERE (`id` = 'feffa1c0-765f-11e6-ba05-5cc5d4d378cc');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '3d60aa38-c1c2-1234-9ae0-e67eb7e75468');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '3d60aa38-c1c2-4418-9ae0-e67eb7e75468');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('feffa1c0-765f-11e6-ba05-5cc5d4d31402', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', 'field', 'e1f66193-8912-44d4-9fa9-80dba6d138ab', '医院编码', '3', '12', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:01:25', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eee53bf0-765f-11e6-9df2-5cc5d4d31404', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', 'field', '8355952e-74dc-11e6-bfe1-5cc5d4d378cb', '带组医生', '7', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:00:13', '0', '0', '0');

-- 菜单授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b4188524-a538-d340-93a3-e7dd252c1e16', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'ac69c240-74df-11e6-b717-5cc5d4d378cb', '3', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-29 15:13:52');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b4188524-a538-d340-93a3-e7dd252c1e17', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'ac69c240-74df-11e6-b717-5cc5d4d378cb', '3', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-29 15:13:52');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b4188524-a538-d340-93a3-e7dd252c1e18', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'ac69c240-74df-11e6-b717-5cc5d4d378cb', '3', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-29 15:13:52');

-- 医生page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('1de40f00-7aa0-5744-8fc2-56131753b801', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'db527440-7664-11e6-b30b-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('1de40f00-7aa0-5744-8fc2-56131753b802', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'db527440-7664-11e6-b30b-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('1de40f00-7aa0-5744-8fc2-56131753b803', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'db527440-7664-11e6-b30b-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');

-- 医生page_layout授权
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a2-0440-85d8-5cc6340308f5', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a3-0440-85d8-5cc6340308f5', '20228999-b5ff-11ea-aab5-0215c63fce1a', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a4-0440-85d8-5cc6340308f5', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a5-0440-85d8-5cc6340308f5', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a6-0440-85d8-5cc6340308f5', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5be04543-36a7-0440-85d8-5cc6340308f5', '72e462a0-b600-11ea-aab5-0215c63fce1a', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');

-- 医生产品分级Tab权限
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a2', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a3', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a4', '20228999-b5ff-11ea-aab5-0215c63fce1a', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a5', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a6', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a7', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('f8128d34-ee29-92b4-92b4-0336e93136a8', '72e462a0-b600-11ea-aab5-0215c63fce1a', '5d7cd557-51e3-4c6d-91e3-14c43326ade9', '0', '1', '2019-08-20 06:06:56', '1', '2019-08-20 06:06:56', '1');

-- 删除医生page_layout按钮
UPDATE `page_layout_actions` SET `deleted` = '1' WHERE (`id` = 'b4312440-7666-11e6-8553-5cc5d4d378cb');

-- ----------------------------------------------------------------电脑端 Start--------------------------------------------------------------
-- 关联医院字段
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7f0f11e1-74dc-utyh-ac1d-5cc5d4d3daqu', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'cs_region', '大区', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22', '{\"refer_field\":{\"path\":\"hospital.text_3\",\"type\":\"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('8ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'geo_province', '省', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22', '{\"refer_field\": {\"path\": \"hospital.geography.province\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('8f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'geo_city', '市', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22', '{\"refer_field\": {\"path\": \"hospital.geography.city\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');

-- 医生page_list字段
UPDATE `page_list_fields` SET `label` = '医院编码' WHERE (`id` = '5a13d938-3939-4f45-a5dd-ba99a7f2df48');
UPDATE `page_list_fields` SET `label` = '医院名称' WHERE (`id` = '395ef6de-7665-11e6-b398-5cc5d4d37pcl');
UPDATE `page_list_fields` SET `label` = '科室', `order` = '8' WHERE (`id` = '3f69a6b5-2876-4b29-b179-63c3dc3efda8');
UPDATE `page_list_fields` SET `order` = '9' WHERE (`id` = '897983c0-7665-11e6-bca8-5cc5d4d37pcl');
UPDATE `page_list_fields` SET `order` = '11' WHERE (`id` = '797983c0-7665-11e6-bca8-5cc5d4d37pcl');
UPDATE `page_list_fields` SET `order` = '12' WHERE (`id` = '297983c0-7665-11e6-bca8-5cc5d4d37pcl');
UPDATE `page_list_fields` SET `order` = '15' WHERE (`id` = '19862dee-7665-11e6-931c-5cc5d4d37pcl');
UPDATE `page_list_fields` SET `order` = '16' WHERE (`id` = '0e2e639f-7ed5-4c9e-8501-5455168b8dd5');
UPDATE `page_list_fields` SET `order` = '17' WHERE (`id` = '22a63d07-6e7c-4176-a0b7-a66e4f02eb33');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac13', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3daqu', '大区', '5', '120', '0', '0', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac14', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '省份', '6', '120', '0', '0', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac15', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '城市', '7', '120', '0', '0', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac16', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '8355952e-74dc-11e6-bfe1-5cc5d4d378cb', '带组医生', '10', '120', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac17', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '74a1eddd-1cb3-443d-85b9-8476b40dc99f', '是否讲者', '13', '120', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('395ef6de-7665-11e6-b398-5cc5d4dac18', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '7f42cc0f-74dc-11e6-a3f7-5cc5d4d378cb', '讲者级别', '14', '120', '0', '0', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 09:10:46');
UPDATE `page_list_fields` SET `object_field_id` = '8ef8cac0-74dc-hfgm-8258-5cc5d4d33wan' WHERE (`id` = '395ef6de-7665-11e6-b398-5cc5d4dac14');
UPDATE `page_list_fields` SET `object_field_id` = '8f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm' WHERE (`id` = '395ef6de-7665-11e6-b398-5cc5d4dac15');

-- 医生page_layout字段
UPDATE `page_layout_fields` SET `label` = '医院编码' WHERE (`id` = 'b067627b-29c3-4d59-a780-3219f423a3ae');
UPDATE `page_layout_fields` SET `label` = '医院名称' WHERE (`id` = '95ee4d66-b871-4672-a1ab-e5bb010dbc1d');
UPDATE `page_layout_fields` SET `label` = '科室', `order` = '8' WHERE (`id` = 'ef0bfdcf-765f-11e6-adf8-5cc5d4d378pc');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'eee53bf0-765f-11e6-9df2-5cc5d4d378pc');
UPDATE `page_layout_fields` SET `order` = '11' WHERE (`id` = 'if268ab0-765f-11e6-8dbe-5cc5d4d378pc');
UPDATE `page_layout_fields` SET `order` = '12' WHERE (`id` = 'ef268ab0-765f-11e6-8dbe-5cc5d4d378pc');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '3d60aa38-c1c2-4418-9ae0-e67eb7e754pc');
UPDATE `page_layout_fields` SET `label` = '手机号', `order` = '15' WHERE (`id` = '4d60aa38-c1c2-4418-9ae0-e67eb7e754pc');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'ef6abfa1-765f-11e6-8d1d-5cc5d4d378pc');
UPDATE `page_layout_fields` SET `order` = '16' WHERE (`id` = '3065e26e-fc31-4ed9-8ad9-e21162290f59');
UPDATE `page_layout_fields` SET `order` = '17' WHERE (`id` = 'ec3bc35d-4556-48d5-b69b-698ad14d173e');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c54', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3daqu', '大区', '5', '6', '0', '0', 'view', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c55', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '省份', '6', '6', '0', '0', 'view', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c56', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '城市', '7', '6', '0', '0', 'view', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c57', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '8355952e-74dc-11e6-bfe1-5cc5d4d378cb', '带组医生', '10', '6', '1', '0', 'both', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c58', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '74a1eddd-1cb3-443d-85b9-8476b40dc99f', '是否讲者', '13', '6', '0', '0', 'view', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('95ee4d66-b871-4672-a1ab-e5bb010d2c59', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', 'field', '7f42cc0f-74dc-11e6-a3f7-5cc5d4d378cb', '讲者级别', '14', '6', '0', '0', 'view', '0', '1', '2020-07-21 02:51:13', '1', '2020-08-07 09:17:46', '0', '0');
UPDATE `page_layout_fields` SET `object_field_id` = '8ef8cac0-74dc-hfgm-8258-5cc5d4d33wan' WHERE (`id` = '95ee4d66-b871-4672-a1ab-e5bb010d2c55');
UPDATE `page_layout_fields` SET `object_field_id` = '8f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm' WHERE (`id` = '95ee4d66-b871-4672-a1ab-e5bb010d2c56');

-- 授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('84a9cfe5-77d6-0b44-84e0-9f4095b71821', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'ac742280-74df-11e6-9145-5cc5d4d378cb', '2', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('84a9cfe5-77d6-0b44-84e0-9f4095b71822', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'ac742280-74df-11e6-9145-5cc5d4d378cb', '2', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
-- page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('cfbcab73-d1e5-b440-aafb-daebb0641823', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('cfbcab73-d1e5-b440-aafb-daebb0641824', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'db7b8011-7664-11e6-b2eb-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
-- page_layout授权
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('852f8f0a-bc48-344a-893d-f42920191825', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('852f8f0a-bc48-344a-893d-f42920191826', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '216100c0-1d85-11e6-b31e-5cc5d4d378cb', '1c4faaf0-763b-11e6-a6cf-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');

-- 导入
UPDATE `import_templates` SET `instructions` = '导入说明###1.请按所示列提供医生编码、医生姓名、所属医院、科室、性别、行政职务、职称、手机号、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U' WHERE (`id` = '9b86c838-1e9c-4adf-ad37-4c55e722ttav');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '50');
