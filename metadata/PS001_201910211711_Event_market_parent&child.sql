-- b72453fc-efdb-11e9-b9aa-0298a739dec0  市场部role

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('632b7a1e-efdc-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', '1', '1', '1', '1', '0', '1', '2019-10-01 00:00:00', '1', '2019-10-01 00:00:00', '0', '1', '0', '0');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f4ced316-efdc-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'dd8e572e-1d93-11e6-b5d0-5cc5d4d378cb', '1', '0', '1', '2019-10-16 11:17:36', '1', '2019-10-16 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('101477c5-efdd-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c19e8bc0-a49e-11e6-8785-5cc5d4d378cb', '1', '0', '1', '2019-10-16 11:17:36', '1', '2019-10-16 11:17:36');

-- 活动管理 list  220bc1b0-a627-11e6-8523-5cc5d4d378cb

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('bb85f02e-efdd-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '220bc1b0-a627-11e6-8523-5cc5d4d378cb', '0', '1', '2019-10-16 06:06:56', '1', '2019-10-16 06:06:56', '1');

-- 40aed951-5f72-11e6-9faa-5cc5d4d378cb  新建 

INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('10a127af-efe8-11e9-b9aa-0298a739dec0', '220bc1b0-a627-11e6-8523-5cc5d4d378cb', '40aed951-5f72-11e6-9faa-5cc5d4d378cb', '0', '0', '1', '2019-10-16 00:00:00.000000', '1', '2019-10-16 00:00:00.000000', '0', '0', '0');

-- 市场部会议 record bdf5191c-efe8-11e9-b9aa-0298a739dec0  05b19885-efe9-11e9-b9aa-0298a739dec0
-- 市场部会议子会议 record 2c247526-efe9-11e9-b9aa-0298a739dec0  506b5b72-efe9-11e9-b9aa-0298a739dec0

INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bdf5191c-efe8-11e9-b9aa-0298a739dec0', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', 'cs_market', '市场部会议', 'custom', '1', '0', '1', '2019-10-16 10:33:29', '1', '2019-10-16 10:33:29');
INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('05b19885-efe9-11e9-b9aa-0298a739dec0', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', 'cs_market__report', '市场部会议(报告)', 'custom', '1', '0', '1', '2019-10-16 10:33:29', '1', '2019-10-16 10:33:29');
INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2c247526-efe9-11e9-b9aa-0298a739dec0', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', 'cs_market__child', '市场部会议子会议', 'custom', '1', '0', '1', '2019-10-16 10:33:29', '1', '2019-10-16 10:33:29');
INSERT INTO `object_record_types` (`id`, `object_id`, `name`, `label`, `source`, `display_order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('506b5b72-efe9-11e9-b9aa-0298a739dec0', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', 'cs_market__child__report', '市场部会议子会议(报告)', 'custom', '1', '0', '1', '2019-10-16 10:33:29', '1', '2019-10-16 10:33:29');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1661db2e-efec-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '1', '0', '1', '2019-10-16 03:21:20', '1', '2019-10-16 03:21:20');


INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7a0fc698-b3a5-8648-ab97-5576f2043778','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_save_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_sent_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('cb0e2f71-1831-4743-af79-2c8de63364fd','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_rejected_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('5042f632-0f92-044f-82af-e62e0a0d5341','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_approved_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('fd284a10-88fb-564f-b9f4-4d0eaab40bf7','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_cancelled_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('aa5d33ca-d8a5-0143-bb1e-3a3c447d5628','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_finished_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('d14f34cb-6503-464a-834b-b512aa21846f','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_save_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_sent_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_rejected_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('02158020-fc1d-8246-9aad-b1979890fd12','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_approved_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('44b34643-1c31-5b4a-82d0-f404cf317007','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_writeoff_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('a984f9b0-72b4-8d4e-a85b-29747163b978','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_save_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('95063623-9ef5-c948-8c93-cebd70d0accb','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_sent_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('60d38807-39ba-fe43-8f4e-be2c734a4498','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_rejected_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('f36672cd-4ced-4945-a990-8e2e486402a0','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_approved_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('357cdab5-aef3-f546-ae3b-8448939be95d','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_cancelled_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_finished_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('03c5871b-71cd-0047-a1f1-8b9ef45471f0','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_save_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('c81412c2-1248-c947-b527-e2efc6d368d0','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_sent_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('50c903e7-3b99-2143-8f59-3b3dc53dd249','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_rejected_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('579cc719-1a42-3e4d-9338-1c5438082bb2','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_approved_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('d573e8d2-54e6-9d4b-b79e-ff3930cec3d9','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_writeoff_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('dc8120ee-f65f-bc4b-852c-7b0264795190','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_save_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('56f6c8a2-3971-cd48-81da-8a2f85b8b3a4','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_sent_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('e3d9b091-433d-4049-b738-0a9f0cf8398d','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_rejected_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('2d8ce88b-e968-aa46-8831-d24ceef70dda','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_approved_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('89413c75-697a-a24c-9291-e3a3ba57cfaa','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_cancelled_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_finished_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('c20fa639-65c8-8e40-bb0a-7aea087e154d','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_save_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('7263a6ac-8390-3641-b455-71a609f7f522','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_sent_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('36c01b8c-5f73-0f4b-94cf-03fc57250798','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_rejected_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('705a6f75-de7e-5c43-a2d7-2ee3c7d17b52','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_approved_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('3f7df0a7-9c80-b947-8143-7dceb36a14eb','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_writeoff_s', '市场部会议详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('779ec230-6a79-de4d-b8c0-1212abb57353','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_save_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('b8d76de4-6de6-ae41-bbd4-7d7744789539','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_sent_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('561a0eb4-7ddf-4347-9568-1dad38e29fbb','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_rejected_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('8f822cd0-9574-624a-9c69-412602491ac7','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_approved_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('e828d3df-a884-ea48-bf6c-adea196180de','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_cancelled_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('ab9fd8ac-18aa-a649-9958-eb70242a4d18','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_finished_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_save_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_sent_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('6cee2da4-f165-304a-8466-b125409f232d','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_rejected_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('b71c7ef6-e41a-df45-9f39-7c2eeb546b60','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_approved_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('5ce209a0-21a0-ad42-a3cb-074e58b1dc87','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_writeoff_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW());


-- 主会议字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('6d5aaa20-9c84-ef46-b455-3bc9e683e6f4','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f803d32-d158-f547-a962-5b5e18bb8272','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dbbb4442-ea87-d74f-8282-ef5e06462dd5','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24eca724-1799-0f4c-b087-4de24a6c3e1a','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a06d5b80-871b-7345-ae54-85ac4829e192','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c8617c1-b461-db45-88d4-d45f5ca72b68','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04fdd605-b3b3-d645-b669-443239a3c4b0','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67362192-1fd9-2248-9dab-64a99f8ed9bb','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('879feb7c-cfa1-0544-9688-3d5549c76c35','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0626d09f-9cb0-2741-99c8-85e43566e975','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9964f4a1-5c07-5840-973d-2295700d72b8','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70091b8b-f7e4-c94b-b23d-a134ad4a0b52','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb0a15e4-e002-d64d-ae99-3f7995295e42','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a0811d81-7de1-3846-b5c5-c1bcb7663d32','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8dee2ce4-20ac-6847-a795-0ae7a61273b6','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94370fc0-849f-f640-9c23-2f9c4c99a950','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8612637b-7498-3449-a733-47a738f120d9','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16e41b0b-d678-f749-b803-065d2673cde7','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b1ce646d-246d-bb49-9140-6cbff48a4f6e','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88ab5fd3-ec5e-784f-b11a-5f3174c31df3','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be8bf41d-8fef-4246-b112-39b011656f87','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b8e7d00-0b52-704b-8499-340c223a2355','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d51588e7-7f22-f54a-b3a9-0f3119b1551a','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f76f41fd-fd2a-b84e-b97f-7fbca84a3637','7a0fc698-b3a5-8648-ab97-5576f2043778', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('858dcfef-b1a8-0b40-a20e-9c24e1394561','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f727c45c-ce03-e140-9095-710645e31b07','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4aeb3a2f-cec7-e744-84d9-c8a6f0567fcf','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9572c5ae-c6c0-ff44-a9d4-9b492fc3c856','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94fb81c7-76af-0945-86da-45c975625ee7','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d86c3ec5-b3a6-fd43-971c-e88c00c71100','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a22569c9-ca79-7946-b487-3973cea091cc','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04c9935d-d794-ce4c-a05f-3a6a6dca17d9','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('35df3b51-626c-c746-a37b-60c4335081db','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('caae1159-669b-f845-9174-13b4baed865b','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('582e2a6e-63e7-d440-bafc-397a61bfff41','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5150a881-d3cd-5f46-bf67-9404ec08d2f6','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('058126f3-ce63-1045-bcae-2f5fd3f06540','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd2ac810-6a10-8f49-8ec7-ff1b9dd05efd','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6e5ac83-e49d-a741-bd2b-9d62970d55c0','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2fa0d546-4629-684d-8853-21e63ce9b68e','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('037891c4-7d51-4d41-8944-6b5f731670be','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5f0733d-87da-4742-93b1-0ec273c9c3ec','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5d150833-7e83-5b42-b722-fc392dcbf8b8','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f274748f-2f53-ff44-887b-3710cae63c96','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c971cbe-d13e-eb4e-9602-5669cd5787a3','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3023af78-98fb-9946-86c9-339aa7485f95','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('98a4a6a7-cd9d-0c4d-969a-485a765479f4','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('42581b33-c50b-1448-bf30-93ea8528566e','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('fced36f8-2d1a-bf4d-a85b-0964e3356c1f','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd5d2fb0-7869-474e-a415-dc64a765ebd6','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0854a7f-55a3-4741-bea2-92b1da5bf9e7','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f216de94-1c4d-674f-bcd3-7dd86821efce','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62464073-813f-684e-b8f0-5d395865b459','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8cd649da-da36-2642-92fb-649b839fa26f','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24886a46-6e2d-1149-951a-fd55acccabc8','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b29ffed8-f9bd-434d-a7c1-7a582d1ff305','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17b3e99c-ccbf-6847-a134-80b6366aeed6','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5c32d4d-22e2-3f48-8c8a-3b242dd66a7e','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e501edee-d560-2546-85cb-845853f1084c','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc6e5a6a-06c5-8548-b3a3-c09b761c49b9','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec15f76a-f9b2-6b4c-aee0-849590455193','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9b560369-d6d5-904c-a125-5c912a3c0657','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4d757d78-734b-4442-bc65-c48531e36efc','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd6044b6-10dd-9a41-84df-c46c86a1caea','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11a4d432-4bbe-1c4c-815c-11b5a184ff9f','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8f27dca-e685-4147-93ff-ecae39f8aa72','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bcddd11e-398f-2e4a-97ed-3af33fa5998d','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a28c6e13-6b7e-7e40-ae75-2ffedcd900ab','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3791551-40ad-d548-a2e2-0351fa0dd46e','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36cd0a03-9c47-bd46-b632-c5532fb00731','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('291c1f99-337a-a54d-a98d-ced5d2aa097e','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2efca3e6-57a3-8749-a9f1-39be71e1f2d0','cb0e2f71-1831-4743-af79-2c8de63364fd', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('0877a3a4-35b3-c442-96a5-4c3aecbf8184','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b345a332-2b88-9448-ab7e-f5641ef9db66','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70674841-3891-5049-a694-f051ca59d64a','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dbdcbdcb-d1e0-9144-af07-7596a2e1f646','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d09b3c38-a5ff-6d4d-b6b0-09c0f7dbbcab','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2250705b-53ce-484f-b06f-4a74a5a4af45','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bba4cd38-d011-c84f-a832-eb07a09a2e6e','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c9f79045-8f14-ab4d-a1ec-f5474e3e1ab1','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d236d368-c6db-b143-8e3a-bcb9f4aa9f57','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a179214-8977-a143-b364-9c36fd143e01','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1cde171e-dae6-ac4c-85c6-953c24fe6b27','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('423d19cf-bf7c-f149-9f02-97c65941c9ec','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('942c0193-3739-9646-8acf-926ddac41f76','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd0db990-cdf7-0c4c-ac1b-0fa9c5426614','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('edd353f8-4258-c143-8d49-ca13358c72f1','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8ee7815-5a24-d542-b5b3-c343c52930eb','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a67bc654-843e-124a-a1b6-57d4ced30a1b','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9714f32f-e3ed-d64f-91f8-5b8f5a622eb9','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8149339d-07bf-3f4e-8b4d-38bc24f6da9a','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a3b225b-62b8-f141-83bb-8cca5133d611','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4c39535-fc1a-8e4d-8f5e-63340d19dece','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07bbe2b2-9757-af48-8624-866f15ce29bf','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b0188bb-b053-5144-91e8-dd93a95ffd74','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a5858047-08f2-e14c-be04-27bfc0c38d7f','5042f632-0f92-044f-82af-e62e0a0d5341', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('e9f0daee-3fb7-4d44-9917-4d60b7dd4833','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13a2ef5e-d275-e744-b07f-152c7a366647','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a6156cc-5ed9-f749-8178-738775d1b82e','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22957e1c-4e6a-a742-a171-34f6f83d5ec1','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d6ece45-d912-6b41-b86c-80113116f3da','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('30ab376b-6c5b-ed4c-94b8-11b8c5ec0fcb','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ec26571-b992-4541-9a4e-233abb24451b','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c6e418b8-0c46-864c-b35d-d852145eebbb','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7b29247e-18e6-cc4d-9c53-7278a8a324ee','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1930ddd5-0f72-7e41-8bce-aa748012e7f4','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67fa4ff6-485c-a047-a67a-200c70a533ec','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4ef92d08-e091-ec4d-a9d8-1e6b8ab20686','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('714a3c2e-5bff-754d-878d-b417b8578659','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1276382-8e57-2844-9116-1cead21581ec','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9547da60-9990-aa4f-8e07-8a40257f925a','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('886db370-e4af-3f4e-b359-1dd15e9b73f2','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8de761fe-4cfd-504c-9214-7161f971db13','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e63fb6a-11d6-3e44-9917-73290b532e23','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e00f4bc9-1486-e843-a139-d05500eaf2d6','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b72e1443-15d6-d646-9f24-7365dfb9b4a7','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74d319a4-8b93-774b-9728-b096ce3e06bf','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77f9167a-00d8-e342-a1bb-5c34017dd12d','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5372c79a-a288-0744-b158-bb886105efd6','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('faa852c4-5535-ec4b-addc-43185feb8ea7','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('3b5d1bb2-435e-8d4b-b077-972ed95bd871','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d18054a-7169-1f47-980b-a30187564e3f','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('acbda529-be21-b247-bd51-dbccbc96b356','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8309ec0a-3f7c-9d4f-a416-71d3833aa00c','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7c02dd87-e503-274f-89ef-353918a1f0b0','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db826b21-18d7-5b4e-86ac-772c09199827','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3f0155c1-a22e-4e4e-aa7b-85b60993ea55','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af19c290-f5f6-ee4d-a05d-7a1dd89261e9','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc966502-a4dd-104b-90d8-ec5d8cf88cad','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c44955da-631c-ce49-acd4-d58475c71a82','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3e2641d-ee00-9441-892d-d3740f465405','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9d8979b1-a8e5-8442-9165-785a06128591','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('44dadb73-299a-5e45-aa7b-f3bda7c10ad2','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('389b4dc8-58b6-0043-907b-ebe50ce59781','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fde9dc29-210f-2e4b-8cf1-351d94d6cd0b','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b587e6c1-548b-4741-9f45-eb3b3b85238a','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ea808243-97ba-784f-b068-8de982f6ffb8','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('247d1f93-4edd-fc4c-a5a0-6a9c328232fd','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0247b26e-c844-c74d-94bc-f62a5ec61340','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd67e022-3a92-2b47-a11a-c545ec08e56a','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('42371cbc-a8f3-b34b-bca3-cf3e2903732f','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e95cfa8-909c-964e-8d14-1d4d7a2c9414','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('273ff94f-8588-3744-beee-4cc9ed34107f','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('bc5a0bc4-525d-5441-a91f-ba73b34a313d','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('059e193e-2688-154b-8be6-fa90ff1a8f99','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3430ed1b-947d-4843-881d-5bd76e9d6d23','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79b39929-c04c-d24f-a0a9-3709e9974770','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88344f22-cebc-c842-b6e6-73a5ce2b781d','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec170f5f-c976-e942-bf49-b49c8221b5c8','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ac1cf8e3-7b54-e345-a6a7-daec19e31c29','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d0faba75-07f8-9b45-85ef-cf9c737bb418','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a86450f9-d16b-2b48-9a9b-c404b1a61818','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ebd4eaf-1a1c-c844-aa18-7e6a805b5721','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd0746d9-cfc4-3545-9141-1d22df6176ef','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3852f0cf-b7d6-1449-9bf2-86c4a9fd54e6','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c6de44a-6d33-ad4b-9a7e-0b06dedbd395','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('753dbecc-58e0-8d4d-a36f-cacda40a8f40','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3545dd29-1687-ed49-8ea7-f9dee524fd69','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc4f041d-4d85-084a-93ac-5fb4ab8842cf','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('193b189f-b26e-d648-a001-0eda35bab000','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1a32ef0c-1f90-d744-bf9f-4d85b0a2394b','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc5a4105-0951-5440-83fa-2caee685a983','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb86ca63-4117-3b4b-b49a-19d78e88a4b4','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8bf6ab74-c33f-4343-b355-a21bcfa07a6f','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5e36236-4646-aa43-8623-5c313b5ff84e','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('90989640-4c32-9a4e-8e65-2e0224a8fdfa','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ddb9375c-e8dd-4347-b36b-bbe965b37b77','d14f34cb-6503-464a-834b-b512aa21846f', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d3c23a26-fe5d-394a-94cb-efdcc3421b94','d14f34cb-6503-464a-834b-b512aa21846f', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('756de5b6-780e-144f-8565-0e88062bd4ff','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('774f51ac-e953-f040-bff5-43426a7144e2','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('523ab80d-cda1-e340-8c66-ab51f48841ec','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4fc6c197-9573-8b4e-8a70-46a21d13e661','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6482bde-0553-274f-84d8-d1c7f33741d0','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d93c3a92-da62-5248-a0cb-55ea8763d700','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3e993351-45ec-2644-8ace-8c34d3ef2820','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dfd7590d-803c-154f-a7a4-442b69fc6120','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c5f4c698-88e4-6e49-ba29-832838d164fb','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('417bbbdf-35fa-be43-b34a-3af13521e132','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5b6a27b3-9209-1a4c-9d80-0ab438805b98','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87a3f3d6-6b00-dc42-b017-bbcfbdcb7168','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ec53328-acfd-6446-92fa-e733851b1fc2','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9567cbe2-7c03-284a-817c-fe2b4f961f2a','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8220ea60-f4e8-8347-a248-218dda0d3653','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a280a8b6-f874-b942-823d-20a5bc48541e','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4175def-b9ac-f147-b800-5392af191229','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46ddd466-98c4-ed48-aa24-09c5996ca32f','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a04606f6-7d3f-c145-b193-dc62b40a7a81','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d544d179-33d3-1444-9401-a71ba2ce696f','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c0dcd66-f0c1-554b-b508-051e6e0ef4c2','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6a56bd6-8532-1745-b021-881f36ec2913','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c021ebd-4ae8-764c-b413-a45df0cbf73f','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('437c9e12-e627-894c-8cbf-c2e954caf259','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('6d0cdaf9-3ae9-ec40-93ec-045dd9068f15','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89112419-7e91-a642-91ea-2e3dba639cf1','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c8f433f-b507-d24d-a33f-389f85ca9c6c','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('489dda25-0c7b-a448-8741-059720664f75','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3e42e807-26c2-344f-93f3-6aa6635b5834','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a900896f-81e9-e04a-b4b6-adc5a5054abf','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('57934098-5abd-5a47-b4ca-08a039102504','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca018ea2-e965-4b48-9583-4174e8476a4b','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d480a0c1-b52e-0848-b543-772b74663377','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eadf062f-fd92-3744-8fbb-8f07be6e4618','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('755e1994-368f-6f4d-80e1-50ebbf1e1d36','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62fbbbf5-ea4b-2846-8ea9-148f73486f8e','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('53926142-c51d-5a4e-bd65-b479cdd6def1','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be7f0f3b-d828-b64e-a75b-93b861c48113','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb929828-7682-244f-bd67-6647f3c825a3','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2ce05d8f-c3ab-9c4b-aeac-cff263a6a46c','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('26d32cbf-d2da-2840-bb65-f3dbc5ad74c9','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('947da8ae-6db4-5348-a919-a49d957fd135','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('897c498f-a569-c64a-8c12-a9cd5ace81b0','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3c66c48-5d58-3842-81d1-4630444d8ca0','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bce57ed9-dd14-7240-a4c9-83d643608ed9','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96235f91-e3b6-ed4c-b0e9-95593fdc24b7','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15c59fc2-0784-924e-8a37-1e496f61fe59','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a39f094e-2197-d64c-bae3-bfc11bde75d7','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('49dcc7a6-e183-cb43-95d1-efdc4a78e58c','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('301c8245-4780-c44c-b4b2-4e65f284b0f0','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c1b1607c-ba25-a344-b0d8-8d6fce4c7616','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7417fcb9-073c-df45-936b-1c56df1e62c9','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8451221c-9d2f-2740-8b5d-1ab6c753988c','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1f79d361-a983-a540-a877-c517dd7f1165','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a441de3f-0083-d24f-bf16-71c086a13688','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa895f08-18cc-dc47-9913-10a2bf4a5f9e','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('789c3b6f-1eda-9244-b192-8c48a2864149','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c85e575-3eb1-f440-854a-d741fc154e3b','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f84a1cd-ba60-e244-8279-b955daffc183','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('06b99a89-da24-dc4a-b55f-4cbbc6e9ad57','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33fb7ee3-dfe3-004a-9671-c376a42cca8c','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('225498e1-1669-6f4e-8a16-92e9b0b8bd45','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('52b1abf1-dd45-7e45-ad03-6480e5f47be8','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a4f80089-5652-694c-8b88-f5d46c7bfe73','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32a55a24-8ebb-4e47-9b77-2e6b94baed20','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f292846c-7ebf-224b-8143-2991246c7da3','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7085a86c-e0f4-9b4e-b11c-054057653717','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5670e669-df9d-9a4c-8af7-5e31204c35de','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28ef4d8f-2ec4-2245-a6b8-34d8480aed46','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3377c30b-eb01-0549-a1e5-7c474961b8a0','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc997dd6-3a94-a446-8558-ffdb8f11beec','02158020-fc1d-8246-9aad-b1979890fd12', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a6bda772-332a-2941-878d-abd7c04a2e0d','02158020-fc1d-8246-9aad-b1979890fd12', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('bfbe1fb1-705e-0e4b-8522-70f1c8e3d6f8','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8c31993-5c17-684f-b578-42c3698c2f55','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3ecc5a3b-176c-6b48-ab23-2ba687e2c0d7','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db6b7329-8836-e344-a8a1-05fae77e2954','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('044eb4c2-b90b-f844-9752-645283a824f0','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b058d92-fb1f-e849-a768-64bd5dc24f2c','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4cf783a2-4993-d342-9eb3-48fe390c7772','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4003650e-2be4-6c4c-84c4-fbc9c3ebf4db','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2863fb04-9927-2c4d-b0cb-fd2d16f1d957','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('57ca51d7-03e6-bb48-96ab-7ed91aa3dc1a','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9834bc1d-630b-9048-86e5-6710ec6d400a','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e69d00ad-6544-1d4d-b8bf-282a175d0b78','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fba1f7ec-9cd5-1c42-b38c-595792f3e921','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a2bcfbbe-4fea-8b43-9af9-46ac6943395a','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85797b83-be6e-d145-960c-8c176463ff75','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f4b25ae-ba06-a549-9b04-7863af8a5cd2','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6f8e49e-595d-2348-a948-33db6f87387d','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11f241da-cbb9-4c45-adf4-a43614c16de8','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9574a027-73fa-6346-bcf4-51563ab3ac21','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6b03df0-3fe6-fe4e-8fab-50d3d5eb84bc','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4224cd2e-c915-1e40-8526-a5d5f06190be','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cbbc7849-8c1f-7b4d-9d0e-eaaee93490d5','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68ff6d59-64f8-7140-bb1f-0861816c7056','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('da05da67-2ceb-1c49-8e08-199832887bff','44b34643-1c31-5b4a-82d0-f404cf317007', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('52f07e4d-6665-2548-8d4c-0e5f27e698c3','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f91a10ca-d100-3e45-b081-6f4ccc481753','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f4de33f-4f57-fd4c-a82f-60eceb206ec7','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a687e12a-86ff-3145-a29b-5810cbdbdd0a','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f96fa3be-a6b6-8147-ab84-7976b3e17d69','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71d07126-186b-104e-9ef7-c9dcdabaa4cc','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d481a5e-d6c4-0044-8c89-77d79519435a','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d7a5fe5e-2a10-a245-995f-a81fd74e3e2b','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe7f06fb-9cb3-3045-90dd-8c24f461efdc','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db6b50d8-2542-074a-88f3-b6efa9550234','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f25fe899-cb96-a347-9e32-878f55d29280','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95a5aafa-16fa-0645-bf44-6050e30c0b55','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd3d3e89-5dc2-7440-a744-6e3795b48b58','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5b52f63-d903-6f4f-93a6-71389666bc9b','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88d4912f-8c20-394f-b150-f5165125069e','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d80f6ab-93a7-7044-b0d9-929e6181f74f','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa0fde5e-18bd-4246-a8a6-bce4d96177a7','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('35331e11-57f0-6347-8e55-dded8e0c022f','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c4e41c43-ece6-b347-9576-0feb0d9d6553','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89f3be5d-92b5-6545-a570-5fbef2aec5f8','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('325206c9-d5c6-f543-b227-4a716db241e1','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('18e2863a-2563-be4f-abb7-9722aa9f7370','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2990e716-433d-134a-aacb-7a9d97f0ec12','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b620e491-5b67-cc49-9d3b-ab6d1773084b','a984f9b0-72b4-8d4e-a85b-29747163b978', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('3ed2bb6e-c067-1f4f-9999-75446b76266c','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa69464b-164d-5442-80e3-8f3a1f885307','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9f75a640-6785-8e43-9da0-3363063ae18c','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19bb6e13-c0d0-9640-83d8-a7a67a0cf4da','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d0117c4c-8e70-ec4c-a33c-699f081fcfe9','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60ae7a8b-936b-b747-a1e6-affd7823aa7e','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f2ee1bf-dcb9-cf42-982c-12301755611e','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2b4f1c60-8443-3e45-8b07-c9c9ecb5510e','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('674e1899-4af3-ca41-9ae1-68f50a078863','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6bff8751-a6ac-6a4a-96db-f7e57943ee9f','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('013e4d7f-8b81-0645-93d2-111ae275feef','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e81c73d8-bc11-e34e-a8c6-cf40805290ee','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58abc118-b8b9-a646-bcb8-1c9eaee6e3c6','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a0650631-e961-124e-8b55-a2c7f1937b0f','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f0725808-dd33-0d43-9fda-ec8e45c53b99','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a6f5fe0a-47f7-8f42-b53e-67e2ec7f1cf6','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87a4af01-7f1a-484d-abbc-e6f44f731999','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e804837-f067-e440-8321-d2205e690944','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('127170cc-0df8-8644-9b8a-2894454fd5a4','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01c2ad4c-0c75-e349-9ff0-5c5ddb94d203','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('26b2544d-414d-b64c-9457-f8d4754fd301','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02175010-767f-1b4d-ba17-d05aeb49c519','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e4c6d15-71e0-1c41-bc6e-7a8c2854821e','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('da6b0733-37ad-7a47-bcc9-768a0dd4c709','95063623-9ef5-c948-8c93-cebd70d0accb', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('d20ec6f9-e442-1243-8045-4be64ba6383d','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e2badda1-789e-094d-b162-47b2a1501519','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('277e1b92-bbcf-c54c-9d96-80bfa0064d85','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4ad3db33-bec1-7a48-b54e-61536a7184ce','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a333fa9-7216-9044-bdd1-99f2fd3768d6','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('42c67c23-297a-4f4e-aab2-a12faa7f188c','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('deb47f7f-4e26-874a-a68e-258a14373b20','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6cf8f1c7-662d-504f-b7e7-c6739b0a91b4','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfcaf444-c7d2-5549-8bc5-aac14cbef983','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d8d25d9b-a9ce-5e48-b197-e2d18b3e2587','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68ee750e-67cb-6b45-88d7-bc6b8f65e198','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('881d5bd3-834e-7d44-8d18-3abb4e40e54d','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5116b71a-d679-e74e-87a6-260b16d8fd66','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fdf87642-5f0a-484e-9344-061d46f1eddf','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01bb2b91-ec52-0940-8707-5631a457c98d','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e27b6ec4-46ed-2948-b4f3-17b6ccf32a03','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fff2e822-e25e-8b47-a8a8-e3652caefd77','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41a90ad3-8269-aa46-ac8c-264337426759','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2952921a-fcd5-4b4f-828d-86b763e39ab8','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24e30f38-cd17-f54c-b77f-5a5ce2331023','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1512ca1f-4068-0644-bb87-c3dae3cf66c9','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ddf16911-c393-5145-95f5-116b6e43fc46','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ada9c7f-2249-d74c-9a1e-e619e133f551','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5fb5be81-358d-7e40-9000-cdcfab19059a','60d38807-39ba-fe43-8f4e-be2c734a4498', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('6b8f2916-32f8-414c-b4b3-1f54b93f26ac','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5fa5940b-ba7c-2b46-a3e4-c28cffb457d8','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b90c6916-be01-4f46-ab23-04606224c477','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f38d5ff5-466a-214a-89c9-425b20cb98d4','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc4e6df3-6adb-9a45-a0af-4936fab9fd82','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28633818-8d43-1445-b8b1-096c174d4dad','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70926442-6703-8748-88ca-af62f2911a2b','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('054ec14d-06cc-1843-95ff-a6d4917a0c27','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('859aebdb-525a-7846-948c-dc298390b553','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('abaecb15-bb3a-9b41-9281-e1646925c8eb','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('23c74358-3845-d047-961c-18fe676de232','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2090f611-8868-8f43-adce-97e350755887','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c1460d2e-a0fb-ee4f-8453-32fb7b01b65b','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('192eb584-4560-e642-a9dd-5fbeb8cbde24','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8c27508-52bf-ae4b-a915-2343c5f9d8f0','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2aac2e93-91e0-0741-b750-48e21a9550e5','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe29a3a1-ddd5-b04e-bafe-430035394254','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c77c13d5-f29b-0c47-b916-f265703c884b','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('611ca9ad-55bf-a944-a2f9-998189e88463','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a68e2ab-d037-ec4c-9e00-f47027964bc9','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46bba018-b196-b245-8091-c254e67217eb','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('43d6f346-6583-c44d-af1e-5998bb08d558','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c64eae63-01a7-f641-8e29-421948a21994','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('48248f03-6a54-994e-95ba-3a3a299acbee','f36672cd-4ced-4945-a990-8e2e486402a0', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('0ce66fde-f68e-f246-b23e-91e20a263ae8','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('484a1da1-af47-b249-9d26-cb1556cee687','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11020665-3143-bc49-aac7-cc984e023f53','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f5c2b28f-899c-bc49-8870-d7254a2b2a2c','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('110cd3f5-9595-4d43-9b3e-8e49909ad27f','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c4fd5df-7301-dd44-98e8-986c48f5035d','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7aa20536-3056-b748-9968-303304b523ca','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b27e9eaa-bc88-6844-8000-7225375d561c','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0d035186-0f7a-1c47-9a67-746a4175ef1b','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c2b6ce67-0da9-5349-9ce8-2142241093ab','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a96eae1-5427-cf40-a06a-0e8c813cc2c5','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c5c68d8-b061-494c-aba5-24f709170726','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a9b59aa-d0d6-b845-8817-ea5d47fd743f','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af75ee58-d950-4a40-98bf-223f48052ce6','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('754e7092-1770-714f-b421-09c75f9df017','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb8abbfc-e047-474f-a2f3-6e5498d0f7bd','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6b3ac110-ffbb-3e45-a75a-5b0d52cb35a8','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2b59a259-6005-5c47-b0b7-9a7be7372612','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36ed688e-27b4-d343-8d42-38f8a668142f','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e15d7bbd-f3a5-3d48-83a5-d3aa64ccfb69','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6b7aca49-d75a-b847-8543-8fb3707e1385','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eba293f9-ce0d-db41-89cf-f4ff5560fc2d','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa9aa945-c863-e847-91b0-40947c3340a4','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('36ea4c9b-2d4b-e745-a847-1c2c42626745','357cdab5-aef3-f546-ae3b-8448939be95d', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('da0abf31-24ed-2443-8208-5e5915572403','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2395d493-dfb9-b944-ac65-460683b34472','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c4556f04-3933-584f-ba27-1dc171027d11','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb682d70-f83b-fd40-b883-254f7a88e095','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c7e18a03-17f1-a742-b938-98f78982917a','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cee3297c-8423-d44f-9568-d89c1d94986a','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9bbded1-1913-104e-8813-2541d39b8511','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ced859d2-c8a0-814c-9ba9-fa113b88a5b5','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('06dae138-8cc2-0a48-a9f4-2c121600f325','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32df5587-4b8b-914b-aecc-94d824bad415','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05b88862-0e05-e141-a44f-2561557786e2','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('34f460c5-9f6e-5b49-b18a-2be137e62bc5','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('794534df-6347-ee4a-9c24-f78b926c5fcd','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4dcb1918-345d-914b-adde-edd22f1c53af','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca87b2e8-15ac-3b4b-8e51-f973fcaa3ba2','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('129c8999-2799-0a4a-afae-05d0a9597c26','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6b9705ef-d0ee-7446-a465-24f23e017eb7','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('23408cd1-e748-1249-9652-60f22b3487e4','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4ef2257-3c8d-0a44-b51a-7e33967a7c52','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c0ffb3ca-7b7a-e249-846e-0160493b743b','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14208296-bdf2-584b-9b13-8704ab3c46bd','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5039a658-e28b-004f-af2b-e7b851cea5ff','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a4a70ee-90b8-9d4c-99a9-8c322bf76898','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1dd74032-833e-a448-8cc5-b012f85c8d60','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('25061020-c7c6-3844-858f-476248da4d06','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc5b7543-49f0-2142-8e66-67b752f995b7','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5f835107-7a59-e548-9810-f9db60e73179','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a74ad44-d168-a84d-8c44-6ee11585065f','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('35756afa-8e85-9d4d-b9de-ff62ff73f70c','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07938fba-5efd-384d-9ae9-2233663b87cc','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f4baff8-b6d6-6042-8f95-9461ee1cdf7c','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb4b47ff-b6de-e74c-a664-08d253e52fc2','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('382b801a-80c0-6b49-8207-3cd575b5799f','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ea56392-b450-6a43-af6e-9352eef08eb1','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d3f8fac2-e984-1d41-957c-9dd0fff1b1f6','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0c9b78b8-a73a-ce49-a26e-929b00418ecd','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f4ba626-081c-f44c-ac3a-cbd376756ff5','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6704167-05c9-5c45-a981-93784b3b67f5','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4d6df217-5a31-1e4f-84eb-1d2e3b35931d','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a7db70a8-4d79-b741-8fc7-8f501dd96e1c','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2584b9b8-2334-d74c-b618-7ed8a5c37571','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('414a1e34-e834-cd44-9ee8-1e4f4aba964b','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('545a2ab8-1f1e-7e4d-bd4a-1fe5e7062343','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('97503fe6-57a0-2c4e-a9f6-ce7ac407c877','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a8457cf-689f-9044-be1c-96d9b6e2b8c4','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('759cbe26-3be1-2747-8edd-3983c16a8b50','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7597aa7a-aff0-7e42-b66b-db02e4884bb2','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3940abef-c4f2-4f47-84f5-2f225e70a40f','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('f042757f-37a7-9348-ac40-ec1823db5320','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2288f18a-8413-b647-83a3-2cb8257df3f7','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc57bdef-8cdb-6146-8be4-2601a95cbb70','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('970c5a24-6418-7d46-900d-85711063ed39','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7345ff8f-7c1c-b24c-9c75-4fb6d2ff380d','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02a68b80-f36a-c249-9970-cce7100e0623','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7cd3abc3-a69b-dd45-ac00-5a2a4eb48913','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58ab6730-baf3-6949-b18b-e0b7b4cf0ea8','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ee582ce-efa6-aa43-bea2-a76f05166d84','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('753acf1f-6145-2640-8292-53f9462d2260','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dde9ee9b-e2eb-ba49-a681-68b0339a4848','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2def63d1-d500-8b4b-9612-1e208b523294','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('825d680e-2aba-d54f-90d4-8aff537bf499','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33cb91cd-709b-c745-aa98-75a1e51e72da','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b6d21e1-fb4d-f540-8aaa-a9d696c61929','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03528484-d9f5-2549-b82c-b96898237c9d','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a9fdca36-7ccc-8645-9949-059a71079b6c','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6da7e38-1ed9-134b-b120-4e3043aa8236','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c3a9e38f-5b41-d249-a589-ec8244860595','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61ac9195-3287-fc47-b745-1dbf03bc826f','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c5b6097e-6f93-5647-8a5e-a7c4763a8072','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22d3a0a8-41cc-d242-b88e-d50273e9dbe9','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ecfa2598-8a95-0f45-95bc-9d1cb9da0f32','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('16108220-1ca0-b94b-8aa6-3c182564a55f','c81412c2-1248-c947-b527-e2efc6d368d0', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('b8801667-44e7-9c46-b303-cdfc4460b229','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a5cc745c-9ae0-ab43-a928-66c5edbad364','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('050ecfb7-1446-3e46-9523-4a6c365e454f','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('367fde97-5db7-1349-8944-52b8e964c3d1','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4715ca92-87cf-4e47-8ca0-331975517416','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b54db6af-0773-7e4a-bf2b-9a9cf4610378','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f9f34dea-f6a7-b943-a56b-2cad815c694b','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('427e6669-1c75-754d-8b4f-3f9e908f4477','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8c6f1fa-92b8-924e-ba65-1c3e538c3648','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c583b4a4-e988-4d40-a2a1-8d0832a253df','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb60b0dd-ffe7-4d47-8def-d0ab7b78b1fc','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('989b0085-630f-5445-b194-cf502c3272b7','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('44016b04-e509-7b41-9435-781baad2c38c','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce4f3a27-f9a8-244b-b42a-014461a38ffa','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('786468c0-9824-6a43-8fb2-1bd1f7daf7c8','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e57fceab-73a1-0844-8164-e58b88ee9be6','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13da7247-14f6-8041-be73-a165952194c3','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db57dc1a-0e9e-1f49-a9dc-996d5472201e','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cbf2ab9d-83d5-6341-93f3-a72102e7004d','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3723eb32-e775-b54f-adc8-2840a0e9742a','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('035ea5b6-28a7-d145-9060-cad675508c20','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5232f738-3fe7-f74a-a825-553d75decaa5','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c0fdb1b-4648-3044-8886-b1181f987a45','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e7fa1b90-a62a-9b46-8b82-5eb5637370d0','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('ad40cd36-8dc3-1e44-978d-33db5e1c1a3c','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d5c0d5b-1977-e54b-bd47-0b2a833e55a8','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('398e1578-21ca-1a4d-b1c5-beeca20dc5d0','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a90e4a69-8332-d443-b99b-93d38687e411','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('008b4e29-8221-2644-804b-a971378745bb','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13d7b04c-fe95-8948-bfeb-b9a11271a192','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('470994d5-a3a0-cb4b-9375-303997adf323','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41078192-9955-a142-9b43-7481b94e13a1','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('899d18d8-02af-6445-9ab4-34b3a95aa498','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df2a937f-a573-7243-94e1-31f82f1c9e3c','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a6ba0654-3920-5d49-aa55-90bd7721e843','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('295e3750-792a-ab4e-b195-be5c962b8cd0','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e2617af1-9463-424c-8516-37ddfe9c735e','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('694158fc-9208-664f-a4cb-ca4cbb0ea757','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6360177-dfc3-ab41-85e3-ac33e9ca5c16','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3e44083-40f2-9740-adb8-4dc48f3762fa','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e2b158f9-ee20-c54d-8d3a-3b49ee8fa300','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8ab7555f-1eab-7e47-a29c-81291f1739f8','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9f56f088-2cc5-1a46-a70d-0a86b9d51250','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f8f95b6-0d6f-4145-8471-6ddc51f470ff','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df3da631-f988-374e-9ffd-2ae76401e541','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb971f59-c3a3-174b-8a37-642a7137a4b9','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e133ca3-6c83-1b40-a7c4-765eedfd86ff','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c39a0414-afe7-8244-8f46-479404d74633','579cc719-1a42-3e4d-9338-1c5438082bb2', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('a82a5b34-821f-a146-9e63-30fa2ef246fe','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f91b4e66-bba6-c24c-b696-8a8126756b68','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b62d41d-120e-804f-9e7f-d23156a668c2','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28ff44a8-b3f9-e94e-b66d-1f33ae7aa7ea','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd916a8c-fac3-3242-af83-8c9fb7c784eb','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9938d02c-7e4a-9945-b1d4-3aae5e87bb93','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7481bc95-d7b0-e74d-8790-8576cc000ba7','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3a2586b-122f-5747-9299-973afe8e6f8b','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09d2ab32-64f7-2a4b-b7a0-2687f3437f02','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db9b7b8d-1d88-e549-8b21-13dc712c3d4d','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4d27ca3-e84f-3340-bc46-54e69b672eff','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46c58238-f176-ae4c-ae0a-0c31380626c9','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3dcbbaef-2adb-a648-8c1f-8958a0b503f9','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8b6395d-6ab7-8846-a5a9-e79993960e24','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7ac913d3-62fb-fb42-b408-7853c904e6da','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0833dba6-9cb7-ba4f-9dc3-0c789d0ef15e','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb6742f3-f10b-2345-adaf-104adb7abeff','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('50aadb84-525f-0d43-8865-b41d12c88864','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8d997a7-7421-b142-832a-129e3fc66232','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('adc7644b-4def-d543-ba7e-eb38704cd84a','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd2067db-21c0-ff4c-8f60-5dcb18455e84','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a6d6c99-d226-704d-a0db-fc35d8ebbb88','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f70fe070-2417-2a49-acf6-86fa73c77ec5','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('dce0a7b3-a467-6741-a1ee-bb617f57da32','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0');

-- 子会议字段 

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('5804beb3-da08-c84e-842e-499bfb7aaebe','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0e9e801c-8a38-ad44-b9c0-a2fc2d764b7b','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f48efb00-fcfa-284c-b1f3-8b42efdffef4','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa243f6f-289f-b44f-8129-38d28d14f550','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fac7e87e-4b98-f842-8a13-f1d07475b9a0','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79a4829d-b800-1f40-9917-66128d52b3c1','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a427e1cb-81ab-1b48-a935-65b6136426e3','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ae8d857-436d-4a4e-aaaa-162828d962e9','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01ef78b8-9be6-6f44-bb9a-12d905517cd2','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f8fd0207-9b6c-7740-bfa5-7250e93544a7','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0a336540-ed5e-334a-a5d2-372ea88577c5','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8235743d-ab6e-ff46-8e52-e918e6704661','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ce38df7-16f2-8040-9394-16379423f038','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('920d71ca-ab8f-4b42-9b4d-7e626a11d978','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('51a40f62-e414-3248-b3d6-fdc6d9819f27','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b98fef0-4683-8441-bca0-7049b9afd8cb','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('39c72393-52a4-0246-afe1-ddc11029df87','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b9cfcc8-23a6-7946-b526-f8bfbad24a4d','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('998917bd-3ff0-2c4e-bf08-ec36ff0113e3','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f02a8886-10db-0a44-b32b-7434bbf36aa6','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d6fed18-3db9-8c44-b00a-b68b63f6619e','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('69eb4bca-a09e-964c-9854-4ce1e79362bc','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('45d6aaf0-538a-7840-a0e8-8fede086468d','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('77940096-113b-d546-9c88-b22594d94377','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6de9e8cd-7d9d-6b40-b2a1-5cf08260fe50','dc8120ee-f65f-bc4b-852c-7b0264795190', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('437af598-3d20-9e45-9504-e6d6d2fdf7c1','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf68f379-c46a-ff4f-9727-8c828bf04718','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2fc33072-06f2-464a-bafd-478df170c7b7','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4dbb29a7-415b-5848-8231-ef1037b38c39','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a08caab8-a9eb-a14b-b306-e060dcfd8f35','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4bf0b5cb-ee32-0b4c-ba3b-cf79346b8b4c','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d2d7d8b-e1d9-d340-89b0-2e0d41030880','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17a8f3b7-c18b-164e-9e9a-cb1d8f2677df','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f9f78165-7772-1947-99ec-3b64d1ad496f','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7f72b38-42f9-174c-acc6-b7dbefeb504b','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9596ae06-8ebc-a54c-970a-73ac3cdf3a65','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e10132f4-fb38-164e-b9ee-cca23444b7d3','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('90c8214d-fb14-3040-b8b7-d64724624eda','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e9fad1c-6d2d-704f-8c57-b9ed0538591a','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa3790e2-71f4-0540-af1a-647a10ca9397','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('603b3001-a99a-3840-a767-95271d68460f','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c126c1e1-4989-8e40-b888-574320342cb1','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ae5f490f-eba6-3444-ae78-c385a38efbc4','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('885246c7-2bcf-6349-a8fc-eed026b197b5','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1ce55d9-3aa3-7546-8299-8f3cf3e93fa0','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01071f49-591c-af48-bafd-11de13a55afc','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bce2533c-1cc4-1743-8839-80c1ff06fea5','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('018bd018-d86d-1149-b44f-35ddbaab2a92','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e448ead2-0b9c-4349-a503-240c58193266','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d22deadd-4fe2-c045-8c23-350e086582fa','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('9be1673a-5ff4-df4b-a093-1eacd45eed19','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf813d8f-317e-774a-9477-462364e54cc4','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e4eb1d56-467d-5441-9d25-1b029c7270e9','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a98bd9a9-65d5-534f-9994-c6e90a01c8c5','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d2f94963-b191-4746-9942-f3a44e1911d7','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dcb961e5-c728-804e-a5b3-475ec22da7b8','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5dafea14-4f42-9445-bcd0-6cc52dbcaf7b','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('091e8c49-adf3-6042-928b-bc64ac9a53cc','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('55d56ebe-4ef7-8544-b4eb-3c10a23475c0','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da5eed24-0f3c-674e-ac15-0970b8d4f844','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ae24ed88-8292-3349-a1f0-51b11313558b','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd965059-8fd8-444f-a8da-eccb3a73dc5e','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('43fa7d4a-1b6d-f04a-a70e-d232a8fecc4a','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4ab6d35-2cc9-044f-a358-b8e7d5fded83','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36de590b-3134-6044-84ba-9549accc6ef4','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3aa5e26a-d0b9-2947-b191-d16c18eec91b','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb706958-ea3c-e34d-9bb6-97863efcdbef','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1a5c9421-a648-9c4a-ba90-7f454240dc4e','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('acd1eca4-ddc0-d34e-8c7b-b3c2fb9aeab0','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4f0e172-3b4a-6e47-a6c0-5c156ffe8209','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bca0e4a4-4832-274b-94f1-26824338f3fc','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6902810-3eb2-5245-94b9-1676b4fee7e9','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5958d879-09c8-404c-ba49-f24b1eb0c064','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7767ec0f-cad7-3949-820b-d0460228dde8','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('47ff889a-228f-6d4a-a81b-a919f892c932','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('cfca3f8f-d1f8-7d42-8395-2a41077cb68b','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e9f5498-2abc-f74e-aa4d-690987caeae2','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4bd3bbe3-0e60-2b41-9dc6-5ee5f4cd0817','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c93005b-4538-1546-8fbe-b36c51e936e4','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1b69ee5-fde1-8249-9eab-77dcd5aae104','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('febef291-c13e-b94c-8293-3fabdf2ca7d5','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d507e9e-f35a-c84c-b449-20dbf8b7d365','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1341c99d-1609-654b-b8b0-8bf03446ac8f','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0e08944c-4818-f742-90d2-91546d1ae6ac','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0702f102-a14c-c449-a8e2-7f3b772d3362','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f998dae-e7ef-c147-bb77-55174934b4d5','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('936f042f-2e97-e748-9bac-3da7308f9d7a','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5583b143-43bd-ea4a-9c7e-a335206e55e0','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79966ce1-5bb9-d14e-a941-10893f9da2ca','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('324ef87b-4155-0246-a512-70dfc3434a70','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21e3fa09-d81c-b641-a631-02a68a60f5c5','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca28350f-afaf-2c46-97b4-1eec8ebed69c','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('569371cc-c10f-5f4c-896a-74bea415aaf1','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87635d91-f31f-0c4e-9ce6-58a642c9050c','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ab739e24-8ebc-e14d-aef5-d6e0e463118e','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('321467be-858b-0c40-9e5d-33834c27682c','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e301f29-0adc-ad48-a7ea-4df06aa4487a','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9dfdf329-2d2f-e846-abaf-d59bac67d555','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('73efbbc9-4f35-644c-a5b5-88cb45c8cefb','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('03a65c99-e784-1444-be92-9c86dcb29c05','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('30593a30-b7e0-f64f-ab2f-cb07318ce901','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4973d8fc-680f-cf47-b3a2-61a2a68abbf2','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('acdfb4f4-0f74-ec41-a463-a3094b31c9b1','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14aede04-4776-5148-a4d1-30348a321109','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ebe3216f-528f-2741-87e1-a4aa914755d8','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd38e370-bbe1-2440-aa50-6c1a0f53ff7a','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ceb36f0f-0269-da43-b0ca-6315c6feef63','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cefb0d86-bb59-c146-86e3-8675270ea2d8','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0fa2a9b-b974-7347-9397-1a59a4e6f422','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('103369b2-7668-0f40-9a69-ac95d2f6ce3a','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ae6ac876-5f55-ab4a-ae3b-00b6871b28f2','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03368cc7-3790-f846-8a2d-a8654452d870','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9f774431-5b9d-8845-af33-c5186e97f8b6','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('becc6007-6fbd-9249-89be-26e6a149c670','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('86457774-b2b9-5e4a-8a25-94eec5820140','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a71b986a-c4bd-cd48-8fb4-3837222498b1','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('503b1131-087a-2d4b-80fa-4bee1c42791e','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('edc08d93-8f0e-de44-909e-23264a5deda8','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d50ecbe-4991-884f-a49d-1bf0300adfc1','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6bc35ec-65ff-7e47-a65c-3c60c4e49946','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1340c0e1-2d57-c24d-8b6a-50f33a3e32f0','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6d05ed5-c47d-ce48-9779-520562d50eb1','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ef405c89-35f3-c24b-8244-87333e18f843','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('06cc8a55-8939-a344-a16c-4e1ccc7af840','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6395b0e2-f9a7-b542-a66f-5ac53b061402','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('e47173e1-9167-cc42-ba51-5b61a223155b','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee89df9b-9518-e94d-9f9e-e22dd598e92d','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('86260b1b-a8b5-8c47-930d-eb5ffcdde2bf','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b1a2fa93-b245-574c-8ec2-acd5daf41f1d','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24b71381-4090-7f40-9e85-65294f8b2d0f','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e805ee1-3429-b841-9464-e4e0a3e5c4b2','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4c3b907e-a310-3042-a9b4-ea49f85ab59b','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('23627109-6252-9a4a-bcda-a132e6508814','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('18828169-30fa-1442-8575-8cef40ce4d39','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0951d52b-78af-8a42-a47e-1e0c11a7099a','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7aa7c8a-62f8-bf44-9ed2-8b6e6447f402','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce93033a-f0e4-d84d-8e48-224a257244db','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e9f89e84-a2af-5346-a102-3477536efdea','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5b8278d1-90fa-2b4d-8311-3ebe2bdc2078','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2583d284-a225-de47-a89f-2e8d5dcdd4c2','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('97d29eb7-9990-6148-bb04-267cb62d19ba','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4d2efd4-f55e-f747-bfe5-c3ae9bc2219e','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('171b2843-a972-9f45-9d04-246312d4fc2c','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('231eb0a1-70b3-1842-a02e-9726fab93e70','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('851cae02-a05d-b041-b771-7287220d17fc','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a55dba1-b5af-0349-886f-ac803efdbc42','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb16b23b-4d38-814e-951e-733528bd472c','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb0726af-dec3-e944-88f1-64e8813cef03','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('cd47128a-6b84-ef47-9370-89fb57667a82','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a6cde4be-6faf-fa46-aefd-53c8339a894c','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('08a77072-78d7-3b4b-a793-e18d00e861cd','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa56010d-83ed-3f45-876c-c19281ac19f5','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62f31bb6-87a4-d640-adfe-d509ad7f435a','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24fab027-a3d4-8b41-94a4-286d3cdcf548','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2ada4b53-9719-5f47-8abe-6d8ccb18be43','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd8ae939-fd24-024a-accc-3a3f8ae25c07','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('289b4d2f-5f1b-4447-8f92-32e0b0c266dd','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('869c0647-f3c7-fa40-9e5c-0df6e0a5319f','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('621d6412-4df8-1f47-a1cb-cb900baf8f1f','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('313c3fe3-6854-5a46-a942-f69585f9bc74','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dabf9afc-56e3-6b41-9170-fd0a5426385e','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e063baf1-7fd4-2048-b95d-851bac7b51c7','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22081930-dd5f-944c-8265-26d97c169ef9','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('985f98b4-f176-0446-ab1d-e63383811ad8','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9d4fbf32-5f1e-744f-8dbb-f68c5dd335ec','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17ff9ffc-0737-9e44-a6e8-423d21b3ffab','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4eac3b80-78d8-b542-9c14-1b620a4b095f','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4dc3f5c3-86b2-f64f-9415-3ac7cbe11084','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('40edcd47-b2f1-c247-ae6e-bc11f1518ff5','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7415db2-26a7-464d-b68c-e2d48fc982f9','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f657c2c4-8412-d941-b1db-d7abc965c5a6','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7515d31a-49a1-9b47-a544-023c53ee0886','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46a07171-2de1-b741-b867-432a2c59fca2','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('31ea3e83-40c6-9240-adce-22f1614608db','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3fc71b72-06cb-0848-8a0f-2e0d80fdddc0','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('b1c55070-55f8-9340-ae5e-88845f61b2e2','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3130de90-0d2a-184e-a2b1-9ec3c6c00ea3','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46ce08b9-dced-7643-87c2-950f6349cb7e','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e611a612-a232-6b4e-8ccc-8ea7c7bd73ee','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd0961b5-611e-964d-b31b-e2a06fa72d6a','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('86adc142-585c-a64f-98cc-01e74796ecc2','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd302940-09ba-254e-b280-1e4ba25cd089','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bac8426e-0393-444a-9e6f-4b699ce02138','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c4b796c2-706a-8646-9ab0-1a191e8c310d','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ef5ec8ad-5214-264f-9dc9-5e7a3358373d','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94043947-bad3-e84e-a8ea-c9a742329a0a','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5aa1487-9f26-8748-b923-11be642fd83e','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc781f91-817b-2b45-8567-2f1ad84f9a06','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da722dd4-1457-f145-b682-801b573db9cd','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc391cf1-e59e-ed46-a624-7a729e6ab6e7','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('93206bfa-ec4d-754e-9530-ce22417f6fc2','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3438c51c-f48b-4e4a-9d9c-167fa0fdbed9','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('007ab52f-ac32-4145-a82c-2c39c49499f0','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc68bf6b-e726-af48-80ea-b3e2396d842c','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0729c042-2ed2-1c42-b775-c70e18fadb89','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5e40202-3cfe-5847-9547-3ceeb8eff751','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21a89fbe-527a-1e46-b427-94a93edcd59f','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb2aee2f-ac85-3d43-bb9c-41f3fc5f28e7','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('04651309-ce1d-a340-af78-bdaa9ee1dc47','7263a6ac-8390-3641-b455-71a609f7f522', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4e62d00e-3ca2-a642-bb17-df21a634cfcc','7263a6ac-8390-3641-b455-71a609f7f522', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('fa7d55f5-1fad-de44-a113-12c4cd05810c','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b17fb60a-4e20-3543-96c0-99084c7334f0','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('623457c5-0195-5a44-a892-235a6f460616','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('779a1a18-bfe9-7042-b34b-68fabc93ea1a','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('439c2ce2-a232-3a48-9a28-27d893337f8e','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('639c8b35-c0c5-a349-8e20-3a43543318bb','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80ee61ce-c83a-6346-8f5e-0deb085a3a1a','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('55c1e8eb-e3bb-c746-91d3-cead3c5a4237','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68f91568-7e36-0f4f-a48c-0ad158863c07','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96e1268d-68e0-1841-933a-5b053f0bcfe0','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d80393d4-62b8-1143-aaa7-69425878bb99','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3fe33f22-ba6a-2d4f-b54b-ee9186fd1ef8','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32314990-48b5-fa4b-9eef-64c4c3e4047d','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('521f3f04-6b6e-7049-9db2-77b8688eec96','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c188812-8d14-994d-8e9f-fd14cbcdd231','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('503fae60-5e50-d142-b491-bbb59ccb8762','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6a12d8e-95f7-d544-8451-40b2383f6a62','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7961eec3-7020-d44f-94d8-2bbfcfd7a8fe','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b98f2a00-6e48-4241-998e-f282c2763b8d','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7b0b5c1-2614-c04e-948f-1930f1ef33cd','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d88593b9-d379-d944-9dd0-1ab62b8e1930','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c6834d7-66a3-a84e-a9db-ea01dad412bc','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fec0539-896d-3e4c-8512-babe10372e55','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d1813d93-7efe-8c48-847f-f8a45b1a7f24','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4c881244-77a0-bf4c-8c68-fd50e859145f','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('2651b8de-cda6-9843-bf8a-8398c32dfdd9','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('26d4599a-8561-2d4d-8b70-003596eaccc1','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ad590c0-aef4-b841-aa98-e674aa394141','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0953eac5-9d04-0b44-9162-21c4efc9d805','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('001aaad6-f9df-7547-bf37-cd8f52767370','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8400ab83-8582-754d-b844-c1671fc48e47','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3b1467d1-9360-4a40-83aa-0e2beadd9074','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfa281d7-287a-104f-aa78-c5b37f808aaf','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1899ff26-f4c0-fb40-92e0-c8b6ccfb4afa','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ff6abfd-d63e-4c48-905f-fbbd93d01a66','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('82492e60-0e02-1544-930d-a2c39a7f513e','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('617c6658-e7b7-654e-8748-d9b89fda3435','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04e0614c-b2b6-5040-a204-6e500b2b75df','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6a633059-3454-c34c-a895-a119bff1e5bd','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b09489f-7c5e-c24a-a534-707d5a43d0ee','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('508e4619-8ad9-0047-92c2-58d09a6e8989','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff3adb82-5457-d54c-8d9b-f8fe8f6f6de6','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c954690-7374-1c40-8e40-5d94ddffcf82','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eac78062-4b14-a648-b22b-2624d8ec5e7d','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6b4f6243-008a-ca4b-b414-c1c3f320bb8d','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('81c428ae-2858-664b-a9b1-1e203f14632e','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5780dc94-f2db-7340-bd83-535a5c2b8da5','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1dbf57c0-9a68-ed41-848a-c12ed94b43da','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('48a95709-e0f4-1a46-a836-357f26a8103f','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('53598c2a-300c-e344-ba08-d2e81aa498f9','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('95a2eef5-e70e-0f45-8fda-bc0b8b62860b','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c79458d-5a9b-604b-b963-19d42504c507','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da1cf071-7a10-3a40-84b5-3fc84f213c34','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f20ef0b3-7874-5d46-a31a-9ab4c635a9c0','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a78b38f4-95ea-1546-a742-617498a8e426','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('945e4a5e-b746-714f-963b-5237d244c343','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4c0b5107-b7fc-4348-bae8-88e1af365bc3','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d090e52-3ca2-194b-8ac1-ffce6ae1250d','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a163f8e9-5423-4240-ae08-0a69754db8ec','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74955b64-ebe5-1b4d-ab3d-a6fb6dd50bf1','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54850a0f-b6c5-cb42-a627-d952ffdeb372','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('92b63542-1305-e54e-8d7b-288afc59715b','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07685e27-5a9e-504c-a1ef-6c865afa0174','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e944f545-3340-0548-a399-05aefe3c3886','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe27e060-a34e-114a-a878-e413083888d7','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cf940d09-5b14-5742-af33-ebc0d2b45292','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62fd961c-5053-fe40-8241-5cf24681cfca','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e88c9a6a-a5bf-d144-b34c-be4be4a6ec07','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e79e1bf-06b1-ae4c-8c58-656e517823c1','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f9593c1b-300a-724f-9e5b-e8a48219c308','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('66af46ee-7862-f549-a30f-8c4bb72f2a09','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('847db587-c9c1-3544-b603-4d846793ff29','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1cf96c0e-6216-e442-92d7-fb0f72599256','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5c23f996-6e4e-e142-beda-a7c7dc26b027','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('da3a4cd5-6255-0341-8de5-649a6e0725af','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('fcced59a-c947-2d4c-a1d1-8025c90a16b1','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0bf9ec49-d0e1-e34f-9fed-3451ea74c9e8','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('99baa89f-6eaf-e440-b47d-d932a6cb48a1','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fab04eca-e214-7d4a-b9ea-aa17274eb0b7','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9916c4b-b4c9-fe41-8455-134ac3e86d4c','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eccf6923-2aa8-6940-9067-c4ae166e9e35','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e4a9c597-a31f-ec4d-8511-a3076d805391','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c20b6caa-fed9-7845-8c60-2f86d5ff8bdb','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f142c87f-47e2-2349-8884-aded5828660e','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16846676-1fcb-074b-ad89-b9adfb97586f','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ba828e94-d1d7-9041-8162-80d33f14c23e','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9b958855-f1cf-2741-9787-07a0f14cf28f','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('620f562b-3e88-224c-9db9-5fab9303a7ba','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c0efb2a6-c600-8c45-8f05-1ddf9913d1f5','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95d580d3-20aa-424d-8535-5840c7e00ff6','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee7a6871-c0cf-404b-8743-17d98a4ab915','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('848c0142-1465-2f46-a74e-cb83d68ccb2b','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('151b9879-1ddc-9844-b826-5f4ea40986a8','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e0fcb19f-fdda-154d-a8a5-3813ba2c70de','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b7d98f2-15c9-bd4e-ac7f-fd9c2c90fc36','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ae1b73f3-28ac-644f-9639-424523b08a18','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc64652f-aa6e-bf4c-bae2-10e742389801','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e6b9a67-41e4-5d49-8e98-95d39a435b60','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c043b0cd-0eaf-c844-9c82-b6a35c3df9ab','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5032d57c-2709-2c4e-a7fc-a52f63653b7f','779ec230-6a79-de4d-b8c0-1212abb57353', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('88f07fe1-94f3-c849-ae46-6a943a1075b2','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36fede40-bb6c-8c48-bca1-d03152787b55','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('37dc6b60-8c59-bc49-b13d-27d58a49ad7f','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd0654b6-2914-3d4f-a629-3016a73ba85b','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13e86787-0cdf-d343-8c3d-48e9b7cd8be9','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87155b37-6504-ba49-8c14-7743cbf513e7','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c106603f-bc02-3f49-aed3-2a13f440c786','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f235ec4a-8b0e-3d4b-8b91-170f297ef936','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('765d49de-5b5e-7844-8a2d-a0e40ee2d6f9','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ab05e58b-fe22-694b-b65a-02c71f9139e3','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9b5ad615-a333-d64a-867a-0bc749892673','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b2d3119a-d4bb-124b-8bf4-bbbde0bac5cf','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be0e49e7-f109-974d-921f-57d41922d3fa','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6720e3c6-568a-f244-b4d0-6f9eb4f15a04','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('35044b0f-47d6-7449-814e-a79c7c596be6','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2748dea8-5204-bc43-b5d9-ea094e7d7ced','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c811b8d5-41ab-b340-9714-b436057d3c20','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e66f2891-7834-2b43-bb34-6bb0392ada35','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6ebfbbb-f775-c04d-bb43-d718e68f67ac','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('49d93968-2a80-7c44-8d82-e7c30eade160','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2ba59191-2a1b-3a44-a7e1-224a3f866784','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33b2edce-a28c-b142-898a-0fa79b933a26','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c6592dc6-b375-7b41-8ee9-0e324cff848d','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('dd187f40-8bc2-944d-8255-c2be705ad0ae','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e247413b-a652-134c-860b-842fab736736','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('7f0cce91-fe89-8f4f-ab39-7f47046d7ccd','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af7f22d7-a56c-d641-a091-7ffc950c6c68','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('038fc114-fb3c-d246-869e-11a5d39e8d10','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c467c5de-cf0e-bc43-9023-3608a4e914e4','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70f679fb-fba9-1544-9bdb-8a8597dcceb1','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('72188ef3-2801-804a-883a-11cec0a8e524','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6ee15315-2499-4a46-90b2-e11a37e2e8ee','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c8c84c43-a5a2-2e4a-b1ac-3698dba53e02','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76f5448f-ac4e-ba45-995c-65e197fe24d7','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9ba44f4-c6ce-db41-857c-34da8a78128e','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a918a30-8741-0c45-890f-81e0c5871276','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b559829d-de7a-8744-b3b6-163f37ac8e31','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a6ff8809-f0ca-3846-9a48-28e0805daba1','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df73a507-2dbe-c648-b59f-5eb090a75ddd','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8dbb57bb-b225-4b4c-824a-5e19d0a084a2','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fdcadb0-1f94-fd4f-afcc-b847b3efdbb3','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ea890cc6-01f9-f343-a09a-af263ac6413a','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94c4e64e-345b-9646-9173-0bbbde362902','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17542139-12e3-b44d-9d62-20fc4b6f7c1a','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('592b3236-1453-8b46-b23a-958230cee24b','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0925fe7f-60d6-2f40-a9a0-2b9e695eb55d','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e6be03e-9a08-1a49-aa54-3d3072ea93a9','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89278bef-38b2-b94c-acad-3a6c60754283','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('735a7b9c-f8af-7643-80a4-ed0cbf77194d','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1c8cfa85-4540-c644-b680-682221b542fd','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('1ecdbf9a-79d2-1540-97eb-a5ffd035b643','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4fd785a1-b7a0-8040-bba4-3c58dccaaa4b','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9afe09da-3d8b-9a47-b7f9-4924352fb3b3','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02a38e4e-4a86-de45-afdc-1c0a93b32378','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41748638-fc22-4042-a4a1-665ffb2f92d2','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cf30babc-6460-6446-9c5a-8a5d9677eb14','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c48e2b73-8aa8-8542-afd7-737767798b45','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf73ddd9-fccb-c341-8236-61bda2c7c2c5','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f0096924-1bb1-9e41-a825-02d2ced72d15','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('adf4b8ca-693c-c247-8dfe-4e99db5beefb','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('00699374-8223-8245-ad1f-7d28993f5fad','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74c5885f-ee96-b74d-bcdc-f6c4f002e74c','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0eac04e8-0b3d-174c-9995-7b395c693b34','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77dea8c9-4fe8-8d49-a5bd-e01e70c515c3','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85b760bb-e65f-f34a-a4a9-3663370d64bf','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('264ade51-047b-534f-b597-e2e0d127df3c','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b487043-fc9a-4b4b-90c2-0f85776a715c','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5f0387a4-b472-9147-9de7-d8ede4cee37e','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e120fe86-e235-034e-84e0-a97c3a1e5344','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5b138121-5003-4e43-82ae-4aaf879c6691','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d050ce66-76a4-c343-ae8b-8f55f5a26e71','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb07211e-ceb8-ad43-8672-2db396b920d3','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e0dc10c-a0f8-0f40-9f9b-ea0bf42ffb61','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('997680d3-8f4d-744a-87de-e2d881ffeb00','8f822cd0-9574-624a-9c69-412602491ac7', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('57477e1d-ca9f-2f42-9380-49a33e2f3b35','8f822cd0-9574-624a-9c69-412602491ac7', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('cc1d8595-eed0-c24a-9df0-5e66d93b77aa','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ccdded4a-bd11-cb4a-ab76-6326f84bfa16','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47c78266-ae75-1648-93aa-2f364bd6ec98','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('330aeed3-bb5d-c041-9b73-6d381b026286','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8306f0c0-6f5f-a744-9edc-b35d296e6c9f','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a172886e-2f16-fe41-a933-efc1f93f1ca4','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('29133132-0f86-7449-af28-a63381691298','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('868c7ddd-dea5-7349-8c29-70a47959a971','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('20bd7cca-065a-da45-a45c-61ea5a47bd06','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f116b08b-74be-bd45-8900-4db71ef34905','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('560957ce-2ce1-7446-88cf-782055fbdd81','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1babdf88-38c7-1b4f-8d99-7d0432b386a9','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5f16273a-d899-f14c-b90e-8f63242de830','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2ceb4f6b-20e5-6641-a024-f6c6223476e3','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62175054-ada2-1d44-a21f-b4f6ed03ec32','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eda31c24-9592-ab4b-b274-35d80defb41e','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6127c7c1-dea2-dd46-b64b-ffe6b95d90da','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e4c5acb-4422-b545-9a1b-5f51d323386e','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5cc22926-c453-754d-a131-ed009a122197','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ebc3ec1b-d4f3-de46-beaa-00010ec68b45','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e8a2a9f-ccb1-8341-8676-a022722445db','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96390ea6-bcef-5648-9a62-b3b9edcb3caf','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfb2358c-f191-0840-91eb-3ce43fd7bd3d','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('607c374b-0a8b-5d4e-9bf4-3af6f6b9ae29','e828d3df-a884-ea48-bf6c-adea196180de', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('97831c15-8364-0143-b8a9-258e47cb464c','e828d3df-a884-ea48-bf6c-adea196180de', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('56805b1e-f5a8-ad4b-a287-cf90db9806e1','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cdc927ff-8755-6f47-9bff-462f833c4b99','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('98b72d96-6b5e-b74d-9c0c-c5124d19932d','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32bfff00-8699-4841-99db-f742cf1d7081','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d004a88e-a706-0349-ab56-63870ed3f5b6','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db1f8e49-bf3f-7340-81cf-e8f181804c05','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2063ee2e-695a-9f44-bfbc-a15912b98d9c','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ea15a4d7-8396-1a44-8a3e-5e498ea37bb3','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e85578a-714c-1f40-b60a-023ebbc9cc7b','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('978ee552-1dde-9645-a5f8-f042d1b14780','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5b06e7ef-bc97-c643-bdd8-2fad01fa9a38','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc424dce-cfbe-c544-a8a8-8bdcffe81693','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e864be71-6c44-f34b-807d-db04b7ad66fe','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4e602616-fa4c-9343-bd29-34f6ea0a828e','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c32359d-a7de-ff4a-bf6b-fa18a2000155','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04491f4e-31cb-0947-9a2e-aaa8077f442a','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4e521be5-d2a5-c746-bdb1-693b672aaa00','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('671e8060-d65f-3a41-828c-200c5b04a284','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('564e47c7-d824-a444-9847-b974d330f6e6','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('27fb4f5f-41fb-f942-aa7e-e32cb05530dc','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0152ca7d-1cb2-c14f-8b88-bf66a1242964','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b2fb1f2e-274c-a140-af89-f3ef90131f12','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8acc5eb-4c33-8e48-b04b-95b443b911d3','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e24b5a3a-b57e-b845-8530-ba7cc29abce1','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9e2e13e7-64ff-d64e-88de-96de59d4cca6','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('8553ccaf-ee05-3640-ad6e-89f09d53950c','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2563c640-ea97-ad4a-972f-a3084f48ebae','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3584af56-9b51-7849-a495-ff5491f87b06','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5acca54-8c5c-4a4f-a3ee-0aa0d7733456','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2fb65a36-5d56-0946-955c-cb622e8442c1','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df906f2a-df54-4c42-ba55-217809dbea2e','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2106225f-e478-b84b-93ee-8112e9b54391','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da70da81-d30e-b644-8c9b-9e99868d980d','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('08cf60f1-59b0-7046-86dc-afbcfe3b8197','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3f9802b8-4c92-184b-ac89-e40ab7c55c01','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62774521-e907-3747-83ca-90733b415335','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7c13cd2-bd3d-154a-8e14-3f14d450ff4b','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c0deb27a-9b0f-3a4e-9af9-58960002c773','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('56dd16c8-9b7b-8644-823a-969e76eb6919','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8fec6e8c-64c4-ae49-b224-f8b8e6348124','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('12f874b3-33db-704d-afa4-f8f3e4dd785d','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('107da53b-80a6-8043-b117-442cd8d67853','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce3a949a-35b6-1a49-b3e7-1d102eb75054','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('deb5a6a0-c571-314c-a760-c86d9428392d','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c6267b1-3e59-014f-9d2a-6b0c73e98989','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8acd9b0e-b2f2-3649-a45b-0c00baf12a89','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb514a9d-ff4a-9c4d-b6b3-fd60a387bc24','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa1f9bf8-bc3b-d44a-bb2b-25e6fda9c01b','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b7ad919c-24cf-5b41-bac0-adb75dd8684b','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b03fc9a2-ce89-b440-84e6-8d74c0272986','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('663478d0-88b6-5f4c-bd51-0cc5296cd1e8','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('537cfa94-2dd2-934d-8d5f-26ff9e78a60a','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a7d90bb2-aad9-5246-b9d4-d5b926c26857','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('92f6ba70-d137-a34c-85a6-9107b9fbfc0f','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1bd917d-ef1e-9e44-8d57-e52311ede434','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9402e71-33a1-1c4e-afbe-bf634ee641b6','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('923dfdf9-791a-674f-b02a-0973c7c95255','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d638a8c-595d-9241-8bd1-3bd72e0ded18','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19ee3a90-d1c7-9146-92c6-0fcc2e7d4b71','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6669cde4-012c-7d44-b0a0-56e4a64a5ab9','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d0930cb9-5061-7948-894c-93530ddb0af5','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('20d2b705-1039-a74c-b682-c94886cb5f44','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1b684a1-a9b4-a443-8dab-db7b52beedc0','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('396cafd7-95e9-c54e-8660-1eb34806aa9b','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a224c6fe-a7f4-da4a-8392-2b69d54a1818','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a3d3091d-6531-3148-a7ab-6ca7c9cff70e','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ecadb193-699e-a047-8e19-64ff7e0ad785','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('64ed336d-2e5a-a848-af25-3f48f11daa3c','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d430adea-f1ae-724f-b426-8cf6365c3fd4','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85453103-74b3-c14a-8fe0-a4b56b785dce','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fea99438-c09c-b048-bc7b-a88187f18664','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff73b10c-de85-c244-875c-7a62fe8f9b79','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04238801-1ec4-c749-8bb1-bdff8a27887e','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f298b634-b3cb-3745-bf90-af8b4f81bb41','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fdeda7a6-281d-9345-bf6f-3a91ddbfe719','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('2c4cb2e5-9fab-2d4b-b578-867249613efb','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f170402-5ac3-2a41-8789-c0c71b6ecf66','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c50694fe-53d8-3d42-9987-59b40fa6d683','6cee2da4-f165-304a-8466-b125409f232d', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70777b3f-f605-f94b-9e03-7b3847c8fdf6','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68bd74f5-0d8d-7445-87e7-90c136a5b65c','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc9868ac-49bd-fd4d-9405-db5711e8fbb7','6cee2da4-f165-304a-8466-b125409f232d', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('83ccc75b-ba86-424d-84da-1a05a90427e8','6cee2da4-f165-304a-8466-b125409f232d', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2336272f-c1da-7e4c-9629-31744ef09993','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d88dbee-0d6a-f848-bf73-b88a41a67fc2','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c619ae3-0dba-9641-9a50-75f733ccf344','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74b5a4d2-c010-9a4a-a67e-aa7d4ab866d0','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('200aa5cf-2ca1-ac4e-83c0-d0d6e996c850','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3d9de5d5-7e4e-ca4b-9ff1-73dff97bd5e2','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7258cae-cf8b-e349-a1b5-a0de961d37e4','6cee2da4-f165-304a-8466-b125409f232d', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a94ce128-7dc8-ca4b-93c2-3efe6c07aed4','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dec56d94-080a-4941-add5-e576101e8837','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85477157-ccfb-8747-a4fb-d112f33c7992','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6756c1bb-392d-8f4a-ac5d-2bf2f7a5cb8d','6cee2da4-f165-304a-8466-b125409f232d', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c93f0ff-dc8a-5f47-9a70-da4f8f336a2c','6cee2da4-f165-304a-8466-b125409f232d', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4eab4d8-04c6-bc44-a2a5-25342b305c51','6cee2da4-f165-304a-8466-b125409f232d', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1ba1094-66b7-0d45-b250-c60d5b70c090','6cee2da4-f165-304a-8466-b125409f232d', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('40a454f0-9c01-c44c-8241-8e28f8651a4c','6cee2da4-f165-304a-8466-b125409f232d', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1d5494a-00d6-d643-9868-01215d0b1478','6cee2da4-f165-304a-8466-b125409f232d', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0148e418-9450-464c-8355-a51bc42d1d29','6cee2da4-f165-304a-8466-b125409f232d', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a870bb20-0b99-e64e-a1cc-b7daad69cf34','6cee2da4-f165-304a-8466-b125409f232d', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('cbe70787-b2de-0b47-8970-f787cebca665','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('00fda58a-582a-184a-825e-d1ba40962e7d','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61b7a396-e687-714c-8944-3a8e4af3be79','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b18d797f-66e9-d94f-9df5-22609d75f945','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af69de83-4fa5-c243-ab25-ae4b0424769a','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('339a34aa-a4e3-ac4b-9fc1-b307f73f6baf','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e842634-4f7f-ed4f-9aec-3cece50c0f3b','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8622569e-388e-eb47-a3bc-3c3b041f76f9','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09810670-f958-8a4a-ad76-8462a60d36c9','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('345022ec-bbd8-f54c-b5c7-649be339be47','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc033103-8cc4-4a43-be0c-2336b08a06a7','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fdb72f9f-e9d5-5044-ae7e-e662585b51af','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('42adba0c-a359-ce48-803c-a925d5ea08d6','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1fe2bce1-e030-9048-b8e9-5195cc5a54c1','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d59b79b1-3909-ae40-b782-a5f4dee735e6','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('73d22655-a242-ab4d-bf5e-582ffa2aef56','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7a4cb940-77fb-7143-bbec-08973247f5af','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01605811-a80f-8f4d-9142-3dd08957067e','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d3364861-8f4f-1143-8731-676e6dc867f9','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d3a4bf0e-8b37-284a-af6f-46b1d3b87e8a','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b872f14-dc95-bc4b-8d82-2729568f19cb','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5961bd63-b57d-604e-a178-161c4d750696','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b59610c8-862d-db42-a5de-e98ab1bc1b72','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('688baa08-3a11-8c46-99d3-9e24565b66e6','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('badae05e-e440-774c-9e2d-fa575638129d','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('077e93b7-57b3-d34a-87d3-0e532c44bad8','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1bc6f6a7-2a9d-9d40-b1aa-07a6e37cfc3a','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14bde611-1304-9b47-b946-46f0bc78a2fd','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '5ec51b50-bd21-47ff-bfc9-abdb970ec564', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('333f60c0-232f-0c44-ad1b-d511a48fd9d9','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e295d11b-4429-e04a-83b6-0e86cfecd1f7','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('645cecb7-09d0-8c4c-9f68-92553b0ff411','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0feb329f-c5ad-3444-92a9-adaf960be5de','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f81f2b5-7231-1a43-9d13-b457eb905d42','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a7ea1da7-6019-d84a-9dd8-30bc12bc96d6','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ef474a5-169b-064f-837d-22c38b70e7bd','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('879359db-5d5c-c848-a313-e92fa38bdab7','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('295a6dcd-92ce-9649-94a2-37284c309a5c','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da5b09bd-b920-0b4b-9b56-92ade6409d9a','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc7764b4-e69c-6e49-b15d-c982b58e99bf','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11c947a1-f11f-5f4e-a2aa-456a781aa287','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('756123ba-4aa8-2247-b21e-9c286fa80e2d','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67385002-8541-3a4a-8b95-0de169480f7a','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ae841c6-2c7c-4543-a616-c4215d9b86b7','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('20324cc4-6210-274c-9589-5e5818adabce','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e8f7ac1-a131-0f41-ade2-3f9791c182fc','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b7fd42d3-41be-bd45-a91c-bcc026240768','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c925aa6-bcbd-2b4d-b79b-9d02f54e885d','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15cccd75-8901-884f-b7f2-afbd186dbf92','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ffd95fbf-9426-b844-be00-bba24ebf1092','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ca8376f4-f94a-ba4e-8220-ce8c6e753eb1','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0');

-- tab
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c5b964b9-04a0-1f44-bbed-c4c382316f29','7a0fc698-b3a5-8648-ab97-5576f2043778', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2bbeee73-0490-8548-9e73-7a0163ac4fc6','7a0fc698-b3a5-8648-ab97-5576f2043778', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4c66c19a-ea97-8941-8ca7-9acb4f6579f6','7a0fc698-b3a5-8648-ab97-5576f2043778', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('77ec50ed-e06f-dd4e-aaba-fef855e883b6','7a0fc698-b3a5-8648-ab97-5576f2043778', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f5532ce7-079b-9840-abf7-2c50f65286e2','7a0fc698-b3a5-8648-ab97-5576f2043778', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7e4066b5-3678-5442-8a53-945ce1e78d8f','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fe4b5d33-b946-9d42-8dd3-80fa99820f11','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3f26f0fe-3f93-2749-ac04-81a138210c5e','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b5a98f0a-2293-9848-8975-836c158ecce8','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bdc2022b-fd4a-d446-9ed9-b5a4946887ba','51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7724d5b7-7fb2-5f43-ae70-be1f74c37df7','cb0e2f71-1831-4743-af79-2c8de63364fd', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d0c36533-4c96-a54c-a709-d2a00a68d5c0','cb0e2f71-1831-4743-af79-2c8de63364fd', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('69568b93-2193-f34e-8f08-42372bc619a0','cb0e2f71-1831-4743-af79-2c8de63364fd', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('65c894fa-0978-224e-bf08-840bb1cef69a','cb0e2f71-1831-4743-af79-2c8de63364fd', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('63f7fd54-9933-914c-af8b-8f836970c02e','cb0e2f71-1831-4743-af79-2c8de63364fd', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('36fd8fac-0d91-0548-a088-b16a88f099df','5042f632-0f92-044f-82af-e62e0a0d5341', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0648b0e2-5de7-5d4e-a4b7-9fe646088bb6','5042f632-0f92-044f-82af-e62e0a0d5341', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('eaed529f-61cf-9f46-ae0e-29a4cd820a6a','5042f632-0f92-044f-82af-e62e0a0d5341', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4db7f050-b1d1-cd4c-a565-4971d8041e56','5042f632-0f92-044f-82af-e62e0a0d5341', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('675ed625-0d9f-f648-b648-f32ae1492373','5042f632-0f92-044f-82af-e62e0a0d5341', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e7b3b5c3-6548-804d-864b-5fee0cf89d5d','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fbe7fcb2-c95b-db45-aebe-4e2e600715f4','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('caf2d1b8-930c-b24a-934d-0488cec0b6a6','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a816e77b-be1d-2347-9816-03ebd497bc7d','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2136d956-29b1-2441-820e-bc5486317b6e','fd284a10-88fb-564f-b9f4-4d0eaab40bf7', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2194458a-f5ba-fe4d-a938-3c114827d201','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3b5a7f7b-ba6c-e64a-8077-06c3a1a5d7bd','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2bacc86c-b7ba-8a4c-b075-9a57dee64533','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('02cd9ff3-1b1f-114f-966a-da634d228f7d','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1409abd5-d5b8-4742-aa65-c0b849ea03a4','aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3fd706f6-8ec3-014a-99ff-25ce55735d7d','d14f34cb-6503-464a-834b-b512aa21846f', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e6fa1b7c-efee-8247-b73c-31e861356483','d14f34cb-6503-464a-834b-b512aa21846f', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('77c777fd-4cdf-8f49-9b85-d8e8ea39f430','d14f34cb-6503-464a-834b-b512aa21846f', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0a74327f-6c1e-2e43-8bc6-4bf7219e3b45','d14f34cb-6503-464a-834b-b512aa21846f', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('cb5683ee-7e6b-8f45-a293-8b70c607a72f','d14f34cb-6503-464a-834b-b512aa21846f', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('54c960bf-a22b-e249-8887-fcdb35e6be45','d14f34cb-6503-464a-834b-b512aa21846f', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('90d374d0-daac-a440-9dce-e8206052a489','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3b51137e-9087-9e44-a2d2-f3fd0c786353','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('633894be-946c-074b-a8fd-5119afaa7241','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('852e6734-c1cf-104f-869b-3f7c25a53dc7','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('618e59b5-ff3e-c649-8381-e4b58c0afda2','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d2e89b2f-36bb-9945-a700-a3ce0965049e','7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('279f9050-26c9-e54b-a826-2f1054746278','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3d0749d7-cd5b-6949-90b4-bc99f90995b2','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3ebc795f-0645-744f-9b19-f80083d8ea24','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1cedb566-412b-7842-a417-1f094693b6c2','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8e26048c-3f53-334a-b228-df46ac1d21a8','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d56ca721-800b-3c47-a428-08d166299a2e','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('87acd997-102a-d745-a71f-a5fedf938fb5','02158020-fc1d-8246-9aad-b1979890fd12', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('51ffc513-911f-9443-ab53-d410bfb0c735','02158020-fc1d-8246-9aad-b1979890fd12', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5ef5b228-d672-8144-b6f9-abae9ccaa1ca','02158020-fc1d-8246-9aad-b1979890fd12', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b2a557a0-11ab-624d-90cd-faf0f11e8f89','02158020-fc1d-8246-9aad-b1979890fd12', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a108b87b-e228-fa46-84d0-894717133d09','02158020-fc1d-8246-9aad-b1979890fd12', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5addb0ab-9024-6544-9799-7903d68014f9','02158020-fc1d-8246-9aad-b1979890fd12', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c2f3088b-780f-4045-8dfb-fc650f538560','44b34643-1c31-5b4a-82d0-f404cf317007', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b967abe4-4326-3f45-8c5c-970e415f1ceb','44b34643-1c31-5b4a-82d0-f404cf317007', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('eac44670-aa92-1849-a88d-000b3ce8e9ad','44b34643-1c31-5b4a-82d0-f404cf317007', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a39f0e2b-e329-d946-af7f-5a8dec29620c','44b34643-1c31-5b4a-82d0-f404cf317007', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2e04ae38-7e2f-314b-8562-7d5bbecdae7c','44b34643-1c31-5b4a-82d0-f404cf317007', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a3dff71d-32e2-f540-9048-294398b97302','44b34643-1c31-5b4a-82d0-f404cf317007', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0b3acfac-7c15-2a48-9713-6fe50dd18194','a984f9b0-72b4-8d4e-a85b-29747163b978', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c4c83a57-83e1-8c43-947a-4a462c72ff67','a984f9b0-72b4-8d4e-a85b-29747163b978', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a7aab46a-dab7-544d-80e4-775f812fef07','a984f9b0-72b4-8d4e-a85b-29747163b978', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8a448d26-4761-0a40-9e17-f794b2945c58','a984f9b0-72b4-8d4e-a85b-29747163b978', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1dcd248c-b101-024f-929a-31c3b99c15bb','a984f9b0-72b4-8d4e-a85b-29747163b978', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c43ee822-6c48-844f-968b-bd5de02d9d24','a984f9b0-72b4-8d4e-a85b-29747163b978', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fc804851-bc0a-3d40-abf4-e22d0fd895bc','60d38807-39ba-fe43-8f4e-be2c734a4498', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('713e611f-6600-6f48-9b93-11391340f11a','60d38807-39ba-fe43-8f4e-be2c734a4498', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b086fff8-2c4c-6a44-9b75-67849fa3a0e9','60d38807-39ba-fe43-8f4e-be2c734a4498', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bd4f9fa7-b9b4-3b41-a28f-f0af3d4c00cf','60d38807-39ba-fe43-8f4e-be2c734a4498', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('581cd5e5-3b2a-624e-9d9d-e8215f003179','60d38807-39ba-fe43-8f4e-be2c734a4498', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bc469116-02d4-c642-87ab-c4438279e435','60d38807-39ba-fe43-8f4e-be2c734a4498', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bbdc6f3d-dc71-e147-bf69-00a504f401de','f36672cd-4ced-4945-a990-8e2e486402a0', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1af93f3a-50e3-ea44-b918-efc79b64c591','f36672cd-4ced-4945-a990-8e2e486402a0', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4518a2e0-3169-864b-ac44-962edaa59a42','f36672cd-4ced-4945-a990-8e2e486402a0', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ed3251be-8fd0-224c-9b67-a89c520a92be','f36672cd-4ced-4945-a990-8e2e486402a0', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('24f71c18-06e8-0f4a-87a9-37bcf0c31717','f36672cd-4ced-4945-a990-8e2e486402a0', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6dfa9827-027c-d546-831d-aa182283853f','f36672cd-4ced-4945-a990-8e2e486402a0', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e4df26f4-4210-e84b-81a9-d07b94adecf7','f377ce62-64a5-5c43-b1b0-0493e04c19d5', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6bc12c67-50b8-c849-ae2c-519602e0e66b','f377ce62-64a5-5c43-b1b0-0493e04c19d5', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1a787018-f0d1-0447-9037-ba51f36f9a0f','f377ce62-64a5-5c43-b1b0-0493e04c19d5', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('981037b6-d428-1c47-ade7-62ea3817b2a4','f377ce62-64a5-5c43-b1b0-0493e04c19d5', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9dcc4d36-a96c-b64a-83d7-dcf5b29261d0','f377ce62-64a5-5c43-b1b0-0493e04c19d5', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('380c977c-0073-b443-882e-772f5d19ee1c','f377ce62-64a5-5c43-b1b0-0493e04c19d5', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6130a2a6-f350-7145-961b-55f7c1eea85d','357cdab5-aef3-f546-ae3b-8448939be95d', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9999c624-e76d-794c-bd44-014dbe697abd','357cdab5-aef3-f546-ae3b-8448939be95d', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8e858cc4-5090-6b46-b336-e49db11e10da','357cdab5-aef3-f546-ae3b-8448939be95d', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a3189ec3-ff31-5f4f-b71b-22358d66e985','357cdab5-aef3-f546-ae3b-8448939be95d', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('97b43c6b-da47-de47-b60e-f0f605841ec2','357cdab5-aef3-f546-ae3b-8448939be95d', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3ef290b7-67ed-a248-80ae-b431df42c8b6','357cdab5-aef3-f546-ae3b-8448939be95d', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('cffbfaf2-5f8b-064d-a4b3-f6cd8c9a7503','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('75222a03-8f30-504e-a635-32107cfedf5a','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('64561ec1-b383-f847-a64f-42673069fccc','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('589af5f6-71ea-2144-8d03-27e287066b60','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('12acb1c5-51e4-5447-a9f0-f51cb16a4d94','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f6132c9b-1b01-ee47-ae54-428848737c38','8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0fe8d868-d3a2-2f46-9fe9-4564d41c65db','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('96b59024-7c8f-6b49-ab5e-2100541d6568','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4f37aeec-e922-104b-8a01-2f1bb341b773','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('05fc3c94-fd14-1343-b238-03eff2dbfda6','03c5871b-71cd-0047-a1f1-8b9ef45471f0', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bab02db5-df51-a24f-88f4-7099fd6597c1','03c5871b-71cd-0047-a1f1-8b9ef45471f0', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6548b49b-bf19-3e40-9bfa-795e1546ffc1','03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('eaf0b9bc-4c11-4343-ad73-009189c79094','c81412c2-1248-c947-b527-e2efc6d368d0', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d38433ee-4663-d043-8829-9511b6ab4629','c81412c2-1248-c947-b527-e2efc6d368d0', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('dc989ca1-9cb7-b149-8d3b-e5ae2815db05','c81412c2-1248-c947-b527-e2efc6d368d0', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('052ac6c1-a6aa-7940-96a9-ab4d81fbd7df','c81412c2-1248-c947-b527-e2efc6d368d0', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8ca420b3-6d3a-5843-9657-9ffef05fe9f8','c81412c2-1248-c947-b527-e2efc6d368d0', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0f4d2f76-9d80-ee46-b019-8e3d8219d318','c81412c2-1248-c947-b527-e2efc6d368d0', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4ffb8abb-73c9-a54a-a488-29dfee6e9402','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e98ee47c-a8a1-7049-916c-52d6e6c0c925','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1c324cd0-f653-214f-8d14-68f4e9bd2807','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('001a3231-9710-4e46-b522-73a48e803549','50c903e7-3b99-2143-8f59-3b3dc53dd249', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('660f34ae-c616-834b-8247-400259d69e46','50c903e7-3b99-2143-8f59-3b3dc53dd249', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('24a08a0e-125c-554f-9e40-0e5c29e3ff80','50c903e7-3b99-2143-8f59-3b3dc53dd249', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f36c499a-bd47-214b-8e1c-88b5245c82c3','579cc719-1a42-3e4d-9338-1c5438082bb2', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4b36185a-e514-d741-9aeb-4d5da5330bbb','579cc719-1a42-3e4d-9338-1c5438082bb2', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2b3ace2e-8f13-da44-af67-86330f63a7d3','579cc719-1a42-3e4d-9338-1c5438082bb2', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8d0e47b9-67df-214b-a67c-b47c4b8d1637','579cc719-1a42-3e4d-9338-1c5438082bb2', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5eb83ef2-30d5-214b-9b57-37dad85283ee','579cc719-1a42-3e4d-9338-1c5438082bb2', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('daf744ad-9774-cf44-b1ff-97c14b994eee','579cc719-1a42-3e4d-9338-1c5438082bb2', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d4c776b8-e5a4-7a45-986c-5139fffcf3f0','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1827b3ff-2de3-a049-abba-ab3b82c0cd18','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('523c1ce9-7fd9-714a-84af-d0568d1cb654','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('dd317d14-3f93-2c4e-b011-ba96da12b3cb','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('398f0088-8423-df4e-b3e0-1d48b78f1dac','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('639c8bab-4318-e34e-abf3-2a28c4e1b2a5','d573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('dbd339a4-a1fb-fd4e-b8f3-a6f34e560ffe','dc8120ee-f65f-bc4b-852c-7b0264795190', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f0ccbd1f-203a-0742-beea-8db2d7a53d81','dc8120ee-f65f-bc4b-852c-7b0264795190', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('bbe8fa83-d633-7548-9112-9783e585db53','dc8120ee-f65f-bc4b-852c-7b0264795190', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0836d7fa-2765-2e46-b99f-0fee66f146c6','dc8120ee-f65f-bc4b-852c-7b0264795190', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('692966a4-648e-fb4a-b2dc-c1437be191cf','dc8120ee-f65f-bc4b-852c-7b0264795190', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('32e0fce4-2c54-0946-ae04-a633630f62d5','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('72b5ccc4-89a6-574e-b7eb-f713f2078d32','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('679e98eb-e978-b848-a923-8babf5fb6d9c','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0b992850-63f5-4b49-a86b-59a64fb1cd75','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('379d8aa1-35b6-f94a-ab15-e29a51d21d07','56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f684b1df-9fe6-6e49-bc83-bd1cbcf2c49d','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('79b7ead6-8398-6540-80b3-1f21dc9b84a3','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c2aee665-ae4d-b249-9111-edf6429ca4c8','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0c158457-436b-4b45-94cf-2fc3d720d2a6','e3d9b091-433d-4049-b738-0a9f0cf8398d', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1a1a1d7a-12da-f54b-a652-cb36b1740341','e3d9b091-433d-4049-b738-0a9f0cf8398d', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('66ce8a58-086f-ff48-b33a-6a909ea98377','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('22e8a545-38d3-b04a-8075-a751be5edff4','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ba4b6b36-89b2-7a48-98b3-2aafd0009c9f','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d3f0a22d-dee2-6242-afca-5d9daa17f236','2d8ce88b-e968-aa46-8831-d24ceef70dda', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('290ac70e-c66d-9f4c-9c12-3b34eebc658b','2d8ce88b-e968-aa46-8831-d24ceef70dda', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f6f8ce6e-e148-a246-8c0d-983c916e3ce3','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('57d44612-582a-0149-8f23-8feb67f2a6ec','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('04227a53-e9f3-ae45-a7c6-67c55f4f3933','89413c75-697a-a24c-9291-e3a3ba57cfaa', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8eef84c5-9ddc-5c44-ac40-6dfcd199eebe','89413c75-697a-a24c-9291-e3a3ba57cfaa', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3e86e0e5-9efd-0d44-808d-ade41762acd6','89413c75-697a-a24c-9291-e3a3ba57cfaa', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a80a1824-f65e-4346-af96-9c87802a2077','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fa4da753-185c-e94e-b81f-0fc44213c109','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0fe84300-3a02-0143-b2aa-75dc035a7222','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ea3672c2-5073-0c43-b12e-e45e0c395e1f','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9aa08ca7-88a3-7744-9e27-7f7a18abb679','e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c56a2701-0b82-4b49-98d9-e87d49456a53','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b3db5f24-5783-9d43-8b24-a522343283a8','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b04c667f-f474-7849-9af3-bd5e8fd0aa24','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b3abccc5-a35c-fb4a-bbff-f3438bd1c4af','c20fa639-65c8-8e40-bb0a-7aea087e154d', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b1a59e2d-285a-224c-94a5-89ed4196e493','c20fa639-65c8-8e40-bb0a-7aea087e154d', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e13f7e5f-cf1d-a44f-85ca-ebaa7f721651','c20fa639-65c8-8e40-bb0a-7aea087e154d', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0c26d693-3bd9-5948-b0b2-71c09fc64a13','7263a6ac-8390-3641-b455-71a609f7f522', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('46c09b64-7ed3-ca45-8b3f-c04ae7971952','7263a6ac-8390-3641-b455-71a609f7f522', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7ba5bc78-24b6-6948-ac39-60ef2678d098','7263a6ac-8390-3641-b455-71a609f7f522', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9606a512-f33f-744b-beb4-7a761d6a64aa','7263a6ac-8390-3641-b455-71a609f7f522', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d7744d19-2615-0e42-a4b7-f65ee61f2cb8','7263a6ac-8390-3641-b455-71a609f7f522', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4aa30518-cdd0-064e-b57b-b1d0b8d76c3f','7263a6ac-8390-3641-b455-71a609f7f522', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c82cb41f-e19d-0a4f-86ce-53b6cce19d81','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3005797a-0355-2246-81ee-18a058a43763','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ad667354-d0a2-f648-8de3-9a78e4dbee72','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('652671fc-ab0a-4c42-9d8c-4d7d88411961','36c01b8c-5f73-0f4b-94cf-03fc57250798', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('31476cb6-68fc-6149-a0ec-d071b2c3c1dd','36c01b8c-5f73-0f4b-94cf-03fc57250798', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1c4e94f1-4b3d-2749-9541-217347b00630','36c01b8c-5f73-0f4b-94cf-03fc57250798', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('276da32b-ab86-054e-9de0-e1badf95cfb5','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f6f3d93c-3027-224f-af5c-17d80ef7c8ca','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ff7b4c65-7027-2540-bf3d-b92cc2515f62','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e322abbf-4488-b441-a2d3-a06084cbdbd2','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d23249b5-7dbd-2044-8205-633691ad3433','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('22162b74-49b9-6443-bdbf-a80fa9903aff','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d7512be8-b67c-0841-afca-940661f1b410','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('dcde9045-a9cd-0145-a61d-29e4cf36bca1','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('833a3833-9d16-fe45-aa7d-e56f4d430326','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('901c27bc-066e-eb46-aed3-fc26a04f674d','3f7df0a7-9c80-b947-8143-7dceb36a14eb', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('261953c0-9bef-e142-a36e-1cc3d256052b','3f7df0a7-9c80-b947-8143-7dceb36a14eb', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('71261ab9-8c96-fe4e-9e50-25f6ca81d212','3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fc059f53-711b-1043-bea8-00c67ec9b762','779ec230-6a79-de4d-b8c0-1212abb57353', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('effab3eb-27ea-ec4c-bf87-db71d1486221','779ec230-6a79-de4d-b8c0-1212abb57353', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f2e659b4-2135-6147-8fb0-10f0dcc3afe6','779ec230-6a79-de4d-b8c0-1212abb57353', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ebf1ceeb-820f-1648-9fd9-b0a67d233e8d','779ec230-6a79-de4d-b8c0-1212abb57353', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('21adac4f-f4ed-a84d-891c-395d27a4faf0','779ec230-6a79-de4d-b8c0-1212abb57353', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a8ae457a-8273-8f44-bcd2-a9dac0ce2a0c','779ec230-6a79-de4d-b8c0-1212abb57353', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('99a13dc8-dafe-ae42-93e3-a875bc6e2fcb','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b81f93b8-3fd8-2b4e-9358-dc9780900851','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('82b06eab-8632-9e43-ab42-591f0c74d572','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('510b9053-8b40-5f44-baf2-9eb5b2f62aa2','b8d76de4-6de6-ae41-bbd4-7d7744789539', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f529942d-dbb0-9247-9f88-6ddcec0629ec','b8d76de4-6de6-ae41-bbd4-7d7744789539', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ec924625-b042-5e4b-b2db-05fe135bdd9f','b8d76de4-6de6-ae41-bbd4-7d7744789539', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7b5525b0-11ed-5240-a16c-da1c9cb3529e','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('05e48d7f-c031-6841-956e-adbf6ab05422','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0a56e03b-5071-5547-afdb-2b4d1dd6faff','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('50150dbf-939e-c942-88c0-7d703ce92728','561a0eb4-7ddf-4347-9568-1dad38e29fbb', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('382fba7a-e4f4-fa4f-947e-a34d4adf94b9','561a0eb4-7ddf-4347-9568-1dad38e29fbb', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3ebab332-0131-5d49-a7f5-59f82346697b','561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5bc9a69e-e864-a644-a668-7bd4d5923cac','8f822cd0-9574-624a-9c69-412602491ac7', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('725e65ca-0f27-7f49-a834-10bd5be8a367','8f822cd0-9574-624a-9c69-412602491ac7', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0fcbaf91-7dd7-c047-9f77-02fe23b07cd3','8f822cd0-9574-624a-9c69-412602491ac7', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8d7d08be-25bc-0a47-85ca-8c714837bf78','8f822cd0-9574-624a-9c69-412602491ac7', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e55d30b1-d5b3-d848-b22f-afd9ede3fcd0','8f822cd0-9574-624a-9c69-412602491ac7', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1e3525d4-f636-e040-a11f-0809635d4c52','8f822cd0-9574-624a-9c69-412602491ac7', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6ab400ee-edfb-b649-b3be-65543356eb59','e828d3df-a884-ea48-bf6c-adea196180de', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3c9b114a-0f46-1748-8317-2859bd537ee1','e828d3df-a884-ea48-bf6c-adea196180de', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('be021751-7d12-1848-8b47-77c6fecda27a','e828d3df-a884-ea48-bf6c-adea196180de', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c2c33ac3-b56c-1541-9bee-ac53423c8077','e828d3df-a884-ea48-bf6c-adea196180de', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('79dfb75b-ec4f-7449-9ad2-36e6dc6afe75','e828d3df-a884-ea48-bf6c-adea196180de', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0d458079-9467-bd4e-ad51-b32238e88f3b','e828d3df-a884-ea48-bf6c-adea196180de', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f010a619-af22-8549-9df7-d6bc9fa2dd47','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('186a7778-9e6c-264c-a06d-b893be9a6a82','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('171fe58b-43f0-1b44-a4ab-bb62b25eb22f','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('558c00f7-3860-854d-b38a-2b9f9fc6436f','ab9fd8ac-18aa-a649-9958-eb70242a4d18', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('be520ac2-6349-2d4d-910f-9fbb18523839','ab9fd8ac-18aa-a649-9958-eb70242a4d18', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('cada25b4-bacc-3d45-8362-fc474835efdf','ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d5086db9-e690-b54f-acdf-66fe5943bf81','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3acc9c8a-c59d-d042-8c2f-9f42298b9282','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('65c66ea9-293b-7a40-942e-14c6a64d8fd4','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6633f11f-85b2-ac4b-9ba1-341b34d931a4','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('115f62ce-352a-1247-8671-661a7d82f947','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('885fb397-29b2-634f-bb88-aef490d895f4','35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b7bc9bf3-d743-7843-ba4c-1774e900d787','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('69ddfb56-5131-5a43-8b55-f334a0e0e67c','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e5d86603-6e4f-2d45-b99d-1e848d5f02dc','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('aebc9022-ed0d-6143-95d2-6a55779ae049','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('26fbeba1-1fba-8a46-9262-8363048b8bb1','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('eaef7f88-5511-2848-920b-2138c6fd06aa','1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3bf42d0e-d371-d64e-a6b2-d866ba6e16c6','6cee2da4-f165-304a-8466-b125409f232d', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c44086f3-6bc6-9c4f-a062-98c42784cc59','6cee2da4-f165-304a-8466-b125409f232d', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b8a95b37-4a36-3f40-b8ab-bbd06e2ba8a8','6cee2da4-f165-304a-8466-b125409f232d', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4c40d084-a0c2-5449-82ab-0d30681369ab','6cee2da4-f165-304a-8466-b125409f232d', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('dbca7b7e-9e00-3843-9e90-b4d5e7bf6463','6cee2da4-f165-304a-8466-b125409f232d', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b24a7a5a-7ac3-1241-abb9-6038b7bdae94','6cee2da4-f165-304a-8466-b125409f232d', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('073336e5-0eca-5d4f-b4e3-e422e4bd5faa','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5e69d055-3bc4-fe49-8ede-396c3543c069','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7a2a4fd5-2473-f24a-bb60-84dfde40ee7e','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('90143fce-aaab-4f4b-a1d2-168ba0363703','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('03f60007-134e-1641-94ab-9b096846c879','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('caa2ab98-6d36-a548-a6e5-01896e8e8caa','b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b03bce0d-e465-7244-95bc-09b07dabc4e7','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a45a87dc-0e7a-ae48-87ff-c8240fb57d73','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5ac4866c-9a3b-7443-9ebf-c8299cb60b86','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5a2096c2-3d14-1449-9a23-17704716729d','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8a88ddd0-13a9-5346-88d3-ff7c93abab48','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9964e0b5-b783-c648-881c-15a45f751b9c','5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '1',  '0', '1', NOW(), '1', NOW());

UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='6548b49b-bf19-3e40-9bfa-795e1546ffc1';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='24a08a0e-125c-554f-9e40-0e5c29e3ff80';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='bc469116-02d4-c642-87ab-c4438279e435';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='c43ee822-6c48-844f-968b-bd5de02d9d24';

UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='bab02db5-df51-a24f-88f4-7099fd6597c1';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='660f34ae-c616-834b-8247-400259d69e46';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='581cd5e5-3b2a-624e-9d9d-e8215f003179';
UPDATE `page_layout_tabs` SET `is_readonly`='0' WHERE `id`='1dcd248c-b101-024f-929a-31c3b99c15bb';
-- actions
INSERT IGNORE INTO `page_layout_actions` (`id`,`page_layout_id`,`object_action_id`,`display_mode`,`order`,`deleted`,`created_by`,`created_on`,`modified_by`,`modified_on`) VALUES 
('bfe4b050-ea91-434b-b402-89300c46f033','7a0fc698-b3a5-8648-ab97-5576f2043778', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('cac5aa95-83ed-ae46-9838-4abc761d27f7','7a0fc698-b3a5-8648-ab97-5576f2043778', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('996d7ad7-461c-854d-b1ab-876b66997aab','7a0fc698-b3a5-8648-ab97-5576f2043778', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('22b6dd8c-4ad3-e24c-901d-ca9c581ab334','7a0fc698-b3a5-8648-ab97-5576f2043778', '40683361-5f72-11e6-bfa7-5cc5d4d378cb', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('080d209b-f245-b640-b2ba-1c23c1b9da8f','7a0fc698-b3a5-8648-ab97-5576f2043778', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('363d022a-2938-364b-8a66-5a5c60992fca','cb0e2f71-1831-4743-af79-2c8de63364fd', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('252e3476-f1dc-b74d-a3ed-e33e18d8a681','cb0e2f71-1831-4743-af79-2c8de63364fd', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('ac7649b8-605c-da4d-9217-569d3787c312','cb0e2f71-1831-4743-af79-2c8de63364fd', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('82659c11-4687-2343-ac4e-fd12aa10d362','cb0e2f71-1831-4743-af79-2c8de63364fd', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('2610b5d1-5da4-f947-81e5-d2cfec49ccf1','5042f632-0f92-044f-82af-e62e0a0d5341', '168dedc3-c28e-4905-9caa-395efd8d3423', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('b5e25f9e-e177-1841-aeeb-5808464eb144','5042f632-0f92-044f-82af-e62e0a0d5341', 'ee135a73-e05d-46b4-ad96-da4d77a5aa44', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('632ed48b-d443-bd42-974a-6134b3dec8fd','5042f632-0f92-044f-82af-e62e0a0d5341', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('04091ae6-2792-7b41-841e-c4552865c1a8','5042f632-0f92-044f-82af-e62e0a0d5341', 'c92c61ce-77f7-4e67-bae9-428c8b871f99', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('76077f0b-f8a3-6941-a2ac-72d00deea4aa','d14f34cb-6503-464a-834b-b512aa21846f', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('498d897b-5e57-f545-8163-594fc4ac2157','d14f34cb-6503-464a-834b-b512aa21846f', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '5',  '0', '1', NOW(), '1', NOW()),
('295209b8-feda-1a42-842b-c0048957eeb9','d14f34cb-6503-464a-834b-b512aa21846f', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('4b136108-a8cc-5f46-9906-8332ac07e740','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('df64d566-3989-004c-9032-1854ef4d4479','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('637e8bfe-2ec6-3347-8577-3e4f36dc3206','f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('ae423ca0-fbba-3744-ba6e-41ad1037bd04','02158020-fc1d-8246-9aad-b1979890fd12', '611eb771-c645-4e2f-9a33-3b66f1bdca46', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('e4000d9b-962a-984c-84d9-547455206926','a984f9b0-72b4-8d4e-a85b-29747163b978', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('b3922d51-85f9-cd4c-a29f-9c4d5cf6adc2','a984f9b0-72b4-8d4e-a85b-29747163b978', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('3d844cec-2b5b-fc44-a50d-77b907cfe3e7','a984f9b0-72b4-8d4e-a85b-29747163b978', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('a2d1b5d1-a2bb-df46-b993-e3ccca57a6f4','a984f9b0-72b4-8d4e-a85b-29747163b978', '40683361-5f72-11e6-bfa7-5cc5d4d378cb', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('52a66f0a-7ae6-0347-b8a1-14edeb9f430e','a984f9b0-72b4-8d4e-a85b-29747163b978', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('cd46aaa5-d3ab-7847-a183-e98c0d429d4d','60d38807-39ba-fe43-8f4e-be2c734a4498', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('327763ea-f6cd-dd4e-a459-e022572c6a33','60d38807-39ba-fe43-8f4e-be2c734a4498', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('e6286138-2fb4-1044-a87c-0157db4c9780','60d38807-39ba-fe43-8f4e-be2c734a4498', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('4980f74c-d7ba-544a-bd38-66dc04771225','60d38807-39ba-fe43-8f4e-be2c734a4498', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('f7fc8421-d4d9-6349-b50f-bd6ac42cab76','f36672cd-4ced-4945-a990-8e2e486402a0', '168dedc3-c28e-4905-9caa-395efd8d3423', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('3b7edf8e-0b7b-6d43-bdbb-5732d6d86f0a','f36672cd-4ced-4945-a990-8e2e486402a0', 'ee135a73-e05d-46b4-ad96-da4d77a5aa44', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('c81ffcc5-d520-f74b-a5ce-c4caaae3325d','f36672cd-4ced-4945-a990-8e2e486402a0', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('22d3270b-8d7c-0142-9ff4-f1efc3e644ca','f36672cd-4ced-4945-a990-8e2e486402a0', 'c92c61ce-77f7-4e67-bae9-428c8b871f99', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('6b5d631f-6a73-ca46-9664-c265d42b8257','03c5871b-71cd-0047-a1f1-8b9ef45471f0', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('e14e3afc-bade-9141-94e8-31e0735f920a','03c5871b-71cd-0047-a1f1-8b9ef45471f0', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '5',  '0', '1', NOW(), '1', NOW()),
('aed7b9f3-00af-834c-bdee-1b7f875be8dc','03c5871b-71cd-0047-a1f1-8b9ef45471f0', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('88756d69-ff9f-f24c-b9d8-5438ee80aeac','50c903e7-3b99-2143-8f59-3b3dc53dd249', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('380c033e-5ce5-ea4c-98ac-9f0b02bd96b2','50c903e7-3b99-2143-8f59-3b3dc53dd249', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('4ec936bf-2a72-a545-9dbd-d51044bd0e53','50c903e7-3b99-2143-8f59-3b3dc53dd249', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('b3d7e00f-edd0-7c4a-a72e-1c919133d5bb','579cc719-1a42-3e4d-9338-1c5438082bb2', '611eb771-c645-4e2f-9a33-3b66f1bdca46', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('f343abc8-3f1f-ff44-b7e5-33ff57c3bb19','dc8120ee-f65f-bc4b-852c-7b0264795190', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('8fbc27fd-6d24-584d-a269-874c787f6320','dc8120ee-f65f-bc4b-852c-7b0264795190', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('56ef2336-d506-f548-bb8d-c2a4bb3de3b6','dc8120ee-f65f-bc4b-852c-7b0264795190', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('d8203a8d-635c-4e4b-94d6-290d1db7a459','dc8120ee-f65f-bc4b-852c-7b0264795190', '40683361-5f72-11e6-bfa7-5cc5d4d378cb', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('f3eb4317-71c5-824e-9f08-66da2188b929','dc8120ee-f65f-bc4b-852c-7b0264795190', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('696c889d-b4ae-9146-ba17-88936cf44298','e3d9b091-433d-4049-b738-0a9f0cf8398d', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('9a79f377-fa16-694d-865f-b9b5d982bd3e','e3d9b091-433d-4049-b738-0a9f0cf8398d', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('d0417d8c-1bb2-9548-9daf-1610ecbbfd3a','e3d9b091-433d-4049-b738-0a9f0cf8398d', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('2796ad69-7d5a-8b4d-b0dd-05abbc30a126','e3d9b091-433d-4049-b738-0a9f0cf8398d', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('9a3756bd-a53c-2843-bb07-83a915dcd66b','2d8ce88b-e968-aa46-8831-d24ceef70dda', '168dedc3-c28e-4905-9caa-395efd8d3423', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('55bdacbf-7be8-f24f-96bb-6d0498120ae0','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'ee135a73-e05d-46b4-ad96-da4d77a5aa44', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('d4f91cf8-4b96-cb4c-9566-4ec9387f1196','2d8ce88b-e968-aa46-8831-d24ceef70dda', 'b9015917-9be4-4d3d-afe9-bb2672dff213', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('6f830696-d645-a944-a657-5758b28aa4a0','c20fa639-65c8-8e40-bb0a-7aea087e154d', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '4',  '0', '1', NOW(), '1', NOW()),
('eaeaa6d3-a47a-2846-b193-321bf104f04e','c20fa639-65c8-8e40-bb0a-7aea087e154d', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '5',  '0', '1', NOW(), '1', NOW()),
('7cd04566-1fc1-e740-8bb3-4a87947a87a2','c20fa639-65c8-8e40-bb0a-7aea087e154d', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('ed31311c-050c-7d4d-a53f-09e3defe397b','36c01b8c-5f73-0f4b-94cf-03fc57250798', '41792e30-5f72-11e6-805e-5cc5d4d378cb', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('db58f9c6-c55b-1b45-b4f1-9ae204fd0e8d','36c01b8c-5f73-0f4b-94cf-03fc57250798', '40264861-5f72-11e6-a2af-5cc5d4d378cb', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('697afc13-d741-3b48-8116-48f0fd87bd3a','36c01b8c-5f73-0f4b-94cf-03fc57250798', '3fde42de-5f72-11e6-bb90-5cc5d4d378cb', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('76849554-6885-ba49-b971-ea5808bbd9dd','705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', '611eb771-c645-4e2f-9a33-3b66f1bdca46', 'view', '1',  '0', '1', NOW(), '1', NOW());

-- pagelayout_assignments
INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('da8320cd-d11e-0643-bcce-05b711e6ff01','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '7a0fc698-b3a5-8648-ab97-5576f2043778', 'cs_market_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('59aded8b-0ba1-7443-a9fd-cb394d8c9ce8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'cs_market_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('94815fd0-c539-5f41-b043-e19e4eb1b21c','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'cb0e2f71-1831-4743-af79-2c8de63364fd', 'cs_market_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e4bd63e2-6089-5846-9fac-aac35ec7220a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '5042f632-0f92-044f-82af-e62e0a0d5341', 'cs_market_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('590bdac4-b5b5-1f46-8775-801c0fa3a619','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'cs_market_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('581a9af0-9191-e841-923c-30e9bbabdd70','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'cs_market_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7a87d222-6d82-a74b-9ee6-431c8b428321','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'd14f34cb-6503-464a-834b-b512aa21846f', 'cs_market_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('39bcbd82-291d-5341-83ff-2059624ff254','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'cs_market_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e64ac226-5b34-d94e-83f9-fa854cb6fb27','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'cs_market_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e0f5c0bf-42a0-d94a-b6a9-fdb7488f24e2','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '02158020-fc1d-8246-9aad-b1979890fd12', 'cs_market_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('951e1dbb-c680-5f40-a247-8fc9a0df81b0','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '44b34643-1c31-5b4a-82d0-f404cf317007', 'cs_market_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8fb01bc2-7cf0-c14b-a8f8-cdc205ca6e75','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2cb0b349-3363-054c-8bfa-2bdffd55fe87','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7668f7ac-e382-a945-8f70-9554243ccb04','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d9ec2d01-2ea4-e44c-83f8-bcabe84b570e','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('96e24909-a718-8c40-90a7-ff6dce2a2bd3','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4498d7da-9904-2142-a1ce-4e15a5f53709','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f2c21103-ca62-e545-8d99-54e1b2127677','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('556ba9ce-d582-d84c-873f-5d15395e0eef','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('354b1aff-5e17-2e47-b708-1c1e702ec6c3','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9c550b34-b513-a64c-8dbe-b5e4796bab5e','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '579cc719-1a42-3e4d-9338-1c5438082bb2', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a3966227-c9df-1240-9733-3db958e5bb3f','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', 'd573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f75f0672-43f9-7848-825b-5014a6bb83d8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'dc8120ee-f65f-bc4b-852c-7b0264795190', 'cs_market_child_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2429e71b-7da5-e942-a4f6-3e0e0482525a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'cs_market_child_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e6a124a5-5d29-3c4b-a832-a0a08b4bb346','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'e3d9b091-433d-4049-b738-0a9f0cf8398d', 'cs_market_child_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6c49dd83-5866-7c43-9b07-d032388a8b4e','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '2d8ce88b-e968-aa46-8831-d24ceef70dda', 'cs_market_child_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0aebb75b-38ed-4c46-9fe5-b719045e76f9','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '89413c75-697a-a24c-9291-e3a3ba57cfaa', 'cs_market_child_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6f76ba26-cbd7-f240-850f-1c9ef5d244f1','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'cs_market_child_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ea2e79ef-c28c-9d46-ba87-d2715182e805','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'c20fa639-65c8-8e40-bb0a-7aea087e154d', 'cs_market_child_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b20179a7-d6ac-c64b-b408-52a7a16f4fa4','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7263a6ac-8390-3641-b455-71a609f7f522', 'cs_market_child_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e90bc4c0-f052-f246-89ea-2b7d4f67a034','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '36c01b8c-5f73-0f4b-94cf-03fc57250798', 'cs_market_child_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('808f6ab6-ac36-da41-b324-65b4b7da4d2a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'cs_market_child_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('81be8bd2-42d2-a344-88e0-f109304a52f6','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'cs_market_child_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a49e61fc-d342-f54b-94a1-1a2ebb7fee38','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('201097a0-03a9-8640-b36f-6b3e3dd59e7e','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e57756db-b5bb-9a4e-971b-31797db30ba4','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8e494700-068d-4d43-9599-b54031fdd4d8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('697a66d7-3cf6-2840-b811-d22d0c0f0787','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('74e9e74e-6270-8948-b546-1b4228bfb371','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('78c4eef1-c9fb-e94a-b1a9-ce3e644a8caa','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f4b52bcd-596e-8743-a31d-eab420da33df','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5534edbe-75b0-2646-baef-262cac7bcf54','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('44b23245-dd9d-a245-88d0-3e9e34c52dac','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6916537a-df00-7d4b-8852-ce60302e5346','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0fe30a2f-6d3a-d34c-8bcc-af6c16265180','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '7a0fc698-b3a5-8648-ab97-5576f2043778', 'cs_market_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b2115252-5cb5-d34c-a513-8f5539a646b7','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'cs_market_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9c65feb1-26a0-f54d-86af-67f4843969a6','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'cb0e2f71-1831-4743-af79-2c8de63364fd', 'cs_market_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('58975164-49a9-304d-a2c4-dda5ec770d9d','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '5042f632-0f92-044f-82af-e62e0a0d5341', 'cs_market_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('90e71036-d77d-6249-b554-70aef74ab93f','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'cs_market_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('877e1e14-35e7-464c-9db8-555dade7f1e7','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'cs_market_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f807a644-74ed-5f4d-bf0b-7525cfc870da','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'd14f34cb-6503-464a-834b-b512aa21846f', 'cs_market_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b7096845-2595-2844-a0bf-6ee04bc55cce','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'cs_market_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d6ee0c77-d6dd-9e4a-8170-92cac62c8265','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'cs_market_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('238e448f-4888-d74f-96df-a5e23f8b4832','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '02158020-fc1d-8246-9aad-b1979890fd12', 'cs_market_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('60707faa-ce81-b54e-929e-a04dae8f9204','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '44b34643-1c31-5b4a-82d0-f404cf317007', 'cs_market_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('da211d14-c485-1d40-a5af-d0535c5332c0','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('01be9adb-a032-d740-ae31-6b4021dc3c09','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ca0efb5c-bc40-d048-b1b8-fc1f6d561069','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e30aa6dd-d5e9-0046-9848-150c604a68bb','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d5cd8ea0-ecec-d04c-876a-6783e2338b4c','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('85a1adcb-c5d5-284c-a40e-4286f88f6d67','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('44934989-c0a0-7242-8a4e-4cab90a16cff','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e14e283e-b8ee-1046-ab8d-6c7133671755','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3c114f84-b24e-2343-9f90-bc3f2e7fd5e8','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7ab2fc47-2c6f-ed43-b801-66b6c4c7e4cc','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '579cc719-1a42-3e4d-9338-1c5438082bb2', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7ede073b-465a-794f-a9d1-dbc98f034704','53de9670-1da3-11e6-961c-5cc5d4b57135', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', 'd573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f6dc1911-0bb5-7b40-a673-22715f577582','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'dc8120ee-f65f-bc4b-852c-7b0264795190', 'cs_market_child_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('62628637-d700-ff40-9ad8-f1c59963f14b','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'cs_market_child_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('099e8004-85e0-f54b-b933-3ac1afacd3d7','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'e3d9b091-433d-4049-b738-0a9f0cf8398d', 'cs_market_child_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3a79cc42-1ea2-914d-abb3-c3cb53a4d754','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '2d8ce88b-e968-aa46-8831-d24ceef70dda', 'cs_market_child_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('176a610f-8909-104f-bad9-0d941a4a4eb3','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '89413c75-697a-a24c-9291-e3a3ba57cfaa', 'cs_market_child_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5e58542d-324f-f047-9c62-98b1ab9deda7','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'cs_market_child_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('826a5cb4-f88d-7c49-9f61-3453620370ce','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'c20fa639-65c8-8e40-bb0a-7aea087e154d', 'cs_market_child_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('76f483fe-37d9-854d-a62e-e3a88dd56720','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7263a6ac-8390-3641-b455-71a609f7f522', 'cs_market_child_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f1799489-3b32-354d-8a61-ffb630640fd5','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '36c01b8c-5f73-0f4b-94cf-03fc57250798', 'cs_market_child_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('da056159-0bef-394d-bcd9-ef312d55c154','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'cs_market_child_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cc7ff47b-1f15-0c4e-9220-d9a9c1775bbb','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'cs_market_child_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('21b63f5f-8466-7e46-95e3-1c903370c3c9','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6186e029-b8f5-ff4d-8c51-fb5aedb90f8a','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ab400a8d-866a-6840-80e5-4880e9100511','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('219585ee-9268-2447-b46e-6858d8e6ba8b','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a740f1da-a73e-1a46-bf5f-4d28a31cf1ae','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('72321899-83da-2b41-9507-bc59329ad790','53de9670-1da3-11e6-961c-5cc5d4b57135', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1baaf0e2-402f-7844-af0a-667c04af1f9a','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('91f5c891-edc3-1641-b07a-d058bf31ca89','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('91055be6-6747-bf46-a5a0-a746c5202693','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7135b38f-5b93-de40-909e-2917ba6363c7','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('99a6e4e3-c59c-2141-bfb7-c78383d4ad82','53de9670-1da3-11e6-961c-5cc5d4b57135', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3ce0b542-8cfe-b149-9c43-bcb7b1804de5','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '7a0fc698-b3a5-8648-ab97-5576f2043778', 'cs_market_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('54872834-abff-814c-acd6-648e33859944','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'cs_market_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('db4f266d-5cc6-2846-9fef-08a0d2393189','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'cb0e2f71-1831-4743-af79-2c8de63364fd', 'cs_market_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('36bc59b0-020c-b442-bb76-e035e37b4ba3','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '5042f632-0f92-044f-82af-e62e0a0d5341', 'cs_market_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5c548a00-d485-fc44-ad63-a8123c906221','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'cs_market_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('18417d34-fd46-964d-94be-5cb22ce7b30a','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'cs_market_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b158acbf-0d82-1c48-8a3e-c2ff0f68add5','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'd14f34cb-6503-464a-834b-b512aa21846f', 'cs_market_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('aa7c0fc0-c67e-4e41-aae3-e432edd56309','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'cs_market_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4247d0c3-75a1-3c4c-b4b3-2f05cfa21a75','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'cs_market_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('17c89260-f579-1149-8f91-2769021bd3f6','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '02158020-fc1d-8246-9aad-b1979890fd12', 'cs_market_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('35b5c157-e270-3f4f-9c58-85842623214a','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '44b34643-1c31-5b4a-82d0-f404cf317007', 'cs_market_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1c0eb368-3f3a-9842-b811-a11513b8144f','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5bca660f-e5a3-fa49-a2e9-5047ed695e9a','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5da0bb11-96b9-9e46-a1de-3b70545dd3f0','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1d7566eb-b187-444a-8501-a36b82e7f69b','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('bc11c2fc-ea13-aa43-97db-b62327997f36','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('69bcd396-dfd5-9f4c-9447-99fbf32be47f','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d6b749cb-84b0-3945-9e25-cabb5066a422','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('596c42c2-0547-cc48-bf76-266a3e5f41a7','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('101f2228-a5c0-b347-a1e4-4e772d45a04d','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('65b8245e-2ce9-374c-be9f-c9dda8cc4a49','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '579cc719-1a42-3e4d-9338-1c5438082bb2', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('09a3c4f6-94be-7844-8299-a111a2362f59','53de9671-1da3-11e6-93fb-5cc5d4b57136', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', 'd573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7f19750d-c4ce-0240-ba36-682245360e21','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'dc8120ee-f65f-bc4b-852c-7b0264795190', 'cs_market_child_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('330f0264-0bd9-da43-886b-344304090e4c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'cs_market_child_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('22ecc070-7197-5145-a8e8-506935f3a120','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'e3d9b091-433d-4049-b738-0a9f0cf8398d', 'cs_market_child_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('40cae2b5-7fc0-024f-bf37-7ad169bcc107','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '2d8ce88b-e968-aa46-8831-d24ceef70dda', 'cs_market_child_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('251e60d1-cd6d-7b42-b909-b53568796889','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '89413c75-697a-a24c-9291-e3a3ba57cfaa', 'cs_market_child_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f7dee1b8-9c63-b849-ac98-3cf846a1f122','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'cs_market_child_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('01f1d075-8702-6440-9c00-b96f27d1a419','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'c20fa639-65c8-8e40-bb0a-7aea087e154d', 'cs_market_child_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d4778628-f1b6-1144-b61c-ec7adf1618c4','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7263a6ac-8390-3641-b455-71a609f7f522', 'cs_market_child_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('326b26de-b513-b34f-ae76-6cafac19fc52','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '36c01b8c-5f73-0f4b-94cf-03fc57250798', 'cs_market_child_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('01b0ee49-1ace-3b47-8275-2bd7b2901582','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'cs_market_child_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6200ba8c-9e90-514b-9178-e8d13bcf7319','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'cs_market_child_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c3ebb6e3-dff1-6045-9370-4ee7b243f688','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0b96fee9-7a6b-c640-94bb-fcf7bb64bbb5','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3be6840e-c2e5-694d-8197-8f19f335ad37','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('36c4499c-178a-9340-9a18-2906e2ea46bb','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('560793ba-1df6-3b4c-bb26-5d0f8356354c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1e0134ba-7b25-8643-b42d-e6d95c39df2c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2330a2cb-60d5-8d43-86bb-a29992b5f8ec','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('442e9e2c-de26-c44f-acb1-efc67a129e4c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5f7d597f-bb83-7e4d-b9c9-a5aac88cfaf0','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c2e6db55-abb6-0b44-86c9-76c1eb56ea74','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1425737c-510d-3346-b22b-cf0f2043eba5','53de9671-1da3-11e6-93fb-5cc5d4b57136', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('592923af-0efe-2a43-8f93-416bf73c9b14','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '7a0fc698-b3a5-8648-ab97-5576f2043778', 'cs_market_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('107f3646-c72d-c548-8938-2e67839b6f63','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'cs_market_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('442387bb-626f-e349-9d20-9ec47188d946','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'cb0e2f71-1831-4743-af79-2c8de63364fd', 'cs_market_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('264ee324-1ed8-2d43-8cfa-d3aa3562d8e3','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '5042f632-0f92-044f-82af-e62e0a0d5341', 'cs_market_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('705f90ef-478b-3841-bbce-a8d90bd0bc39','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'cs_market_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('75674c6d-ad48-d345-adeb-7d63371c2984','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'cs_market_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ca67f9fe-9ad6-a74e-af4a-f167f03e1890','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'd14f34cb-6503-464a-834b-b512aa21846f', 'cs_market_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('243f669e-0836-e741-8c51-7c3ebfe3dee6','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'cs_market_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c1136a6c-6c1d-304f-aba5-34f2112aa820','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'cs_market_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4df47efa-16f5-764d-acc5-153cdd293568','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '02158020-fc1d-8246-9aad-b1979890fd12', 'cs_market_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('20f9c35e-0f5e-d844-99ed-c3580c28445e','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '44b34643-1c31-5b4a-82d0-f404cf317007', 'cs_market_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1d3ae856-0de6-a847-883a-423fa4547642','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c406a22e-78b3-094c-bc4b-5711d4f8a4fb','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('fb27fccf-bafb-6b4b-a837-644c381d127e','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('bdc29d58-7431-b849-b18a-f10a6ceddda9','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('fcf12fd9-ad46-be4f-87cd-61472e8b493c','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('780a64a5-d1b3-7744-a822-bff2d0652f1d','53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('48cec47a-9dc4-dc40-89f0-31c4b0d6c3ac','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('bfeee24d-0186-6844-b99f-d6af079bbd04','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('62760b70-c11c-644b-8da3-6b399fe6d3f0','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('fe1470e4-7c2f-d544-8dcc-8024d1edfd29','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '579cc719-1a42-3e4d-9338-1c5438082bb2', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3a440ff0-bc7a-1645-81f7-a720ebf7bee2','53de9674-1da3-11e6-ac97-5cc5d4b57137', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', 'd573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1f1d22d7-086b-e340-bdf2-628fc4cae045','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'dc8120ee-f65f-bc4b-852c-7b0264795190', 'cs_market_child_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c6004428-77f4-1540-866c-21192a32bbfc','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'cs_market_child_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0d80d2e9-93a8-d742-ac13-5e290efb94cb','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'e3d9b091-433d-4049-b738-0a9f0cf8398d', 'cs_market_child_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('08ebb7e0-3052-4f40-973f-610c202c09a7','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '2d8ce88b-e968-aa46-8831-d24ceef70dda', 'cs_market_child_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('49ae98dd-d140-6344-8a98-40bc6013e8aa','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '89413c75-697a-a24c-9291-e3a3ba57cfaa', 'cs_market_child_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a4d1fbe4-5ee4-0c40-b4dd-effe3e153e1f','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'cs_market_child_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0b704e9f-d93e-014c-bc91-58c28cf5b987','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'c20fa639-65c8-8e40-bb0a-7aea087e154d', 'cs_market_child_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7445c7c5-68c5-c14d-9cb0-736606eccf39','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7263a6ac-8390-3641-b455-71a609f7f522', 'cs_market_child_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('de067b52-fe79-354d-8163-ca9af293de24','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '36c01b8c-5f73-0f4b-94cf-03fc57250798', 'cs_market_child_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9f707da8-89a4-3b4a-b298-8a1334cd33e9','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'cs_market_child_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('23a40660-51f9-614e-ab97-e5c1596e2678','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'cs_market_child_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e475b53b-6450-d74d-95dd-e2f0d5c8035c','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('939527fe-4981-8c4e-9983-f5e2cc52176d','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f63ddb3c-eb9a-794d-b388-20788b925fc2','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c5ab2823-b03e-0241-aafb-ae6a330dabe0','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d6fd531c-51ba-0c4b-bd16-833b9eabcc2b','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f7af7c08-42e9-4f4a-84ed-35884afce2eb','53de9674-1da3-11e6-ac97-5cc5d4b57137', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cc0fbc60-f252-6448-9545-1f47f403d749','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0674e047-3d9e-6c4c-94f8-b729cba9cc77','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a8dbad75-2a3f-6640-9114-4037889561d1','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d123974c-6553-3b4e-9c70-279df1e689de','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('be745acc-1c6e-da4e-8e53-0a74d0d03912','53de9674-1da3-11e6-ac97-5cc5d4b57137', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('72f207a5-d149-874e-8b7b-50dffd9f6b72','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '7a0fc698-b3a5-8648-ab97-5576f2043778', 'cs_market_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8778f7b1-58cd-d442-84a2-29b65b181049','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '51cf7dfe-cff9-4745-9a8c-0c0b0ee56f84', 'cs_market_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5ea25097-299c-5d43-b05c-f0eb45d7940b','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'cb0e2f71-1831-4743-af79-2c8de63364fd', 'cs_market_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8f1e857d-e19a-c845-a086-7d77a97cbf39','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '5042f632-0f92-044f-82af-e62e0a0d5341', 'cs_market_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2854e2be-8fe6-2e4d-8405-18a39c95a956','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'fd284a10-88fb-564f-b9f4-4d0eaab40bf7', 'cs_market_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ca7dbe55-e75b-0e49-a2f3-f5c19ca2cd4b','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'aa5d33ca-d8a5-0143-bb1e-3a3c447d5628', 'cs_market_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2e1a54bb-c6db-494b-bf69-6d0bf7d425e2','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'd14f34cb-6503-464a-834b-b512aa21846f', 'cs_market_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9778ee71-9b43-4945-baab-dbe631acca23','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7d3fd46d-1a63-4c4f-9e26-8ebe735f8c09', 'cs_market_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4fadaa31-f93f-cc41-9cd5-74fbb98458d0','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'f25ad45e-d7c4-7846-9cfd-faaf0ccd4c5e', 'cs_market_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a81c5188-05dd-b74d-9e3e-bf43950c1900','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '02158020-fc1d-8246-9aad-b1979890fd12', 'cs_market_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e926a31f-dab5-6442-952b-7caee3c983b9','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '44b34643-1c31-5b4a-82d0-f404cf317007', 'cs_market_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3c03bc2b-0649-fe41-bd72-bac88c37cd1f','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('25689b96-4ba7-4b4f-88ee-027c9cab3e50','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('133b7626-fa53-7448-a7cd-95fc5b424847','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cfb99937-0bd1-5347-9308-ba4cfa7f5d47','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8ccd8626-ed6b-c943-8888-8b01ea3c1654','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1a42f0a7-3ed1-a042-941f-3b40e34d5e51','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ad1ab7c4-3b0b-1440-a9b4-31739a167a63','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('fed8675f-a776-2d4c-84f6-65af76145f97','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cbb56880-c28b-eb40-b405-64fe00b36419','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1c3ca1b9-5600-b14f-b8d1-6c4aaf517e38','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '579cc719-1a42-3e4d-9338-1c5438082bb2', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0a3f783-7f1a-be42-beea-262763d739f3','b72453fc-efdb-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', 'd573e8d2-54e6-9d4b-b79e-ff3930cec3d9', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('287e006d-acf6-b147-8f08-c113c2e070a4','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'dc8120ee-f65f-bc4b-852c-7b0264795190', 'cs_market_child_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3793ea04-cd54-d542-bc76-74f7b976e4ac','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '56f6c8a2-3971-cd48-81da-8a2f85b8b3a4', 'cs_market_child_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8f94c9f1-2f46-b04c-b01f-3519facdd3b1','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', 'e3d9b091-433d-4049-b738-0a9f0cf8398d', 'cs_market_child_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f5793257-29cd-e34b-90f7-7151a54daff4','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '2d8ce88b-e968-aa46-8831-d24ceef70dda', 'cs_market_child_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('498570da-58b8-a848-b2a0-528af8136348','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '89413c75-697a-a24c-9291-e3a3ba57cfaa', 'cs_market_child_cancelled_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3d3869e4-45cb-8b49-b6f1-31b74441e3ab','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'e41b69cc-bcbd-cd4f-bfbc-f491184bdc8e', 'cs_market_child_finished_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('bc56a7ed-1134-fc45-b194-2303d66f9e2f','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'c20fa639-65c8-8e40-bb0a-7aea087e154d', 'cs_market_child_report_save_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5368004b-ae67-3247-880a-d81c6e5a6318','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '7263a6ac-8390-3641-b455-71a609f7f522', 'cs_market_child_report_sent_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('aa32b982-18c6-fa4a-87ee-140d359f59df','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '36c01b8c-5f73-0f4b-94cf-03fc57250798', 'cs_market_child_report_rejected_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('708076d9-3fe7-bd43-ab6c-314e4aa9cedd','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '705a6f75-de7e-5c43-a2d7-2ee3c7d17b52', 'cs_market_child_report_approved_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1ee039e3-e2f3-9c46-bf1f-16b918c0c8e3','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '3f7df0a7-9c80-b947-8143-7dceb36a14eb', 'cs_market_child_report_writeoff_s',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e864cbb7-b628-104a-8ede-02c3824c5d9e','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e4748574-dbc2-4e4c-80ee-4413f3f5b389','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b0d6630a-2098-864c-93f1-4249d5e6753f','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8aa91b11-2a21-5d4a-a252-3b723dc4af22','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('35db5caf-699c-454f-b496-da0b6f39aeb1','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c0e56945-bd71-fe4c-9cf8-8d349923b9d7','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('61fa7d98-e635-cf40-806a-1340e6ddb409','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c98a7e44-89d5-bb4a-9afb-ab357d5299f6','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1e822df1-cf3a-8442-a38d-8aa9ae97089d','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('de3e3b7b-681b-704f-adaa-f3547572f96a','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'b71c7ef6-e41a-df45-9f39-7c2eeb546b60', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8802f283-e0ea-8a45-91be-d53aa412093d','b72453fc-efdb-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '5ce209a0-21a0-ad42-a3cb-074e58b1dc87', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- 市场部允许添加讲者授权
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('eb1155c8-f0a0-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '0', '0', '0', '0', '1', '2019-10-17 11:43:02', '1', '2019-10-17 11:43:02', '1', '1', '1', '1');

-- 7e831089-5e2d-4285-b722-7aa424fe6b9a  会议费用list large
-- 15f43e96-e9a4-11e9-b9aa-0298a739dec0  event_schedules 
-- 3719aaf4-b9ae-11e8-8758-020652a9390e  参会医院 list 
-- 4cc0a1dd-c9a9-482d-8d09-d64d6ca5c71b  参会人 list 

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('6da75335-f0b6-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '7e831089-5e2d-4285-b722-7aa424fe6b9a', '0', '1', '2019-10-16 10:03:23', '1', '2019-10-16 10:03:23', '1');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('d714c9eb-f0b6-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '15f43e96-e9a4-11e9-b9aa-0298a739dec0', '0', '1', '2019-10-20 06:06:56', '1', '2019-10-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('acc035e6-f0b8-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '3719aaf4-b9ae-11e8-8758-020652a9390e', '0', '1', '2019-10-09 03:32:01', '1', '2019-10-09 03:32:01', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('c392ddb9-f0b8-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '4cc0a1dd-c9a9-482d-8d09-d64d6ca5c71b', '0', '1', '2019-10-09 03:32:01', '1', '2019-10-09 03:32:01', '1');

-- 会议日程与会议费用授权 
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('d901da95-f0b7-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'd6df54fb-b886-4833-b90b-fec0132ebbe2', '1', '1', '1', '1', '0', '1', '2019-10-10 00:00:00', '1', '2019-10-10 00:00:00', '0', '1', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('f589e871-f0b7-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '87d3c319-598a-4fe2-b391-21b8bbcae4c7', '1', '1', '1', '1', '0', '1', '2019-10-10 00:00:00', '1', '2019-10-10 00:00:00', '0', '1', '0', '0');

-- 市场部 父子会议 会议类型与会议费用 map 可创建 会议费用
UPDATE `custom_settings` SET `value`='{\"05320400-e35f-11e9-b9aa-0298a739dec0;;21f2482f-e35f-11e9-b9aa-0298a739dec0;;bdf5191c-efe8-11e9-b9aa-0298a739dec0;;05b19885-efe9-11e9-b9aa-0298a739dec0;;2c247526-efe9-11e9-b9aa-0298a739dec0;;506b5b72-efe9-11e9-b9aa-0298a739dec0\": [\"8c51ee93-ea66-11e9-b9aa-0298a739dec0\", \"c27358e6-ea66-11e9-b9aa-0298a739dec0\", \"1172573c-ea67-11e9-b9aa-0298a739dec0\",\"2a1fd275-ea67-11e9-b9aa-0298a739dec0\"]}\r ' WHERE `id`='10';

-- 市场部 对 四种费用类型 record 授权 
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bfbb259c-f0ba-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', '0', '0', '1', '2019-10-09 20:22:52', '1', '2019-10-09 20:22:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f170baa3-f0ba-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', '0', '0', '1', '2019-10-09 20:22:52', '1', '2019-10-09 20:22:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f785a72e-f0ba-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', '0', '0', '1', '2019-10-09 20:22:52', '1', '2019-10-09 20:22:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fefaa614-f0ba-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', '0', '0', '1', '2019-10-09 20:22:52', '1', '2019-10-09 20:22:52');

-- e9328113-ea6a-11e9-b9aa-0298a739dec0  会议费用详情 
UPDATE `page_layouts` SET `name`='event_schedule_view', `screen_size`='both' WHERE `id`='36216400-2f9a-47ad-803e-749ba5a7cce0';
-- 日程详情  36216400-2f9a-47ad-803e-749ba5a7cce0
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('76b0eabd-f0bc-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '36216400-2f9a-47ad-803e-749ba5a7cce0', '0', '1', '2019-10-10 07:17:58', '1', '2019-10-10 07:17:58');

-- 会议费用layout_assinghment
INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3acb5651-ac9f-ea4f-a42a-1b76e9435ccf','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', '23a4e271-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('39a312bc-147b-b448-bd15-f55bd300d423','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', '422631a3-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0b29787d-f405-1440-8143-24523f88acbf','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', '4f5e8057-ef91-4af0-a940-3d6b438293c6', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a68be55f-9ad5-844a-b6e2-6c6a6ff273a2','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', '7539ddde-0985-4396-b4ca-641ae1e291a7', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('34d8a83e-2fe8-6648-b166-afaecf21bb6e','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', 'ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('59a1f7ec-8b6a-bd41-9412-1afaa22017a4','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', 'f2e05b32-9f7f-4818-9947-a369b085c9ae', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('be837604-6ec2-6441-9131-f95a8bff3262','b72453fc-efdb-11e9-b9aa-0298a739dec0', '8c51ee93-ea66-11e9-b9aa-0298a739dec0', 'f3f66e1d-14e0-4527-8bae-b72c1f15ef31', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d30c28b2-efe2-af42-90f4-e6525fc26927','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', '23a4e271-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0efd6e7f-030f-6245-be64-e2d72304a3c6','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', '422631a3-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6b26b513-e44c-e949-94d5-4dfb2b75d01c','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', '4f5e8057-ef91-4af0-a940-3d6b438293c6', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9a931add-90e8-ce49-a7d2-6b357578eb05','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', '7539ddde-0985-4396-b4ca-641ae1e291a7', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('385dbacf-32f0-cc4b-9b53-ba77f802d76c','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', 'ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f04636f4-a7bb-0044-b6db-d7c703b40b07','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', 'f2e05b32-9f7f-4818-9947-a369b085c9ae', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('09716572-845d-dd47-a04b-a6d9dc8dc5f4','b72453fc-efdb-11e9-b9aa-0298a739dec0', 'c27358e6-ea66-11e9-b9aa-0298a739dec0', 'f3f66e1d-14e0-4527-8bae-b72c1f15ef31', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cb57997b-bd84-4a47-837c-394bb86e587b','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', '23a4e271-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('eaf8bbb9-deaa-6c4b-be71-720bb9ff8283','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', '422631a3-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6c494cc5-00d1-0b41-9a2b-d5c59131a349','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', '4f5e8057-ef91-4af0-a940-3d6b438293c6', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d7071925-c1b8-2e49-9238-c7c67340ef83','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', '7539ddde-0985-4396-b4ca-641ae1e291a7', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('553d3658-5a1b-8846-9df6-ed87d2dc9866','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', 'ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ff827cd5-90ca-7449-8c3a-176640725f7d','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', 'f2e05b32-9f7f-4818-9947-a369b085c9ae', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('03f956bc-b22b-fc4f-9d20-e8ad5a5c74ca','b72453fc-efdb-11e9-b9aa-0298a739dec0', '1172573c-ea67-11e9-b9aa-0298a739dec0', 'f3f66e1d-14e0-4527-8bae-b72c1f15ef31', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0f18662-d816-ae46-9dbc-26e23c74c6ae','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', '23a4e271-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('42a1339d-0b98-e143-bc8c-d265d6b0d109','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', '422631a3-ea73-11e9-b9aa-0298a739dec0', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('03e5afc7-54d3-da47-a8d7-60c1408b80ca','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', '4f5e8057-ef91-4af0-a940-3d6b438293c6', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('59844cb6-327c-da40-926e-b7768da3e3ed','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', '7539ddde-0985-4396-b4ca-641ae1e291a7', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('01930f02-1cc4-b547-bf39-332db92f57c6','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', 'ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1384b881-2a49-c84b-981b-0b5bc471a48d','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', 'f2e05b32-9f7f-4818-9947-a369b085c9ae', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1963b39d-ab62-b04e-add6-397dd83b5231','b72453fc-efdb-11e9-b9aa-0298a739dec0', '2a1fd275-ea67-11e9-b9aa-0298a739dec0', 'f3f66e1d-14e0-4527-8bae-b72c1f15ef31', 'e9328113-ea6a-11e9-b9aa-0298a739dec0', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- 同步子会议名称 
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`) VALUES ('5ebbf8fc-68f9-4458-8093-410443396837', '3f49c30f-5d59-11e6-a130-5cc5d4d378cb', '同步子会议名称', 'Synchronize sub-event name', 'trigger', 'from orionbase.common import models\nif instance.parent_id:\n    parent_event = models.Events.objects.get(id=instance.parent_id)\n    models.Events.advance_objects.filter(id=instance.id).update(name=u\'{}-子会议\'.format(parent_event.name),geography=parent_event.geography,event_place=parent_event.event_place,event_start_time=parent_event.event_start_time,event_end_time=parent_event.event_end_time,event_description=parent_event.event_description)\nelse:\n    instance.child_events.update(name=u\'{}-子会议\'.format(instance.name),geography=instance.geography,event_place=instance.event_place,event_start_time=instance.event_start_time,event_end_time=instance.event_end_time,event_description=instance.event_description)\n', '', '0', '1', '2019-05-30 13:44:55', '1', '2019-05-30 13:44:55', 'post_save', '1', 'custom', 'sync_sub_event_name');

