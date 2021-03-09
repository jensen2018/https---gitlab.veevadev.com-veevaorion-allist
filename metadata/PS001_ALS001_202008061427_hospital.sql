-- ----------------------------------------------------------------微信端 Start--------------------------------------------------------------
-- 启用字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '7f03c740-74dc-11e6-ac64-5cc5d4d378cb');
UPDATE `object_fields` SET `label` = 'City Tier' WHERE (`id` = '7f0f11e1-74dc-11e6-ac1d-5cc5d4d378cb');

-- 菜单授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('4c1d5945-b0c0-4c4d-946e-ee9c4304d441', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'ac14764f-74df-11e6-9dc6-5cc5d4d378cb', '2', '0', '1', '2020-07-01 13:16:49', '1', '2020-07-01 13:16:49', 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('4c1d5945-b0c0-4c4d-946e-ee9c4304d442', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'ac14764f-74df-11e6-9dc6-5cc5d4d378cb', '2', '0', '1', '2020-07-01 13:16:49', '1', '2020-07-01 13:16:49', 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('4c1d5945-b0c0-4c4d-946e-ee9c4304d443', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'ac14764f-74df-11e6-9dc6-5cc5d4d378cb', '2', '0', '1', '2020-07-01 13:16:49', '1', '2020-07-01 13:16:49', 'null');

-- 医院page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fb6accbf-770f-47ba-86c9-b9447d99731a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'db221570-7664-11e6-bac9-5cc5d4d378cb', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fb6accbf-770f-47ba-86c9-b9447d99731b', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'db221570-7664-11e6-bac9-5cc5d4d378cb', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fb6accbf-770f-47ba-86c9-b9447d99731c', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'db221570-7664-11e6-bac9-5cc5d4d378cb', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');

-- 医院page_layout授权
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a2-11e7-b38c-02d2a924e45f', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a3-11e7-b38c-02d2a924e45f', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a4-11e7-b38c-02d2a924e45f', '20228999-b5ff-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a5-11e7-b38c-02d2a924e45f', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a6-11e7-b38c-02d2a924e45f', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a7-11e7-b38c-02d2a924e45f', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-36a8-11e7-b38c-02d2a924e45f', '72e462a0-b600-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');

-- 医生Tab page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5121994-36a2-4270-85c5-43b3e88a76ed', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '0', '1', '2020-07-06 11:11:25', '1', '2020-07-06 11:11:25', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5121994-36a3-4270-85c5-43b3e88a76ed', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '0', '1', '2020-07-06 11:11:25', '1', '2020-07-06 11:11:25', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5121994-36a4-4270-85c5-43b3e88a76ed', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '0', '1', '2020-07-06 11:11:25', '1', '2020-07-06 11:11:25', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5121994-36a5-4270-85c5-43b3e88a76ed', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '0', '1', '2020-07-06 11:11:25', '1', '2020-07-06 11:11:25', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b5121994-36a6-4270-85c5-43b3e88a76ed', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '0', '1', '2020-07-06 11:11:25', '1', '2020-07-06 11:11:25', '1');

-- page_list字段
UPDATE `page_list_fields` SET `label` = '客户类型' WHERE (`id` = 'da7af912-e4af-42ce-9930-144a64a704f2');

-- page_layout字段
UPDATE `page_layout_fields` SET `label` = '客户类型', `order` = '5' WHERE (`id` = 'e9610880-765f-11e6-91c2-5cc5d4d37004');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = 'e9766540-765f-11e6-9226-5cc5d4d37005');
UPDATE `page_layout_fields` SET `order` = '8' WHERE (`id` = 'e9eca6ae-765f-11e6-876d-5cc5d4d37008');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '50e59bf1-4802-4498-b7c1-d901841df475');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('e90d914f-765f-11e6-986e-5cc5d4d31539', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '7f0f11e1-74dc-11e6-ac1d-5cc5d4d378cb', 'City Tier', '4', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2020-07-31 15:48:36', '0', '0', '0');

-- 科室Tab
-- 启用预留对象custom_object_3
UPDATE `objects` SET `used` = '1' WHERE (`id` = 'b9327980-b3bd-4be3-918e-079a3a30abaa');
-- 启用custom_object_3字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'f426be47-3c8c-4c8e-b285-ca25ed95f656');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'ddba1eb5-590d-475e-9a63-50b255770107');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '67be5088-ad41-4fc3-8dd6-3c951df10bd1');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '32cb2e03-d696-4a8b-827f-24cddf164172');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '05c377e9-f390-4220-b0d0-6506175d8a36');

