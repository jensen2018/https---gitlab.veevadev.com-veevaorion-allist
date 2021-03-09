-- -----------------------------------------------------微信端 Start-----------------------------------------------------------
-- recod_type
UPDATE `object_record_types` SET `deleted` = '1' WHERE (`id` = '43b7c1ba-a616-491d-859e-020bee5281c6');
UPDATE `object_record_types` SET `deleted` = '1' WHERE (`id` = '5b552ca9-2439-4838-827a-a691e709aff6');
UPDATE `object_record_types` SET `deleted` = '1' WHERE (`id` = '750dcf2e-2215-4a8f-b1ec-15e5857b7985');
UPDATE `object_record_types` SET `deleted` = '1' WHERE (`id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb');
UPDATE `object_record_types` SET `label` = '面对面' WHERE (`id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb');
INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '5299a45e-7408-11e6-bbe0-5cc5d4b571d2', 'remote', '远程', 'custom', '2', '0', '1', '2018-08-02 10:33:29', '1', '2020-08-19 01:25:11');
INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '5299a45e-7408-11e6-bbe0-5cc5d4b571d2', 'other', '其它', 'custom', '3', '0', '1', '2018-08-02 10:33:29', '1', '2020-08-19 01:25:11');
-- 代表record type
UPDATE `role_to_object_record_types` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'b8f5c354-cfc7-11e9-b9aa-0298a739dec0');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b8f5c354-cfc7-11e9-b9aa-0298a7390930', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2019-09-05 20:22:52', '1', '2020-08-19 01:30:26');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b8f5c354-cfc7-11e9-b9aa-0298a7390931', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2019-09-05 20:22:52', '1', '2020-08-19 01:30:26');
-- 地区经理record type
UPDATE `role_to_object_record_types` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '15830804-971a-4de8-8ba2-5c6708e83590');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('15830804-971a-4de8-8ba2-5c6708e80933', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 12:55:04', '1', '2020-08-19 01:33:03');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('15830804-971a-4de8-8ba2-5c6708e80934', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 12:55:04', '1', '2020-08-19 01:33:03');
-- 销售主管record type
UPDATE `role_to_object_record_types` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'e0d81088-15ab-4f74-aee4-f8ebb30a735a');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e0d81088-15ab-4f74-aee4-f8ebb30a0935', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:02:58', '1', '2020-07-30 08:13:13');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e0d81088-15ab-4f74-aee4-f8ebb30a0936', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:02:58', '1', '2020-07-30 08:13:13');
-- 大区经理record type
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a9ca13b3-ecc7-46dc-9c16-4b76c08d0937', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:02:27', '1', '2020-07-30 08:13:13');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a9ca13b3-ecc7-46dc-9c16-4b76c08d0938', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:02:27', '1', '2020-07-30 08:13:13');
UPDATE `role_to_object_record_types` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb', `is_default` = '1' WHERE (`id` = 'a9ca13b3-ecc7-46dc-9c16-4b76c08dcdfc');
-- 大区总监
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('53affa8c-c060-4bcc-afe4-890119440950', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('53affa8c-c060-4bcc-afe4-890119440951', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
UPDATE `role_to_object_record_types` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '53affa8c-c060-4bcc-afe4-89011944c7de');
-- 市场经理
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('af6d836e-e1be-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('af6d836e-e1be-11ea-bc49-0215c63f0953', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('af6d836e-e1be-11ea-bc49-0215c63f0954', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- 产品经理
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fa6f651d-e1be-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fa6f651d-e1be-11ea-bc49-0215c63f0955', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fa6f651d-e1be-11ea-bc49-0215c63f0956', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- 市场总监
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('36616ea3-e1bf-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('36616ea3-e1bf-11ea-bc49-0215c63f0957', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('36616ea3-e1bf-11ea-bc49-0215c63f0958', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- SFE经理
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('58ad6a44-e1bf-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('58ad6a44-e1bf-11ea-bc49-0215c63f0959', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('58ad6a44-e1bf-11ea-bc49-0215c63f095a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- 营销公司负责人
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('85ecebcb-e1bf-11ea-bc49-0215c63fce1a', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('85ecebcb-e1bf-11ea-bc49-0215c63f095b', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('85ecebcb-e1bf-11ea-bc49-0215c63f095c', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- CEO
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('30e201c0-e1c0-11ea-bc49-0215c63fce1a', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('30e201c0-e1c0-11ea-bc49-0215c63f1001', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('30e201c0-e1c0-11ea-bc49-0215c63f1002', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
-- 董事长
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('126c4cbd-e1c3-11ea-bc49-0215c63fce1a', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '1', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('126c4cbd-e1c3-11ea-bc49-0215c63f1024', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('126c4cbd-e1c3-11ea-bc49-0215c63f1025', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a', '0', '0', '1', '2020-07-29 13:07:18', '1', '2020-07-30 08:13:12');

-- page_list字段
UPDATE `page_list_fields` SET `label` = '拜访日期' WHERE (`id` = '5995f8de-7408-11e6-a022-5cc5d4b571d2');
UPDATE `page_list_fields` SET `label` = '医生' WHERE (`id` = '599ef98f-7408-11e6-b481-5cc5d4b571d2');
UPDATE `page_list_fields` SET `label` = '状态' WHERE (`id` = '598c5bf0-7408-11e6-bcfc-5cc5d4b571d2');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '0790558b-4qac-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '59b36bf0-7408-11e6-b7e9-5cc5d4b571d2');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('598c5bf0-7408-11e6-bcfc-5cc5d4b51115', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', 'a6da65b0-1aab-11e7-b6bf-5cc5d4d378cb', '医院及科室', '5', '120', '1', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-19 03:14:09');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('598c5bf0-7408-11e6-bcfc-5cc5d4b51133', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '5327174f-7408-dasw-a94a-5cc5d4b571d2', '拜访时间', '6', '120', '1', '1', '0', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-19 03:14:09');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('598c5bf0-7408-11e6-bcfc-5cc5d4b51134', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '55acfede-7408-11e6-b52e-5cc5d4b571d2', '拜访方式', '7', '120', '1', '1', '0', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-19 03:14:09');

-- page_layout字段 未完成
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = 'hxf28655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = '6b876613-9c13-44cd-ac26-8cb563c5e6d3');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'c3829183-d2b3-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '10' WHERE (`id` = '6d278655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `order` = '11' WHERE (`id` = 'hxf78655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `order` = '12' WHERE (`id` = 'hxf18655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `display_mode` = 'both' WHERE (`id` = '6d278655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = 'hxf28655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = '6b876613-9c13-44cd-ac26-8cb563c5e6d3');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = 'c3829183-d2b3-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = '6d278655-d2c8-11e9-b9aa-emily139dec0');
-- page_layout字段 已完成
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'ab6dbc80-bc50-11e6-92c8-5cc5d4d378cb');
UPDATE `page_layout_fields` SET `order` = '2' WHERE (`id` = '58df7a21-7408-1111-9c8e-5cc5d4b571d2');
UPDATE `page_layout_fields` SET `label` = '医生', `order` = '3' WHERE (`id` = '59183d61-7408-11e6-a185-5cc5d4b571d2');
UPDATE `page_layout_fields` SET `label` = '状态', `order` = '4' WHERE (`id` = '59059fc0-7408-11e6-abea-5cc5d4b571d2');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('c7afc64f-bcef-11e6-8bed-5cc5d4d32056', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', 'field', 'a6da65b0-1aab-11e7-b6bf-5cc5d4d378cb', '医院及科室', '5', '6', '0', '0', 'view', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-29 09:12:23', '0', '0', '0');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = '590eee8f-7408-11e6-8f8b-5cc5d4b571d2');
UPDATE `page_layout_fields` SET `order` = '7' WHERE (`id` = 'hxfee92c-d2c7-2222-b9aa-0298a739dec0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`) VALUES ('63dee92c-d2c7-11e9-b9aa-emily1392057', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', 'field', '559d2061-7408-11e6-8e13-5cc5d4b571d2', '拜访类型', '8', '6', '0', '0', 'both', '', '0', '1', '2019-09-06 09:24:18', '1', '2020-07-29 08:50:26', '0', '0', '0', '0', '0', '0');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = 'bfbc1380-b5de-11e6-95fb-5cc5d4d378cb');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`) VALUES ('hxf78655-d2c8-11e9-b9aa-emily1392058', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', 'field', 'ae1001f9-7534-4805-9632-4482ada5cf7c', '协访人', '11', '6', '0', '0', 'both', '', '0', '1', '2019-09-06 09:24:18', '1', '2020-08-19 12:44:30', '0', '0', '0', '0', '0', '0');
UPDATE `page_layout_fields` SET `label` = '下次拜访' WHERE (`id` = 'hxf18655-d2c8-5555-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `object_field_id` = '5327174f-7408-dasw-a94a-5cc5d4b571d2' WHERE (`id` = '590eee8f-7408-11e6-8f8b-5cc5d4b571d2');

-- 授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('d7fdf61f-e21d-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'c54c2180-bb9a-11ea-ab68-4f37c5a3e901', '8', '0', '1', '2020-07-01 13:13:10', '1', '2020-07-01 13:13:10', 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('d7fdf61f-e21d-11ea-bc49-0215c63fce1b', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'c54c2180-bb9a-11ea-ab68-4f37c5a3e901', '8', '0', '1', '2020-07-01 13:13:10', '1', '2020-07-01 13:13:10', 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('d7fdf61f-e21d-11ea-bc49-0215c63fce1c', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c54c2180-bb9a-11ea-ab68-4f37c5a3e901', '8', '0', '1', '2020-07-01 13:13:10', '1', '2020-07-01 13:13:10', 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('d7fdf61f-e21d-11ea-bc49-0215c63fce1d', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'c54c2180-bb9a-11ea-ab68-4f37c5a3e901', '8', '0', '1', '2020-07-01 13:13:10', '1', '2020-07-01 13:13:10', 'null');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('4c3a477e-e21e-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('4c3a477e-e21e-11ea-bc49-0215c63fce1b', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('4c3a477e-e21e-11ea-bc49-0215c63fce1c', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('4c3a477e-e21e-11ea-bc49-0215c63fce1d', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '597a0c70-7408-11e6-bd2a-5cc5d4b571d2', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1b', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1c', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1d', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1e', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce1f', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce2a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce2b', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce2c', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9a76418e-e21e-11ea-bc49-0215c63fce2d', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'a03a6a40-bcee-11e6-b4a8-5cc5d4d378cb', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1b', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1c', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1d', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1e', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce1f', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce2a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce2b', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce2c', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c99fcf50-e21e-11ea-bc49-0215c63fce2d', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '0', '1', '2019-09-06 20:22:45', '1', '2019-09-06 20:22:45');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '7f9bfae2-a45f-49ad-ad60-5c542450f602');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '91a90b21-b817-4edf-9623-4205c661942f');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '22ad99f9-e961-47f6-9278-be7be37b76e2');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = 'f1332db6-0f36-4562-a6f0-c7042ebdd7dc');

-- 已完成page_layout按钮
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dbce47ae-bcf4-11e6-b465-5cc5d4d30936', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '59e02140-7408-11e6-9dda-5cc5d4b571d2', 'edit', '1', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-28 16:00:02', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dbdaa3c0-bcf4-11e6-95ba-5cc5d4d30937', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '59e85ea1-7408-11e6-85d8-5cc5d4b571d2', 'view', '2', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-28 16:00:02', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('dbe77500-bcf4-11e6-b4c2-5cc5d4d30938', '58c2f170-7408-11e6-98b1-5cc5d4b571d2', '59f09c00-7408-11e6-9dcc-5cc5d4b571d2', 'view', '3', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-28 16:00:02', '0', '0');

-- -----------------------------------------------------电脑端 Start-----------------------------------------------------------
-- page_list字段
UPDATE `page_list_fields` SET `deleted` = '0' WHERE (`id` = '5b06168d-03a4-440b-b2ee-f2f171d1a661');
UPDATE `page_list_fields` SET `object_field_id` = 'eccb2df5-8654-11e7-b993-186590dcd3c9' WHERE (`id` = '5b06168d-03a4-440b-b2ee-f2f171d1a661');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '47331a37-d535-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'ed912fb6-508c-4208-8784-2d382b645811');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'c2aed80d-2aa0-40cf-bcd2-a3b355e8c2f7');
UPDATE `page_list_fields` SET `order` = '8' WHERE (`id` = '836fed00-5d65-11e7-8a0e-c85b76d4d416');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '4d94cac1-a59c-4a43-8928-be64783ff5ef');
UPDATE `page_list_fields` SET `width` = '120' WHERE (`id` = '836fed00-5d65-11e7-8a0e-c85b76d4d416');
UPDATE `page_list_fields` SET `label` = '医院及科室', `width` = '180', `deleted` = '0' WHERE (`id` = '47331a37-d535-11e9-b9aa-0298a739dec0');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ed912fb6-508c-4208-8784-2d382b642212', 'cd11034f-5d5f-11e7-9dcf-c85b76d4d416', '5327174f-7408-dasw-a94a-5cc5d4b571d2', '拜访时间', '8', '120', '1', '1', '1', '0', '1', '2020-07-09 11:37:47', '1', '2020-08-19 14:08:01');
UPDATE `page_list_fields` SET `object_field_id` = '53a12951-7408-11e6-be79-5cc5d4b571d2' WHERE (`id` = 'f8c8219c-f0af-413a-9049-0fe3f7c0fa75');
UPDATE `page_list_fields` SET `object_field_id` = '579d3621-7408-11e6-b62e-5cc5d4b571d2' WHERE (`id` = '5d5f2557-3933-4e5a-a126-3c13f1333107');
-- page_layout字段
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'e01955f4-5bf6-46f5-a03c-3ecb012c6c7d');
UPDATE `page_layout_fields` SET `order` = '3' WHERE (`id` = '80c40607-d53c-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '4' WHERE (`id` = 'c22f2546-d53c-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '5' WHERE (`id` = '47777e9b-d53c-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '6' WHERE (`id` = '3f919490-5d7d-11e7-8bb6-c85b76d4d416');
UPDATE `page_layout_fields` SET `label` = '医院及科室', `order` = '7' WHERE (`id` = '9d6bee93-d53e-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '9' WHERE (`id` = '3f919491-5d7d-11e7-a844-c85b76d4d416');
UPDATE `page_layout_fields` SET `order` = '11' WHERE (`id` = '1c908ddc-d53f-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '12' WHERE (`id` = '192fdf4d-d53e-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `label` = '状态', `order` = '13' WHERE (`id` = '3f91948f-5d7d-11e7-97c5-c85b76d4d416');
UPDATE `page_layout_fields` SET `order` = '14' WHERE (`id` = 'd16a15e1-82bc-4eef-85a3-0f0beb014ef6');
UPDATE `page_layout_fields` SET `order` = '15' WHERE (`id` = '662dbfb9-d53f-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `order` = '16' WHERE (`id` = '8208241b-d53f-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'eb0a11f2-d53c-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'b5a227da-a845-43ad-a90e-d8f484896d4f');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '191911ea-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '5d4aa3ee-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '7840ed21-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'a21d1f42-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'b5f04975-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'd5eb510f-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'f5ce1f8f-d53d-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '3f919492-5d7d-11e7-b6b3-c85b76d4d416');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '6fc8bd35-d53e-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '577a7db0-5d7d-11e7-9074-c85b76d4d416');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('3f919491-5d7d-11e7-a844-c85b76d42219', 'fabfa240-5d71-11e7-928a-c85b76d4d416', 'field', '5327174f-7408-dasw-a94a-5cc5d4b571d2', '拜访时间', '10', '6', '0', '1', 'both', '0', '1', '2017-06-30 00:00:00', '1', '2020-08-19 14:18:23', '0', '0', '0');
UPDATE `page_layout_fields` SET `object_field_id` = 'eccb2df5-8654-11e7-b993-186590dcd3c9' WHERE (`id` = 'fbbd10ab-c5e8-4b9f-af05-3ac8e52a8b7e');
UPDATE `page_layout_fields` SET `disable_click` = '1' WHERE (`id` = '80c40607-d53c-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `object_field_id` = '579d3621-7408-11e6-b62e-5cc5d4b571d2' WHERE (`id` = 'd16a15e1-82bc-4eef-85a3-0f0beb014ef6');
UPDATE `page_layout_fields` SET `object_field_id` = '53a12951-7408-11e6-be79-5cc5d4b571d2' WHERE (`id` = '192fdf4d-d53e-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `object_field_id` = '55acfede-7408-11e6-b52e-5cc5d4b571d2' WHERE (`id` = '192fdf4d-d53e-11e9-b9aa-0298a739dec0');

-- 授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d17a3fe0-e22a-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'dd00eaa1-1d9b-11e6-8e8c-5cc5d4d378cb', '1', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d17a3fe0-e22a-11ea-bc49-0215c63fce1b', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'dd00eaa1-1d9b-11e6-8e8c-5cc5d4d378cb', '1', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d17a3fe0-e22a-11ea-bc49-0215c63fce1c', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'dd00eaa1-1d9b-11e6-8e8c-5cc5d4d378cb', '1', '0', '1', '2019-09-06 09:09:34', '1', '2019-09-06 09:09:34');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fa7906f9-e22a-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'cd11034f-5d5f-11e7-9dcf-c85b76d4d416', '0', '1', '2019-09-09 06:06:56', '1', '2019-09-09 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fa7906f9-e22a-11ea-bc49-0215c63fce1b', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'cd11034f-5d5f-11e7-9dcf-c85b76d4d416', '0', '1', '2019-09-09 06:06:56', '1', '2019-09-09 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fa7906f9-e22a-11ea-bc49-0215c63fce1c', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'cd11034f-5d5f-11e7-9dcf-c85b76d4d416', '0', '1', '2019-09-09 06:06:56', '1', '2019-09-09 06:06:56', '1');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1b', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1c', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1d', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1e', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('40024542-e22b-11ea-bc49-0215c63fce1f', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '58551470-7408-11e6-85ed-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');

-- 微信端已完成page_layout修正
UPDATE `page_layout_fields` SET `object_field_id` = '53a12951-7408-11e6-be79-5cc5d4b571d2' WHERE (`id` = '6d278655-d2c8-4444-b9aa-0298a739dec0');

-- page_layout授权修正
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1f');
DELETE FROM `page_layout_assignments` WHERE (`id` = '193147a7-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = '4bbe7ccb-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = '6478fead-fc21-479a-8ffd-d05430e11477');
DELETE FROM `page_layout_assignments` WHERE (`id` = '89041a00-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = '9984d136-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'c5c005f1-ec84-45a3-957c-f54059058ad8');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'd831aa23-5d80-11e7-a035-c85b76d4d416');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'd831aa24-5d80-11e7-9638-c85b76d4d416');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'd8905e55-f805-4af8-a9a9-6446bc9e9795');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'de2fc9ac-3550-4d49-9570-69ab9aef3381');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'f3b7746f-429d-4d1b-be78-46b81d2989e2');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'fc5eb409-2e72-4c61-b9aa-391523f4bde1');
DELETE FROM `page_layout_assignments` WHERE (`id` = '020ca4fb-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = '1a5e6f1c-8880-11e7-b5b3-02d2a924e5ba');
DELETE FROM `page_layout_assignments` WHERE (`id` = '1b068448-bc26-11ea-bc49-0215c63fce1a');
DELETE FROM `page_layout_assignments` WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1a');
DELETE FROM `page_layout_assignments` WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1c');
DELETE FROM `page_layout_assignments` WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1e');
DELETE FROM `page_layout_assignments` WHERE (`id` = '440689dd-993e-4c46-a514-0c0bc89ee1e6');
DELETE FROM `page_layout_assignments` WHERE (`id` = '5e96dc23-1338-426b-aa7e-336d1aa9cbf3');
DELETE FROM `page_layout_assignments` WHERE (`id` = '7977ddee-d537-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'a707f18f-0f77-11e7-8b66-5cc5d4d378cb');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'b65c6471-0717-4f6e-88e0-810c05e94a87');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'c1e5ef54-26b9-4ec9-a7b2-5b1eb852c164');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'd830bfc0-5d80-11e7-a5b8-c85b76d4d416');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'fd06a514-d094-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = '1b067cec-bc26-11ea-bc49-0215c63fce1a');
DELETE FROM `page_layout_assignments` WHERE (`id` = '1f245a4e-d095-11e9-b9aa-0298a739dec0');
DELETE FROM `page_layout_assignments` WHERE (`id` = 'ab173840-0f77-11e7-8f62-5cc5d4d378cb');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '1b068093-bc26-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = '3bc99012-d095-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'a9848a51-0f77-11e7-80ce-5cc5d4d378cb');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1e');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1f');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2d');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb01', '53de9674-1da3-11e6-ac97-5cc5d4b571d2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2017-08-23 00:00:00', '1', '2017-08-23 00:00:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb02', '02ebda16-b601-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb03', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2020-08-20 03:10:57');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb04', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2020-08-20 03:10:57');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb05', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2020-08-20 03:10:58');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb06', '53de9674-1da3-11e6-ac97-5cc5d4b571d2', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2017-06-30 00:00:00', '1', '2017-06-30 00:00:00');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb07', '53de9674-1da3-11e6-ac97-5cc5d4b57138', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb08', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb09', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0cc374ee-e294-11ea-bc49-0215c63fcb10', '72e462a0-b600-11ea-aab5-0215c63fce1a', 'a449280f-bc67-11e6-9934-5cc5d4d378cb', '585cb58f-7408-11e6-934d-5cc5d4b571d2', 'fabfa240-5d71-11e7-928a-c85b76d4d416', '0', '1', '2019-09-12 09:09:34', '1', '2019-09-12 09:09:34');

-- recod_type修正
DELETE FROM `role_to_object_record_types` WHERE (`id` = '126c4cbd-e1c3-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '15830804-971a-4de8-8ba2-5c6708e83590');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '30e201c0-e1c0-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '36616ea3-e1bf-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '53affa8c-c060-4bcc-afe4-89011944c7de');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '58ad6a44-e1bf-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '85ecebcb-e1bf-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'a9ca13b3-ecc7-46dc-9c16-4b76c08dcdfc');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'af6d836e-e1be-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'b8f5c354-cfc7-11e9-b9aa-0298a739dec0');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'e0d81088-15ab-4f74-aee4-f8ebb30a735a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'fa6f651d-e1be-11ea-bc49-0215c63fce1a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '126c4cbd-e1c3-11ea-bc49-0215c63f1024');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '15830804-971a-4de8-8ba2-5c6708e80933');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '30e201c0-e1c0-11ea-bc49-0215c63f1001');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '36616ea3-e1bf-11ea-bc49-0215c63f0957');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '53affa8c-c060-4bcc-afe4-890119440950');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '58ad6a44-e1bf-11ea-bc49-0215c63f0959');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '85ecebcb-e1bf-11ea-bc49-0215c63f095b');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'a9ca13b3-ecc7-46dc-9c16-4b76c08d0937');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'af6d836e-e1be-11ea-bc49-0215c63f0953');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'b8f5c354-cfc7-11e9-b9aa-0298a7390930');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'e0d81088-15ab-4f74-aee4-f8ebb30a0935');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'fa6f651d-e1be-11ea-bc49-0215c63f0955');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '126c4cbd-e1c3-11ea-bc49-0215c63f1025');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '15830804-971a-4de8-8ba2-5c6708e80934');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '30e201c0-e1c0-11ea-bc49-0215c63f1002');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '36616ea3-e1bf-11ea-bc49-0215c63f0958');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '53affa8c-c060-4bcc-afe4-890119440951');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '58ad6a44-e1bf-11ea-bc49-0215c63f095a');
DELETE FROM `role_to_object_record_types` WHERE (`id` = '85ecebcb-e1bf-11ea-bc49-0215c63f095c');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'a9ca13b3-ecc7-46dc-9c16-4b76c08d0938');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'af6d836e-e1be-11ea-bc49-0215c63f0954');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'b8f5c354-cfc7-11e9-b9aa-0298a7390931');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'e0d81088-15ab-4f74-aee4-f8ebb30a0936');
DELETE FROM `role_to_object_record_types` WHERE (`id` = 'fa6f651d-e1be-11ea-bc49-0215c63f0956');
UPDATE `role_to_object_record_types` SET `role_id` = '53de6f5e-1da3-11e6-b011-5cc5d4b57134' WHERE (`id` = '84b32a4f-5d84-11e7-8dfb-c85b76d4d416');
UPDATE `role_to_object_record_types` SET `role_id` = '5a013aaa-b5c5-11ea-aab5-0215c63fce1a' WHERE (`id` = 'a34581a1-0f93-11e7-a919-5cc5d4d378cb');
UPDATE `role_to_object_record_types` SET `role_id` = 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', `is_default` = '1' WHERE (`id` = 'a5170d4f-0f93-11e7-a911-5cc5d4d378cb');
UPDATE `role_to_object_record_types` SET `role_id` = '53de9671-1da3-11e6-93fb-5cc5d4b57136' WHERE (`id` = 'd831aa22-5d80-11e7-9399-c85b76d4d416');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d831aa22-5d80-11e7-9399-c85b76d41137', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'a467104f-bc67-11e6-a302-5cc5d4d378cb', '1', '0', '1', '2017-06-30 00:00:00', '1', '2020-08-20 03:37:16');
DELETE FROM `object_record_types` WHERE (`id` = 'eaacd59c-e1ba-11ea-bc49-0215c63fce1a');
DELETE FROM `object_record_types` WHERE (`id` = 'eefea1f4-e1ba-11ea-bc49-0215c63fce1a');
UPDATE `object_record_types` SET `label` = '面对面拜访' WHERE (`id` = 'a449280f-bc67-11e6-9934-5cc5d4d378cb');
UPDATE `object_record_types` SET `deleted` = '0' WHERE (`id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb');
UPDATE `object_record_types` SET `deleted` = '0' WHERE (`id` = '750dcf2e-2215-4a8f-b1ec-15e5857b7985');
UPDATE `object_record_types` SET `deleted` = '0' WHERE (`id` = '5b552ca9-2439-4838-827a-a691e709aff6');
UPDATE `object_record_types` SET `deleted` = '0' WHERE (`id` = '43b7c1ba-a616-491d-859e-020bee5281c6');

-- page_layout的record_type
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '1b068293-bc26-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1e');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce1f');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce2a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce2b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce2c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '9a76418e-e21e-11ea-bc49-0215c63fce2d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'a816544f-0f77-11e7-9410-5cc5d4d378cb');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c16c5a97-d094-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '1b068093-bc26-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '3bc99012-d095-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'a9848a51-0f77-11e7-80ce-5cc5d4d378cb');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1e');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce1f');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2a');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2c');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c99fcf50-e21e-11ea-bc49-0215c63fce2d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb01');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb02');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb03');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb04');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb05');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb06');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb07');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb08');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb09');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '0cc374ee-e294-11ea-bc49-0215c63fcb10');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '25b6fafd-87b4-11e7-927d-186590dcd3c9');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '2d16c8b6-15c9-4487-9471-955c5ce7f958');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1b');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1d');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '40024542-e22b-11ea-bc49-0215c63fce1f');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '614637ed-d537-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = '577a7db3-5d7d-11e7-ba05-c85b76d4d416');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'c55e29ee-8236-4824-8149-dcc250b267d1');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'd32f5d41-d536-11e9-b9aa-0298a739dec0');
UPDATE `page_layout_assignments` SET `object_record_type_id` = 'a467104f-bc67-11e6-a302-5cc5d4d378cb' WHERE (`id` = 'de6612a6-32c9-45df-ad49-35e35c58baed');