UPDATE `custom_settings` SET `value`='true' WHERE `id`='54';

-- 会议讲者使用专属layout 
UPDATE `object_fields` SET `configurations`='{\"fill_in\":true, \"fields\": [], \"page_layout_name\": \"event_speaker_representation\", \"check_maximum\": false}' WHERE `id`='eee173de-a59d-dsac-b11b-5cc5d4d378cb';

-- 讲者费用  
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`) VALUES ('gdeg7g97-1665-42b4-b107-e0ec14120be6', '06065dad-7e11-4414-a63d-7bb39767f675', 'field', '8443be05-fdb4-4baa-84b4-a49a776acc66', '讲者费用', '3', '12', '0', '0', 'both', '0', '1', '2018-09-07 08:39:47', '1', '2018-09-07 08:39:47', '0');
-- 讲课内容 longtext_1
UPDATE `object_database_columns` SET `used`='1' WHERE `id`='2920bf0b-2567-4592-8684-f2dceabca397';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`) VALUES ('96222614-f0ce-11e9-b9aa-0298a739dec0', '06065dad-7e11-4414-a63d-7bb39767f675', 'field', 'a2ea94aa-eed5-4be3-a120-d77f1ab4b06a', '讲课内容', '4', '12', '0', '0', 'both', '0', '1', '2018-09-07 08:39:47', '1', '2018-09-07 08:39:47', '0');