UPDATE `object_fields` SET `label` = '所属医院' WHERE (`id` = '1256fd0f-3b6d-4cbb-9b06-57629dc1e7fa');
UPDATE `object_fields` SET `label` = '科室名称' WHERE (`id` = 'f699a005-54b2-42a1-92b0-fefddc86e82f');
UPDATE `object_fields` SET `label` = '病房床位数' WHERE (`id` = 'ad2802df-0421-49c6-9d15-59f1c8655f2e');
UPDATE `object_fields` SET `label` = '科室主治医师及以上数量' WHERE (`id` = 'dcc6d8f5-547c-468e-8802-b88a8f9fc183');
UPDATE `object_fields` SET `label` = '肺癌病人占比' WHERE (`id` = '24767d6a-d7c3-4455-98bb-29b0599b5bea');
UPDATE `object_fields` SET `label` = '2019年月均肺癌病人数量(门诊+病房肺癌病人数)' WHERE (`id` = '3646a8c7-617a-4431-b087-144647ce2812');

-- 新增object_tabs
INSERT INTO `object_tabs` (`id`, `name`, `object_id`, `label`, `description`, `type`, `source`, `url`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `display_mode`, `template`) VALUES ('e6f08461-dbe1-11ea-bc49-0215c63fce1a', 'custom_object_3', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '科室', 'custom_object_3', 'list', 'custom', '/account_1/{id}/custom_object_3', 'both', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', 'simple', 'common-list');
-- 插入Tab
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES ('8e1cbaf0-7669-11e6-b65e-5cc5d4d32142', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '2', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', 'aa8d490f-54d6-11e7-bba2-34f39ab71988', '0');
UPDATE `page_layout_tabs` SET `object_tab_id` = 'e6f08461-dbe1-11ea-bc49-0215c63fce1a' WHERE (`id` = '8e1cbaf0-7669-11e6-b65e-5cc5d4d32142');
-- 新增page
INSERT INTO `pages` (`id`, `name`, `object_id`, `type`, `page_type`, `url`, `target_screen_size`, `used_as_menu`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('d249227c-8fca-4d3f-9209-503d986f2232', 'custom_object_3', 'b9327980-b3bd-4be3-918e-079a3a30abaa', 'tab', 'standard', '/account/{id}/custom_object_3/', 'both', '0', '0', '1', '2018-07-02 10:58:49', '1', '2018-07-02 10:58:49', 'custom');
UPDATE `pages` SET `label` = '科室' WHERE (`id` = 'd249227c-8fca-4d3f-9209-503d986f2232');
UPDATE `pages` SET `url` = '/account_1/{id}/custom_object_3/' WHERE (`id` = 'd249227c-8fca-4d3f-9209-503d986f2232');
UPDATE `pages` SET `url` = '/account_1/{id}/custom_object_3' WHERE (`id` = 'd249227c-8fca-4d3f-9209-503d986f2232');
-- 新增page_list
INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `detail_disabled`) VALUES ('6f771122-7546-4207-8dcd-a2260f412240', 'b15bec35-7ae5-40ad-a40d-e06564e0ee03', 'cs_department', 'all', 'custom', '科室', 'small', '0', '0', '1', '2020-03-02 03:16:40', '1', '2020-08-10 08:28:27', '0');
UPDATE `page_lists` SET `page_id` = 'd249227c-8fca-4d3f-9209-503d986f2232' WHERE (`id` = '6f771122-7546-4207-8dcd-a2260f412240');
-- page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-dbe0-11ea-bc49-0215c63fce1a', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
-- page_list字段
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746d3333-dc77-11ea-bc49-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', 'f699a005-54b2-42a1-92b0-fefddc86e82f', '科室名称', '1', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746d3333-dc77-11ea-bc49-0215c63fce1b', '6f771122-7546-4207-8dcd-a2260f412240', 'ad2802df-0421-49c6-9d15-59f1c8655f2e', '病房床位数', '2', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746d3333-dc77-11ea-bc49-0215c63fce1c', '6f771122-7546-4207-8dcd-a2260f412240', 'dcc6d8f5-547c-468e-8802-b88a8f9fc183', '科室主治医师及以上数量', '3', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746d3333-dc77-11ea-bc49-0215c63fce1d', '6f771122-7546-4207-8dcd-a2260f412240', '24767d6a-d7c3-4455-98bb-29b0599b5bea', '肺癌病人占比', '4', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746d3333-dc77-11ea-bc49-0215c63fce1e', '6f771122-7546-4207-8dcd-a2260f412240', '3646a8c7-617a-4431-b087-144647ce2812', '2019年月均肺癌病人数量(门诊+病房肺癌病人数)', '5', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1b');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1c');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1d');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1e');