-- 客户反馈修复
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '6d278655-d2c8-11e9-b9aa-emily139dec0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '6d278655-d2c8-4444-b9aa-0298a739dec0');
UPDATE `page_layout_fields` SET `configurations` = '{\n    \"filter_by_metrics\":false,\n    \"product_fields_display_on_bottom\": true,\n    \"page_layout\":{\n        \"call_messages\": {\n    \"default\": \"cs_call_message\"\n        }\n    },\n    \"need_key_messages\": false,\n    \"fold\": false\n}' WHERE (`id` = 'c3829183-d2b3-11e9-b9aa-0298a739dec0');
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0e4d46e4-1387-497f-87c2-1b4d3ed53e66', '6b641a78-ec76-4308-b60d-8fad8f35911b', 'cs_call_message', '拜访-关键信息', 'custom', 'both', '0', '1', '2018-08-28 11:00:03', '1', '2018-08-28 11:00:03');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('8397efc2-d4bd-4afb-a4db-30474ff5918f', '0e4d46e4-1387-497f-87c2-1b4d3ed53e66', 'field', '0fbf3216-2728-4fce-b230-3a8df77d3cb6', '客户反馈', '1', '6', '1', '0', 'both', '0', '1', '2018-08-28 11:00:03', '1', '2020-01-14 13:10:24');
UPDATE `object_fields` SET `picklist_id` = '1e65b48f-477f-11e7-a834-34f39ab71988' WHERE (`id` = '0fbf3216-2728-4fce-b230-3a8df77d3cb6');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'd89df833-0d24-4fd9-85fc-83b276d29540');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = 'f8c8219c-f0af-413a-9049-0fe3f7c0fa75');
UPDATE `page_list_fields` SET `object_field_id` = '55acfede-7408-11e6-b52e-5cc5d4b571d2' WHERE (`id` = '0790558b-d530-11e9-b9aa-0298a739dec0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('86a4d81e-9415-11ea-aab5-0215c63fce1a', 'fabfa240-5d71-11e7-928a-c85b76d4d416', 'field', '7831ac5e-b5dd-11e6-9dae-5cc5d4d378cb', '关键信息', '11', '12', '0', '0', 'view', '{\n    \"filter_by_metrics\":false,\n    \"product_fields_display_on_bottom\": true,\n    \"page_layout\":{\n        \"call_messages\": {\n    \"default\": \"cs_call_message\"\n        }\n    },\n    \"need_key_messages\": false,\n    \"fold\": false\n}', '0', '1', '2019-09-12 00:00:00', '1', '2020-08-19 14:18:23', '0', '0', '0');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '1c908ddc-d53f-11e9-b9aa-0298a739dec0');

-- 两天内的拜访显示编辑按钮
-- 修改ps/pagelayout/base.py
-- object_actions的visibility_setting_ps设置为1
UPDATE `object_actions` SET `visibility_setting_ps` = '1' WHERE (`id` = '59e85ea1-7408-11e6-85d8-5cc5d4b571d2');

-- 两天后拜访自动提交
-- ps/task下增加py文件，可通过python manage.py shell调用测试
-- 调度表：djcelery_crontabschedule
INSERT INTO `djcelery_crontabschedule` (`id`, `minute`, `hour`, `day_of_week`, `day_of_month`, `month_of_year`) VALUES ('17', '0', '1', '*', '*', '*');
-- 任务表：djcelery_periodictask
INSERT INTO `djcelery_periodictask` (`id`, `name`, `task`, `args`, `kwargs`, `enabled`, `last_run_at`, `total_run_count`, `date_changed`, `description`, `crontab_id`, `interval_id`) VALUES ('17', 'call_complete', 'call_complete', '[]', '{}', '1', null, '0', now(), '', '17', null);

-- 只能保存2天内的拜访
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`) VALUES ('hxf4ef70-e980-11e9-b9aa-0298a739dec0', '5299a45e-7408-11e6-bbe0-5cc5d4b571d2', '拜访日期必须为2天内', '拜访日期必须为2天内', 'trigger', '', '', '1', '1', '2019-10-11 03:26:32', '1', '2020-05-30 01:37:07', 'pre_save', '1', 'custom', 'validate_call_date');
UPDATE `object_validations` SET `trigger_code` = 'import datetime\nnow = datetime.datetime.now()\nnow_time = datetime.datetime.now().date()\nallow_start_date = (now - datetime.timedelta(days=2, hours=0, minutes=0, seconds=0)).date()\nallow_end_date = (now + datetime.timedelta(days=2, hours=0, minutes=0, seconds=0)).date()\nif type(instance.call_date) == datetime.date:\n	call_date = instance.call_date\nelse:\n	call_date = datetime.datetime.strptime(instance.call_date, \'%Y-%m-%d\').date()\nif call_date > allow_end_date or call_date < allow_start_date:\n	message = \'仅可保存2天以内拜访\'\n	raise create_validation_trigger_rule_errors(message)' WHERE (`id` = 'hxf4ef70-e980-11e9-b9aa-0298a739dec0');
UPDATE `object_validations` SET `deleted` = '0' WHERE (`id` = 'hxf4ef70-e980-11e9-b9aa-0298a739dec0');
-- 2天以为的拜访只限制以后，不限制以前
UPDATE `object_validations` SET `trigger_code` = 'import datetime\nnow = datetime.datetime.now()\nnow_time = datetime.datetime.now().date()\nallow_start_date = (now - datetime.timedelta(days=2, hours=0, minutes=0, seconds=0)).date()\nallow_end_date = (now + datetime.timedelta(days=2, hours=0, minutes=0, seconds=0)).date()\nif type(instance.call_date) == datetime.date:\n	call_date = instance.call_date\nelse:\n	call_date = datetime.datetime.strptime(instance.call_date, \'%Y-%m-%d\').date()\nif call_date > allow_end_date:\n	message = \'仅可保存2天以内拜访\'\n	raise create_validation_trigger_rule_errors(message)' WHERE (`id` = 'hxf4ef70-e980-11e9-b9aa-0298a739dec0');