-- 电脑端讲者字段宽度加大 优化样式
update page_layout_fields pf left join page_layouts pl on pf.page_layout_id=pl.id set pf.colspan=12 where pl.name like '%_l%' and 
pf.object_field_id='eee173de-a59d-dsac-b11b-5cc5d4d378cb';

-- 子会议名称 字段更改 为 name字段
update page_layout_fields set object_field_id='a714c811-5ed9-11e6-b12b-5cc5d4d378cb' where object_field_id='5ec51b50-bd21-47ff-bfc9-abdb970ec564'; 

-- 父子会议 测算参会人数调整 
UPDATE `object_validations` SET `trigger_code`='from django.db import connection\nfrom orion.common.user import get_current_user\n\ncur_user = get_current_user()\nwith connection.cursor() as cursor:\n    # 提交报告时测算字段\n    sql = \"\"\"\n            select count(id) from event_accounts where event_id = %s and deleted = 0 and record_type_id = \'c1491afa-18f4-4046-8e25-b62aed90eb77\'\n            \"\"\"\n\n    sql_child = \"\"\"\n                select count(id) from event_accounts where event_id = %s and deleted = 0 and record_type_id = \'c1491afa-18f4-4046-8e25-b62aed90eb77\' and owner = %s\n                \"\"\"\n    if instance.event.parent_id is None:\n        cursor.execute(sql, (instance.event.id,))\n    else:\n        cursor.execute(sql_child, (instance.event.parent_id, cur_user.user_id))\n    rows = cursor.fetchone()\n    if rows:\n        num_1 = rows[0]\n    else:\n        num_1 = 0\n    sql = \'update events set text_3 = %s where id = %s\'\n    cursor.execute(sql, (num_1, instance.event.id))' WHERE `id`='e49b1287-ec01-11e9-b9aa-0298a739dec0';