-- ----------------------------------------------------------------电脑端 Start--------------------------------------------------------------
-- 启用字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '7f1a5c80-74dc-11e6-9279-5cc5d4d378cb');
UPDATE `object_fields` SET `label` = '大区' WHERE (`id` = '7f29298f-74dc-11e6-a7c6-5cc5d4d378cb');

-- page_list字段
UPDATE `page_list_fields` SET `label` = '客户类型', `order` = '7' WHERE (`id` = '4c9b0377-9a5d-4bf1-8622-1a606388148d');
UPDATE `page_list_fields` SET `order` = '8' WHERE (`id` = '16708ff0-f8b5-4667-8b5e-c83389367bbb');
UPDATE `page_list_fields` SET `order` = '9' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4dp9snd');
UPDATE `page_list_fields` SET `order` = '5' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4d30axm');
UPDATE `page_list_fields` SET `order` = '6' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4d30axv');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4dpqweo');
UPDATE `page_list_fields` SET `deleted` = '0' WHERE (`id` = '4c9b0377-9a5d-4bf1-8622-1a606388148d');
UPDATE `page_list_fields` SET `allow_filter` = '0', `allow_sort` = '0' WHERE (`id` = '4c9b0377-9a5d-4bf1-8622-1a606388148d');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('777a5861-7665-11e6-bd57-5cc5d4d325d1', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '7f0f11e1-74dc-11e6-ac1d-5cc5d4d378cb', 'City Tier', '3', '120', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-21 01:58:14');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('777a5861-7665-11e6-bd57-5cc5d4d325d2', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '7f29298f-74dc-11e6-a7c6-5cc5d4d378cb', '大区', '4', '120', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-21 01:58:14');