-- 参会率 trigger
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`) VALUES ('76e1a59a-f196-11e9-b9aa-0298a739dec0', '66036d1a-4643-49d5-b21a-0db9d60b0563', '参会率', '报告参会人数与计划参会人数比较', 'trigger', 'from django.db import connection\nfrom orion.common.user import get_current_user\n\ncur_user = get_current_user()\n\nif instance.event.record_type.name.endswith(\'report\'):\n    with connection.cursor() as cursor:\n        # 提交报告时测算字段\n        sql = \"\"\"\n                select count(id) from event_accounts where event_id = %s and deleted = 0 and record_type_id = \'c1491afa-18f4-4046-8e25-b62aed90eb77\'\n                \"\"\"\n\n        sql_child = \"\"\"\n                    select count(id) from event_accounts where event_id = %s and deleted = 0 and record_type_id = \'c1491afa-18f4-4046-8e25-b62aed90eb77\' and owner = %s\n                    \"\"\"\n\n        if instance.event.parent_id is None:\n            # plan\n            cursor.execute(sql, (instance.event.event_id,))\n            rows = cursor.fetchone()\n            if rows:\n                plan = rows[0]\n            else:\n                plan = 0\n            # report\n            cursor.execute(sql, (instance.event.id,))\n            rows = cursor.fetchone()\n            if rows:\n                report = rows[0]\n            else:\n                report = 0\n            if report:\n                sql_update = \"update events set text_7 =concat(truncate({0}/{1} *100,2),\'%\') where id = {2}\".format(report, plan, instance.event.id)\n                cursor.execute(sql_update)\n\n        else:\n            # 假设父子会议同步计划转报告，如果不同步存在漏洞\n            # plan\n            cursor.execute(sql_child, (instance.event.parent_id,cur_user.user_id))\n            rows = cursor.fetchone()\n            if rows:\n                plan = rows[0]\n            else:\n                plan = 0\n            # report\n            cursor.execute(sql_child, (instance.event.parent_id,cur_user.user_id))\n            rows = cursor.fetchone()\n            if rows:\n                report = rows[0]\n            else:\n                report = 0\n            if report:\n                sql_update = \"update events set text_7 =concat(truncate({0}/{1} *100,2),\'%\') where id = {2}\".format(report, plan, instance.event.id)\n                cursor.execute(sql_update)', '', '0', '1', '2019-10-18 11:08:42', '1', '2019-10-21 03:17:24', 'post_save', '1', 'custom', 'event_attendee_plan_report');


-- 添加其他非医生与医生参会人授权

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a6d66d93-f3da-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'ff7bf4c0-d344-11e7-b07d-c85b76d4d417', '0', '1', '2019-10-16 03:05:35', '1', '2019-10-16 03:05:35');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e4be073b-f3da-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'ff7bf4c0-d344-11e7-b07d-c85b76d4d418', '0', '1', '2019-10-16 03:05:35', '1', '2019-10-16 03:05:35');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('d28c21ed-f3db-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '89760000-a65d-11e6-bcae-5cc5d4d378cb', '1', '1', '1', '1', '0', '1', '2019-10-21 00:00:00', '1', '2019-10-21 00:00:00', '0', '0', '0', '0');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('2f1dcfa5-f3dc-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '547a570d-bb3e-4717-9556-1c822bfb912f', '1', '1', '1', '1', '0', '1', '2019-10-21 00:00:00', '1', '2019-10-21 00:00:00', '0', '0', '0', '0');


-- 财务核销
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('d0a68eb3-91e4-4741-9d6e-7b58d0206cea','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_approved_finance_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('6a969a33-73fe-654e-a762-e1855c15846f','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_report_writeoff_finance_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('4857d6c9-96fb-0a4b-9e26-70b4e051af70','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_approved_finance_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('18c2a4bd-9192-884f-ad1f-054dde8ff9d9','e0df15cf-5eef-11e6-8264-5cc5d4d378cb', 'cs_market_child_report_writeoff_finance_l', '市场部会议详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW());


INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('73552419-4a19-4942-9caf-38b46b730fe3','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('8372b7ee-28ac-fe40-a958-23371025d32f','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('34c571b6-f9e3-824f-9415-56a21696d50e','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('a3a05332-4cf8-9f4e-946c-aa81990973a5','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('c94ab345-d462-c341-94db-0cba2ba0e762','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('b3ad2047-7785-5941-aea0-91c234b5c3d6','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('3455ca40-a9db-d941-aa55-437db9fdc9e0','6a969a33-73fe-654e-a762-e1855c15846f', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('802e10e0-f0a0-3142-baf4-2f61391cc6a2','6a969a33-73fe-654e-a762-e1855c15846f', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('619d4c54-f316-9440-b2e2-32fa7b982bf1','6a969a33-73fe-654e-a762-e1855c15846f', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('5f84f3ea-c045-e949-9327-3fd1288f335d','6a969a33-73fe-654e-a762-e1855c15846f', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('f76a119e-bedb-c24e-b9bd-9372163e28fa','6a969a33-73fe-654e-a762-e1855c15846f', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('209e45b2-8b49-e045-967a-caf7e2a714bf','6a969a33-73fe-654e-a762-e1855c15846f', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('586f1939-0ea7-8744-896b-b9a43f9a6ec8','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('70c185f2-15bd-a342-a1df-9a98f47977b3','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('04afd13e-945d-9040-b39c-d94962517efe','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('30d8a225-d39f-8d4d-b142-fae5c0a82b0c','4857d6c9-96fb-0a4b-9e26-70b4e051af70', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('b0ce6b64-8036-bc42-bbea-a650073453b6','4857d6c9-96fb-0a4b-9e26-70b4e051af70', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('3e2a2bc3-7986-f745-81a2-55895a627081','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('b466a43f-b7d0-d74e-9247-90aeb4af78ef','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'de58558f-5f8c-11e6-99b7-5cc5d4d378cb', '1', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('6653e825-c739-1947-a0fb-bf20023356e6','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'de78128f-5f8c-11e6-861e-5cc5d4d378cb', '2', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('db679d77-6b4e-5749-8e24-58121b47e365','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'defa520e-71b3-48c3-b986-d28161041a35', '3', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('efab567e-61eb-ff48-8414-04ada12ab129','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', '22f87617-c336-49de-a99a-58553d418e9d', '4', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('a9fa1155-2768-8943-8c90-50c51cb60871','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', '5ce80f3e-7f7b-4c2b-aac3-118b40cdea54', '5', null, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('5e19f140-8c66-e74e-93e6-7008dd58459c','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'de6aa50f-5f8c-11e6-981f-5cc5d4d378cb', '6', null, '0',  '0', '1', NOW(), '1', NOW());


INSERT IGNORE INTO `page_layout_actions` (`id`,`page_layout_id`,`object_action_id`,`display_mode`,`order`,`deleted`,`created_by`,`created_on`,`modified_by`,`modified_on`) VALUES
('61136549-4439-134b-936a-26b001ee405c','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'b9015917-9be4-4d3d-afe9-bb2672dff214', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('81a14d15-bd9a-4448-a3c1-029526cf2e38','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', '7b2ddca9-f626-11e9-b9aa-0298a739dec0', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('70b8cd44-cf77-e849-9727-46b4a963a8f5','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'b9015917-9be4-4d3d-afe9-bb2672dff214', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('4eae9f14-a721-f948-8111-ce8362da6aeb','4857d6c9-96fb-0a4b-9e26-70b4e051af70', '7b2ddca9-f626-11e9-b9aa-0298a739dec0', 'view', '1',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES
('361fee2e-f7f9-aa48-b249-ad821f436c61','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('06f1143d-bcaf-4046-8e0d-d9b3b39949fd','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f3ebe399-688a-e74d-b07c-fd195a5d1338','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c698c738-8ee0-5642-a5f5-5c7c9679a58c','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a05c6efa-8b0e-934d-98fb-16a037bd012f','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07791d47-a6ef-4e4f-ad67-87f54fe5fc09','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05f0fd92-b549-8443-8cb8-33cf5552325d','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e0537f33-678a-3545-8110-89d287fba392','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88a9bd52-c8e0-4a4b-a8d1-f6a78d578aea','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59c3eb48-3138-d248-a921-20b4edb5cb6c','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6afd69eb-5797-674e-83c2-883e226de16d','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '12', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d0dfadb-e7ef-f94a-b442-4614b3f4d6cb','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('84b607f8-26f5-9d46-b5bd-7a9f9add3668','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f743c564-3b85-dd4f-9dfc-2787ad700c22','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d9bedb48-d21b-214c-a72b-ef4029a2e88a','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1944b2d-5e25-6b4a-816f-983cf3c8d407','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('65b2b49f-2276-604c-a7b1-f27900621741','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ab0e3f95-7f05-5146-a7ab-1aa89de25c22','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f54d24f8-a550-a744-a3e8-0f7b7e1b8ebe','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('86b37ab7-9366-cf45-870e-3c39f792313a','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79e72908-cf9a-da47-b7fd-e60b898621a3','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('978b6dc1-7aab-a545-968c-0323f41a78b4','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76a2ab84-b6e9-ae40-b42e-5c2fa8ea7c49','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('17ab0157-c733-934c-829c-9658f7e3264a','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('223b0440-0631-1f41-b396-9208fd2d1586','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b5dad330-5ed9-11e6-b7c1-5cc5d4d378cb', '核销金额', '26', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02fbdaf3-78f9-6e4b-8a10-aec5bc8f11d6','d0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'field', 'b42b004f-5ed9-11e6-a061-5cc5d4d378cb', '备注', '27', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES
('0ffa69ac-28fb-d948-abad-2199a5d69364','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85053740-4011-8441-b7bf-705a88cccff2','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ba2c7569-cc55-9340-a5a2-25a2a958e265','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9a51442c-efbf-7648-9e68-849269f8b8cc','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8307bdc0-07d9-484d-b5bb-d966472f8651','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe394288-1d97-1c43-8726-ccabb1f27739','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'aa05cd80-5ed9-11e6-9861-5cc5d4d378cb', '开始时间', '5', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e1ec27f-46a4-1547-a542-ce83dcd1e03f','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'aa95634f-5ed9-11e6-a265-5cc5d4d378cb', '结束时间', '6', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02b75943-c36a-0c42-ad9c-f9c56eec5697','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09401a38-57f4-3d47-a5ed-0bf5f708a250','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5086e745-5cb6-b849-8237-2fa099d29d96','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e781860c-4574-9944-b4c3-83b99fe5c2d7','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '12', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b39bc574-3bf1-0548-8787-fa5fdab5b593','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf52722a-f7ed-5c40-a329-72235d8976f8','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e568813-0239-d344-b228-18d6c821d5be','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('076499c0-2f00-064a-9c48-406ead5fd492','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('083f87d1-963a-824b-ae26-8f2b37831659','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('642d3929-9a7c-9c42-b60e-f4109c735656','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dcdc1ecd-cb91-ec4a-a132-9c717f3bc208','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9728ae87-47eb-1344-bdc3-ab9e65c42201','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1b5929f-98b6-c142-82bf-6626c103de54','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d3fb1af-f250-154d-95bb-f4e26a547b0c','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd40bb02-fd1d-7c47-95de-aff1ad174260','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19a611dc-f8ff-4648-bd8e-3026d3531270','6a969a33-73fe-654e-a762-e1855c15846f', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('70205144-b8b6-3944-af17-f3ae0f9386d6','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('160b1f3f-024b-8b42-998b-362c6b7460e8','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b5dad330-5ed9-11e6-b7c1-5cc5d4d378cb', '核销金额', '26', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0b1fb85-04b6-1b49-8c5a-e2c4aac12159','6a969a33-73fe-654e-a762-e1855c15846f', 'field', 'b42b004f-5ed9-11e6-a061-5cc5d4d378cb', '备注', '27', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0');


INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES
('1e57a9fa-8f00-824e-a6e5-a6d860c896f9','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('adaa2c3f-d547-b542-968a-15c33960936e','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46cc954f-3217-1940-b0ae-3a65165056f7','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb57fb3b-a917-ef4b-abbd-3a6f488eb621','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16a57778-b9c0-8248-adce-8ac0e5430cf2','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a4001b0-767d-dd4e-a24e-7149b78763f5','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b76dbb0-caa4-8242-b017-afcbbe38f854','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4cf6ecc-0f6a-d347-adff-a3cdd5ee41dc','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cef134f7-d99a-3b49-9310-bf4938a75362','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3ab375bb-a65d-3c43-a826-a6e9c568bf67','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cfd72430-4519-c345-be28-566a1fcfd771','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '12', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e4deba1-876e-9f43-9c37-49ed0f73949b','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ffec97ce-f772-3542-b027-d65ecc86d08b','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60dc28c7-6d72-5549-9631-401ee324a8ea','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce2ff752-2712-0448-a931-c0d9d6c885e7','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('69d3ef1c-c398-f743-a4b8-c240989dcddd','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3dee5bfb-6974-5f4c-afc8-f9b6f4cc746d','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5d69c4c8-ad3d-c94e-8c8e-1f3d1644bdd8','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('06f98032-3dd5-804a-8918-4e1d5bbca836','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54029bd4-fdf9-9749-8a44-ba283dd5ebfa','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1a9c8d85-8707-4a47-87cd-45723c8e11c4','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('272af607-e8db-6740-8bfb-5caae99ad85d','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7ca63865-ae7e-974a-a112-8e8eac79a6fb','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1bd73707-505b-0d4a-8d56-080fa99f5477','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('98a72cd4-8db6-2b4b-aa23-30853e4023ae','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0'),
('7bbc7e4f-4402-5146-aa99-185fb9111230','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b5dad330-5ed9-11e6-b7c1-5cc5d4d378cb', '核销金额', '26', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13e0b941-54f0-b148-884a-4f1b54811663','4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'field', 'b42b004f-5ed9-11e6-a061-5cc5d4d378cb', '备注', '27', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES
('a7f98c6e-e95e-4545-8f49-23a40fa14c10','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'eee173de-a59d-11e6-b11b-5cc5d4d378cb', '活动编码', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ad23630-523d-0b42-b92f-38a4d6b04a18','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a84e8091-5ed9-11e6-a879-5cc5d4d378cb', '活动状态', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d09a0c83-e985-0943-a38e-df4e9c00377b','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a714c811-5ed9-11e6-b12b-5cc5d4d378cb', '活动名称', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1bd1da8-2e42-8c4e-8399-0f6ef4e58073','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a7b7e5e1-5ed9-11e6-933b-5cc5d4d378cb', '活动类型', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d340ff9d-d592-7644-9872-55586f800fd1','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'ab34d7a1-5ed9-11e6-aa69-5cc5d4d378cb', '活动主题', '4', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6f8d6994-ba6f-4a4d-b5be-b82e892d9195','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '8767a69d-c143-4d73-9733-fb01edc44bef', '开始时间', '5', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22e6b45b-bdf6-e143-b678-c29ff6eac410','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '58078714-0a4a-4a0f-82ac-5152cefdc8e7', '结束时间', '6', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87776265-137a-ec4d-8709-a3a1b8ff8cc8','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b021fb30-5ed9-11e6-876b-5cc5d4d378cb', '活动城市', '9', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d7b64abd-7cbd-e246-81f8-e7c24d34af80','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a8e59070-5ed9-11e6-9c89-5cc5d4d378cb', '活动地点', '10', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc77fa7e-9d0f-274b-8c31-e722c6e7101b','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a848e630-6b59-11e6-9673-5cc5d4d378cb', '活动产品', '11', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a961732f-2cd2-5140-a801-323160adb799','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'eee173de-a59d-dsac-b11b-5cc5d4d378cb', '活动讲者', '12', '12', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9481cf7e-a0ed-2644-97d3-021382daeab3','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b0b20630-5ed9-11e6-a51f-5cc5d4d378cb', '计划参会人数', '13', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('858e3f86-6b49-244c-820f-6cdc0166193e','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b13f03f0-5ed9-11e6-89d7-5cc5d4d378cb', '参会人数', '14', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c2fefc0-afca-5d45-99c5-0076762e2fe4','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '42bf888f-639e-11e6-94ed-5cc5d4d378cb', '协办人', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01c2d7b7-420c-f141-b85d-01b990f35832','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'a9772211-5ed9-11e6-b175-5cc5d4d378cb', '总预算', '16', '6', '1', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7b0ac6ab-1c5d-434c-b2a8-032d33bd1874','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b26cd58f-5ed9-11e6-a0ae-5cc5d4d378cb', '总费用', '17', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5dd8beb8-bad8-cf42-9280-f34e0e55cef1','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b303be5e-5ed9-11e6-ac63-5cc5d4d378cb', '预算报销差异率', '18', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3df5d4ca-15ad-2546-b31c-4c2e1d712a63','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '3c79980b-ee5c-49da-8c40-38c025ba5e22', 'GPS签到和签到时间记录', '19', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('106b856f-b5e9-ca4f-bb51-1ef213c396f9','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '23bb2247-0e18-11e7-bb8f-e4b318c6b596', '创建人', '20', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ed604f77-6e97-8645-aaa3-75fdeb0d35fd','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '23bb2245-0e18-11e7-8254-e4b318c6b596', '创建时间', '21', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('69637aa3-0e85-d042-ad5c-2c9f1ceb2a16','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '23bb705e-0e18-11e7-b67e-e4b318c6b596', '修改人', '22', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3899f0da-6e52-d44a-a226-ca9b7cbc4200','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '23bb2246-0e18-11e7-8147-e4b318c6b596', '最后修改时间', '23', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('173b1764-577a-b540-8b21-0c60bb1995a1','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '8f3b8f73-e368-11e9-b9aa-0298a739dec0', '创建人所属辖区', '24', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2d8a0c43-ed8c-134c-9e50-fca1876fa6f9','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b39269cf-5ed9-11e6-80c4-5cc5d4d378cb', '参会率', '25', '6', '0', '1', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('97138a18-510d-cb41-b499-9e81ad8084f3','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', '4010ecfa-b017-4925-9b26-08df5d2ad284', '父会议讲者', '8', '6', '0', '1', 'both', null,  '1', NOW(), '1', NOW(), '0'),
('ce885dda-e5b1-5f47-bdc7-dd0f945e90b4','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b5dad330-5ed9-11e6-b7c1-5cc5d4d378cb', '核销金额', '26', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c3fa6432-c86a-1d4d-81ac-dcd9bfb293d0','18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'field', 'b42b004f-5ed9-11e6-a061-5cc5d4d378cb', '备注', '27', '12', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('e24bceaa-29c1-9b4f-8c21-e6c2582100e2','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', 'a984f9b0-72b4-8d4e-a85b-29747163b978', 'cs_market_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('33eaa036-c7ce-7746-8e5e-e109f39fe4db','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '95063623-9ef5-c948-8c93-cebd70d0accb', 'cs_market_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b02560e2-61f1-db4b-83a2-ff5ee47bf4af','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '60d38807-39ba-fe43-8f4e-be2c734a4498', 'cs_market_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ca297350-2118-994c-b6ad-5e6ef82ec7d3','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'f36672cd-4ced-4945-a990-8e2e486402a0', 'cs_market_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c939bb43-4ff2-6048-a188-f44318829903','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', '357cdab5-aef3-f546-ae3b-8448939be95d', 'cs_market_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a46887cf-90b6-d946-a69a-fd90bce35822','fae61bfc-f57a-11e9-b9aa-0298a739dec0', 'bdf5191c-efe8-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', '8e66bbb9-8f1c-604a-bf5e-fffdfa23f7c1', 'cs_market_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e9887d07-a986-0d46-ba25-34ab24daf2cc','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '03c5871b-71cd-0047-a1f1-8b9ef45471f0', 'cs_market_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5aef2085-df00-084b-a9eb-f1574eefd8e2','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'c81412c2-1248-c947-b527-e2efc6d368d0', 'cs_market_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('287c4c2c-78ac-4447-82ee-a0427cfede35','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '50c903e7-3b99-2143-8f59-3b3dc53dd249', 'cs_market_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9d107dd6-5ff6-3746-a016-5f76820cb84e','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', 'd0a68eb3-91e4-4741-9d6e-7b58d0206cea', 'cs_market_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d4db071d-85bf-d345-af10-621aa26cb843','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '05b19885-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '6a969a33-73fe-654e-a762-e1855c15846f', 'cs_market_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('89194002-50ee-544d-8b11-cca2b43f0bc5','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '779ec230-6a79-de4d-b8c0-1212abb57353', 'cs_market_child_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('af3267cc-172f-eb42-ba1d-d662aa599927','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', 'b8d76de4-6de6-ae41-bbd4-7d7744789539', 'cs_market_child_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('022b8ce1-ff03-0342-9909-c8ebf0123337','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '561a0eb4-7ddf-4347-9568-1dad38e29fbb', 'cs_market_child_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a6b17773-bd91-2d44-be80-2ceb58904ba1','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '8f822cd0-9574-624a-9c69-412602491ac7', 'cs_market_child_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('48bd2d27-f549-4e48-a67a-98a6c9b8cb5c','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', '2cd331a1-e360-11e9-b9aa-0298a739dec0', 'e828d3df-a884-ea48-bf6c-adea196180de', 'cs_market_child_cancelled_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9e9d7baf-4233-db40-aec2-6f9e825371bc','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '2c247526-efe9-11e9-b9aa-0298a739dec0', 'bb603291-5eee-11e6-b868-5cc5d4d378cb', 'ab9fd8ac-18aa-a649-9958-eb70242a4d18', 'cs_market_child_finished_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('74ca4364-484a-3342-9845-6dca8b8ab93c','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba579c2e-5eee-11e6-80bf-5cc5d4d378cb', '35afdf61-ea27-3e4a-8cfb-bc23d2f1c5e8', 'cs_market_child_report_save_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f27ec6d5-d5a7-974b-8dd1-7cb880f1eb11','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'ba956880-5eee-11e6-8728-5cc5d4d378cb', '1891d2ef-8cd9-d94f-a82e-3fefd5c5a6bb', 'cs_market_child_report_sent_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9e1294bf-b3c1-524a-88be-fda5a2df930e','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'bb21a2f0-5eee-11e6-9c65-5cc5d4d378cb', '6cee2da4-f165-304a-8466-b125409f232d', 'cs_market_child_report_rejected_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('52d6941d-49f3-6f40-8837-2f3e6b8379b3','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', 'badc3580-5eee-11e6-a6b2-5cc5d4d378cb', '4857d6c9-96fb-0a4b-9e26-70b4e051af70', 'cs_market_child_report_approved_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('aefd3f2d-b781-1e4e-a1fd-3499ab249188','fae61bfc-f57a-11e9-b9aa-0298a739dec0', '506b5b72-efe9-11e9-b9aa-0298a739dec0', '577ca18d-e360-11e9-b9aa-0298a739dec0', '18c2a4bd-9192-884f-ad1f-054dde8ff9d9', 'cs_market_child_report_writeoff_l',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