-- page_layout字段
UPDATE `page_layout_fields` SET `label` = '客户类型', `order` = '7' WHERE (`id` = 'eac92400-765f-11e6-a567-5cc5d4d34axn');
UPDATE `page_layout_fields` SET `order` = '8' WHERE (`id` = 'eb90448f-765f-11e6-8db8-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'ead72dc0-765f-11e6-8e89-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'eaf34140-765f-11e6-baf7-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '5' WHERE (`id` = 'aa15de7a-58ad-4b71-96c1-ab17ccb3350c');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = 'eaffeb70-765f-11e6-a887-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'eb15211e-765f-11e6-aa9d-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `label` = '最后修改时间' WHERE (`id` = 'ebce5f00-765f-11e6-83e6-5cc5d4d378cb');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eac92400-765f-11e6-a567-5cc5d4d331b1', '1c359340-763b-11e6-8119-5cc5d4d378cb', 'field', '7f0f11e1-74dc-11e6-ac1d-5cc5d4d378cb', 'City Tier', '4', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2020-07-07 09:25:38', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eac92400-765f-11e6-a567-5cc5d4d331b2', '1c359340-763b-11e6-8119-5cc5d4d378cb', 'field', '7f29298f-74dc-11e6-a7c6-5cc5d4d378cb', '大区', '5', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2020-07-07 09:25:38', '0', '0', '0');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = 'aa15de7a-58ad-4b71-96c1-ab17ccb3350c');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = 'eaffeb70-765f-11e6-a887-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '8' WHERE (`id` = 'eac92400-765f-11e6-a567-5cc5d4d34axn');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'eb90448f-765f-11e6-8db8-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '10' WHERE (`id` = 'eaf34140-765f-11e6-baf7-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `display_mode` = 'both' WHERE (`id` = 'aa15de7a-58ad-4b71-96c1-ab17ccb3350c');
UPDATE `page_layout_fields` SET `display_mode` = 'both' WHERE (`id` = 'eaffeb70-765f-11e6-a887-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'eac92400-765f-11e6-a567-5cc5d4d34axn');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'eb90448f-765f-11e6-8db8-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'eaf34140-765f-11e6-baf7-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'ebce5f00-765f-11e6-83e6-5cc5d4d378cb');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('eaf34140-765f-11e6-baf7-5cc5d4d31759', '1c359340-763b-11e6-8119-5cc5d4d378cb', 'field', '6899c2c1-6f9f-11e7-a324-e4b318c6b596', '省市区(县)', '9', '6', '1', '0', 'edit', '0', '1', '2017-05-02 15:39:41', '1', '2020-07-11 11:27:54', '0', '0');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'aa15de7a-58ad-4b71-96c1-ab17ccb3350c');
UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = 'eaffeb70-765f-11e6-a887-5cc5d4d378cb');

-- 按钮权限
UPDATE `object_actions` SET `owner_only` = '0' WHERE (`id` = 'ae0d6e7a-33a9-11e6-a646-5c514ff44493');
UPDATE `object_actions` SET `owner_only` = '0' WHERE (`id` = '829eea0f-321a-11e6-b318-5cc5d4d378cb');

-- CEO权限
UPDATE `role_to_object_permissions` SET `allow_export` = '1', `allow_read_all` = '1' WHERE (`id` = '8dcba9ea-c27f-43e0-8a0b-290fb4f269f4');

-- 导入
UPDATE `import_templates` SET `instructions` = '导入说明###1.请按所示列提供医院名称、医院编码、City Tier、大区、省份、城市、县(区)、客户类型、医院级别、地址、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U' WHERE (`id` = '9b86c838-1e9c-4adf-ad37-4c55e722tscb');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '53');
UPDATE `customer_map_column` SET `order` = '5', `label` = '省份' WHERE (`id` = '54');
UPDATE `customer_map_column` SET `order` = '6', `label` = '城市' WHERE (`id` = '55');
UPDATE `customer_map_column` SET `order` = '9' WHERE (`id` = '57');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '60');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '61');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '59');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '62');
UPDATE `customer_map_column` SET `order` = '8' WHERE (`id` = '58');
INSERT INTO `customer_map_column` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `temp_column_name`, `type`, `object_id`, `object_field_id`, `order`, `is_key`, `label`, `mandatory`, `object_record_type_id`, `sample_value`, `import_template_id`) VALUES ('0', '1', '2020-06-09 09:35:00.000000', '1', '2020-06-09 09:35:00.000000', 'field1', 'custom', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '7f0f11e1-74dc-11e6-ac1d-5cc5d4d378cb', '3', '0', 'City Tier', '0', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '', '9b86c838-1e9c-4adf-ad37-4c55e722tscb');
INSERT INTO `customer_map_column` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `temp_column_name`, `type`, `object_id`, `object_field_id`, `order`, `is_key`, `label`, `mandatory`, `object_record_type_id`, `sample_value`, `import_template_id`) VALUES ('0', '1', '2020-06-09 09:35:00.000000', '1', '2020-06-09 09:35:00.000000', 'field2', 'custom', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '7f29298f-74dc-11e6-a7c6-5cc5d4d378cb', '4', '0', '大区', '0', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '', '9b86c838-1e9c-4adf-ad37-4c55e722tscb');
INSERT INTO `customer_map_column` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `type`, `object_id`, `object_field_id`, `order`, `is_key`, `label`, `mandatory`, `object_record_type_id`, `sample_value`, `import_template_id`) VALUES ('0', '1', '2020-06-09 09:35:00.000000', '1', '2020-06-09 09:35:00.000000', 'standard', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '7e55d400-74dc-11e6-930b-5cc5d4d378cb', '7', '0', '客户类型', '0', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '医院', '9b86c838-1e9c-4adf-ad37-4c55e722tscb');
UPDATE `roles` SET `type` = 'admin' WHERE (`id` = 'e5d39840-f751-11e6-9ee6-68f72882c9d0');

-- 授权
-- object授权
UPDATE `role_to_object_permissions` SET `allow_read` = '1' WHERE (`id` = '114bf91c-e8dc-4000-bd87-c13ba79fcc41');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('114bf91c-e8dc-4000-bd87-c13ba79fcc32', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '0', '0', '0', '0', '1', '2020-07-06 11:54:48', '1', '2020-08-06 09:10:13', '0', '0', '0', '0', '0', '0', '0');
-- 菜单授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f7288204c2', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'd9584ea1-1d93-11e6-a4c1-5cc5d4d378cb', '20', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-06 10:59:06');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f7288204c3', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'd9584ea1-1d93-11e6-a4c1-5cc5d4d378cb', '20', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-06 10:59:06');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f728821705', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'ac537b1e-74df-11e6-ac06-5cc5d4d378cb', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f728821706', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'ac537b1e-74df-11e6-ac06-5cc5d4d378cb', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
-- page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('977ee070-f8c1-11e6-8986-68f72882a707', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('977ee070-f8c1-11e6-8986-68f72882a708', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00', '1');
-- page_layout授权
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-b930-11e7-b38c-02d2a924e712', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c359340-763b-11e6-8119-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2325b9e4-b930-11e7-b38c-02d2a924e713', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb', '1c359340-763b-11e6-8119-5cc5d4d378cb', '0', '1', '2020-06-09 09:35:00', '1', '2020-06-09 09:35:00');

-- 科室管理
-- 医生分级参数配置
INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('fc7453dc-524f-4838-804a-4b65b5021547', 'cs_department', 'custom', '科室管理', 'd9584ea1-1d93-11e6-a4c1-5cc5d4d378cb', 'menu', 'large', 'd249227c-8fca-4d3f-9209-503d986f22d1', '0', '1', now(), '1', now(), 'cs_dcr_survey_param');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fc006ec0-b2f0-11e7-92ez-5cc5d4d35321', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'fc7453dc-524f-4838-804a-4b65b5021547', '3', '0', '1', '2019-09-11 11:17:36', '1', '2019-09-11 11:17:36');
-- page_list
INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `detail_disabled`) VALUES ('hc53e64f-dc9a-gerc-bcb5-e4b318c61558', 'd249227c-8fca-4d3f-9209-503d986f22d1', 'cs_department_l', 'rls', 'custom', '科室管理', 'both', '0', '0', '1', '2018-08-02 10:33:29', '1', '2020-07-03 06:30:14', '0');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('1a5cc65c-0723-11e9-b9aa-0298a739dec2', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac0f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', 'f699a005-54b2-42a1-92b0-fefddc86e82f', '科室名称', '1', '120', '1', '1', '0', '0', '1', now(), '1', now(), '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac1f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', '1256fd0f-3b6d-4cbb-9b06-57629dc1e7fa', '所属医院', '2', '120', '1', '1', '0', '0', '1', '2020-07-23 08:12:08', '1', '2020-07-23 08:12:08', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac2f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', 'ad2802df-0421-49c6-9d15-59f1c8655f2e', '病房床位数', '3', '120', '1', '1', '0', '0', '1', '2020-07-23 08:12:08', '1', '2020-07-23 08:12:08', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac3f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', 'dcc6d8f5-547c-468e-8802-b88a8f9fc183', '科室主治医师及以上数量', '4', '200', '1', '1', '0', '0', '1', '2020-07-23 08:12:08', '1', '2020-07-23 08:12:08', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac4f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', '24767d6a-d7c3-4455-98bb-29b0599b5bea', '肺癌病人占比', '5', '130', '1', '1', '0', '0', '1', '2020-07-23 08:12:08', '1', '2020-07-23 08:12:08', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('ecd6e6ae-a627-11e6-93ed-5cc5d4d3ac5f', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', '3646a8c7-617a-4431-b087-144647ce2812', '2019年月均肺癌病人数量(门诊+病房肺癌病人数)', '6', '350', '1', '1', '0', '0', '1', '2020-07-23 08:12:08', '1', '2020-07-23 08:12:08', '1');
-- page_layout
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1f7bf4c0-d344-11e7-b07d-c85b76d41559', '116cdfa7-2572-4748-86f8-fffcff3bcd5d', 'cs_department_l', '科室管理', 'custom', 'large', '0', '1', '2018-05-16 03:28:00', '1', '2019-08-05 02:59:15');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-0723-d544-8dcc-8024d1edfd22', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec0', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', '1256fd0f-3b6d-4cbb-9b06-57629dc1e7fa', '所属医院', '1', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec1', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', 'f699a005-54b2-42a1-92b0-fefddc86e82f', '科室名称', '2', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec2', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', 'ad2802df-0421-49c6-9d15-59f1c8655f2e', '病房床位数', '3', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec3', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', 'dcc6d8f5-547c-468e-8802-b88a8f9fc183', '科室主治医师及以上数量', '4', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec4', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', '24767d6a-d7c3-4455-98bb-29b0599b5bea', '肺癌病人占比', '5', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24ba89a2-2d40-11ea-b9aa-0298a739dec5', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'field', '3646a8c7-617a-4431-b087-144647ce2812', '2019年月均肺癌病人数量(门诊+病房肺癌病人数)', '6', '6', '1', '0', 'both', '0', '1', '2018-01-15 09:21:47', '1', '2020-01-02 11:02:25');
-- 按钮
UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1', `allow_import` = '1', `allow_export` = '1', `allow_read_all` = '1', `allow_update_all` = '1' WHERE (`id` = '9262d2ce-ba3b-4fe6-b89d-5c1ab6423667');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `is_item_action`) VALUES ('0219a149-06a5-4861-836c-db6bfb520831', 'hc53e64f-dc9a-gerc-bcb5-e4b318c61558', '3a3183f6-e65c-4df1-a286-3b0468e25374', '1', '0', '1', '2019-11-12 00:00:00.000000', '1', '2019-11-12 00:00:00.000000', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dffed52d-2d4f-11ea-b9aa-0298a739dec0', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '9807bce7-35d0-4a62-88d0-29aaea17a90d', 'view', '1', '0', '1', '2018-01-09 09:21:13', '1', '2020-01-03 03:08:46', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dffed52d-2d4f-11ea-b9aa-0298a739dec1', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '61e2996b-c90c-4973-a665-ab32c55a1ccf', 'view', '2', '0', '1', '2018-01-09 09:21:13', '1', '2020-01-03 03:08:47', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dffed52d-2d4f-11ea-b9aa-0298a739dec2', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', 'ca475b26-7db2-418f-a1e3-6ef4b9a8f982', 'edit', '3', '0', '1', '2018-01-09 09:21:13', '1', '2020-01-03 03:08:47', '0', '0');
-- 医院选择
UPDATE `object_fields` SET `lookup_filter_id` = 'e6e031f0-3ea4-11e6-9d1c-5cc5d4b571d2' WHERE (`id` = '1256fd0f-3b6d-4cbb-9b06-57629dc1e7fa');
-- 全部角色read all
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '1bdeb630-53ff-4907-8c47-95bcc643d4c9');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '2367216d-4a81-4c08-a680-3b9e2bf69d1f');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '2f02c162-708c-400a-b71a-2a4474c58b06');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '428bea03-b71f-4f4a-b127-802e3ddf93c7');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '49b03a92-bf03-40e2-a965-606cb5169127');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '768ce1dd-b289-447a-bd30-c464c3cb1166');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '98e1d61c-b394-445f-bc1c-ca7d38a310aa');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = 'a7362fc2-153b-4a56-a65e-2cf947560843');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = 'a8b96ad5-45dd-4a6e-a624-482b7e638086');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = 'b6b5eafb-1ba1-41c1-bb50-2c0abe0d1bd9');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = 'c1dcecae-9d60-43e9-9098-5f9619a5888f');

-- 科室page_layout改为both
UPDATE `page_layouts` SET `screen_size` = 'both' WHERE (`id` = '1f7bf4c0-d344-11e7-b07d-c85b76d41559');

-- 科室-对象授权
UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '2f02c162-708c-400a-b71a-2a4474c58b06');
UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '1bdeb630-53ff-4907-8c47-95bcc643d4c9');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_modify_approver`, `allow_create_page_list`) VALUES ('c1dcecae-9d60-43e9-9098-5f9619a52302', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'b9327980-b3bd-4be3-918e-079a3a30abaa', '0', '0', '0', '0', '0', '1', '2020-07-06 11:54:48', '1', '2020-08-12 09:30:41', '0', '0', '1', '0', '0', '0', '0');
-- 科室-微信端page_list授权
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa0-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa1-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa2-11ea-bc49-0215c63fce1a', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa3-11ea-bc49-0215c63fce1a', '20228999-b5ff-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa4-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa5-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa6-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa7-11ea-bc49-0215c63fce1a', '72e462a0-b600-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fcc6a2c6-cfa8-11ea-bc49-0215c63fce1a', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '6f771122-7546-4207-8dcd-a2260f412240', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
-- 科室-微信端page_layout授权
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-0723-d544-8dcc-8024d1edfd44', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d0-d544-8dcc-8024d1edfd44', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d1-d544-8dcc-8024d1edfd44', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d2-d544-8dcc-8024d1edfd44', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d3-d544-8dcc-8024d1edfd44', '20228999-b5ff-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d4-d544-8dcc-8024d1edfd44', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d5-d544-8dcc-8024d1edfd44', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d6-d544-8dcc-8024d1edfd44', '72e462a0-b600-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`, `mini_layout_section`) VALUES ('1e1470e4-07d7-d544-8dcc-8024d1edfd44', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '1f7bf4c0-d344-11e7-b07d-c85b76d41559', '0', '1', '2020-06-12 02:51:45', '1', '2020-06-12 02:51:45', '1', 'cs_department_l');
