-- 电脑端
-- SFE
-- 电脑端列表相关产品字段
-- 去掉电脑端列表“相关产品”字段
update page_list_fields set deleted = 1 where id = 'b5b5a420-649c-4434-8c4b-11437b3951c0';

-- 电脑端列表、详情页添加“审批号”字段，非必填，列表中可筛选，可排序
-- 启用text_1字段存储“审批号”
update object_database_columns set used = 1 where id = '8f36053b-675a-4ed8-a6a1-b6027b992894';
update object_fields set `name` = 'approval_num', label = '审批号', description = '审批号' where id = 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50';

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('05cb4163-d700-11ea-bc49-0215c63fce1a', 'dace8fe5-7df5-440c-ace8-61d8857988b2', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b7683dc8-d701-11ea-bc49-0215c63fce1a', 'd5cb82c5-7a87-4651-b386-3d9331796a3c', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e371e9-d702-11ea-bc49-0215c63fce1a', 'd3b9bf3e-72b9-4860-9946-b86812fd06f7', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e373cd-d702-11ea-bc49-0215c63fce1a', 'b2dbff84-51b4-42b0-a7a2-666dd4da6220', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e3749f-d702-11ea-bc49-0215c63fce1a', 'af43b088-1339-4068-85dd-bfc74fd07c4b', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e3756f-d702-11ea-bc49-0215c63fce1a', '7fa1843f-0270-4f64-9d4d-d63c9b6fb66a', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e3763f-d702-11ea-bc49-0215c63fce1a', '68c238a9-894b-49f2-865d-59e5ec445c4f', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('e0e37711-d702-11ea-bc49-0215c63fce1a', '202a97d9-8c00-47cb-a5a4-99bdcca7f5b1', 'field', 'ebfa33b1-6c1b-462d-b31b-7e13252e9c50', '审批号', '0', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);


-- 电脑端营销公司负责人查看电子资料
-- 微信端
-- 代表
-- 电子资料微信端列表过滤已发布
INSERT INTO `page_list_conditions` (`id`, `page_list_id`, `object_field_id`, `operator`, `value`, `formula_number`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('74cb4630-d635-11ea-bc49-0215c63fce1a', '774911fe-d989-473d-86fa-693c26686239', 'fea8bd0d-af37-477d-8b8b-d27ea592f562', 'eq', '9fd19803-ba90-4595-b3d4-286d95781589', '1', '0', '1', NOW(), '1', NOW());

update page_lists set formula = 1 where id = '774911fe-d989-473d-86fa-693c26686239';

-- 代表添加“传播情况”Tab
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('4330e11e-d6ce-11ea-bc49-0215c63fce1a', '1af3fb9a-5b01-47c2-a008-dd302f54467d', '2', '0', '1', NOW(), '1', NOW(), '618e86d8-4be6-4278-88d2-58470cb4d080', NULL, '1');

-- 发送资料
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`, `configurations`, `label`) VALUES
('18d6ad1f-d6f7-11ea-bc49-0215c63fce1a', '1af3fb9a-5b01-47c2-a008-dd302f54467d', '13b70b49-dc85-4c93-96c8-25df258b17e1', 'view', '1', '0', '1', NOW(), '1', NOW(), NULL, '0', NULL, '{\"page_list_id\":\"aadcc8a1-69e1-11ea-ac6c-0215c63fce1a\"}', NULL);

-- 销售主管
-- b74845ad-b5fe-11ea-aab5-0215c63fce1a
-- 详情页：
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('a65ffb30-d6fb-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', '1af3fb9a-5b01-47c2-a008-dd302f54467d', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

-- 市场经理
-- a99fcd69-b5ff-11ea-aab5-0215c63fce1a
INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('b0d87912-d78e-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'a2a193f0-bb99-11ea-ab68-4f37c5a3e901', '9', '0', '1', NOW(), '1', NOW(), 'null');

INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('113cd2a4-d790-11ea-bc49-0215c63fce1a', NULL, 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '774911fe-d989-473d-86fa-693c26686239', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('06953488-d792-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', '1af3fb9a-5b01-47c2-a008-dd302f54467d', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 产品经理
-- b72453fc-efdb-11e9-b9aa-0298a739deb2
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('43404fd8-d793-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'a2a193f0-bb99-11ea-ab68-4f37c5a3e901', '9', '0', '1', NOW(), '1', NOW(), 'null');

INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('434051de-d793-11ea-bc49-0215c63fce1a', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '774911fe-d989-473d-86fa-693c26686239', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('434052c2-d793-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', '1af3fb9a-5b01-47c2-a008-dd302f54467d', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES
('862aa869-d794-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'b2b23f0a-a1f6-443a-a91a-d7c0509ad411', '1', '1', '0', '0', '0', '1', NOW(), '1', NOW(), '0', '0', '1', '0', '0', NULL, '0', '0');

-- 地区经理：仅查看电子资料
-- 5a013aaa-b5c5-11ea-aab5-0215c63fce1a
update role_to_object_permissions set allow_read = 1, allow_read_all = 1 where id = 'f6edd4da-5297-47a6-99f4-de94fd3ff871';

INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('b73d029f-d791-11ea-bc49-0215c63fce1a', '88ba5ed2-a781-4c01-99fb-c949c8f01f02', 'cs_electronic_document_layout_s', '电子资料详情', 'custom', 'small', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c39528b6-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'section', NULL, '电子资料详情', '1', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL),
('c3952b1e-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', 'c42c41cf-717c-47fb-9ec0-61ddb4066158', '名称', '2', '12', '1', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952bb9-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '6ee17805-5243-4ea2-82e6-a50616b36ee3', '创建时间', '3', '12', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952c54-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', 'fea8bd0d-af37-477d-8b8b-d27ea592f562', '状态', '4', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952cec-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '8a9d4038-1ac7-4ea0-a106-9be66edb7c6d', '预估阅读时长', '5', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952d96-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '9123b56a-d6fc-4aea-b310-bb8cf267a82a', '预计发布日期', '6', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952e33-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '5e1a035c-9981-486f-af2c-af5637c0c24f', '预计发布结束日期', '7', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952eec-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '7dbc71d7-5bae-4df1-bcde-a41d3d7757a6', '实际发布日期', '8', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3952f90-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', 'cb9b6e4b-268b-401d-888f-4ccc0faad90d', '实际发布结束日期', '9', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3953036-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '743bcf0c-8a34-47d7-8974-fc4153ff7371', '产品列表', '10', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c39530df-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '0b965d2a-6395-4b27-a7dc-971c502c5a73', '资料类型', '11', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c395318a-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', '2ffd4122-7986-4b75-b805-0024f4ac90dc', '备注', '12', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('c3953239-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', 'field', 'd022f225-bbcf-4367-8cbe-8f46f268d274', '性质', '13', '12', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('cbbe4972-d791-11ea-bc49-0215c63fce1a', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '2', '0', '1', NOW(), '1', NOW(), '618e86d8-4be6-4278-88d2-58470cb4d080', NULL, '1');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('4d5ffe5e-d7ab-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 大区经理
-- 53de9671-1da3-11e6-93fb-5cc5d4b57136
update role_to_object_permissions set allow_read = 1, allow_read_all = 1 where id = '14bf8044-6e40-4af2-971b-a0ce6bdcef7d';

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('8d4bace7-d7ac-11ea-bc49-0215c63fce1a', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

-- 大区总监
-- 20228999-b5ff-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('0f10496d-d7ad-11ea-bc49-0215c63fce1a', '20228999-b5ff-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

-- SFE
-- 53de9674-1da3-11e6-ac97-5cc5d4b57137
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('45bb4456-d7b0-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'a2a193f0-bb99-11ea-ab68-4f37c5a3e901', '9', '0', '1', NOW(), '1', NOW(), 'null');

INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('661ed98b-d7b0-11ea-bc49-0215c63fce1a', NULL, '53de9674-1da3-11e6-ac97-5cc5d4b57137', '774911fe-d989-473d-86fa-693c26686239', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('b1c505f4-d7b0-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 营销公司负责人
-- 72e462a0-b600-11ea-aab5-0215c63fce1a
update role_to_object_permissions set allow_read_all = 1 where id = '480ebf4c-0996-4519-8c38-946fd662a8fd';

-- ceo
-- bfb15d2f-b600-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('02177027-d7b6-11ea-bc49-0215c63fce1a', 'bfb15d2f-b600-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 微信端电子资料详情页面只保留名称与备注（改为“简介”）字段
update page_layout_fields set label = '简介' where object_field_id = '2ffd4122-7986-4b75-b805-0024f4ac90dc';

update page_layout_fields set deleted = 1 where id in (
'6ffa30bf-0947-4906-8868-3a6903009c18',
'b6c783d0-7fc7-40f9-bdfa-98f04377a181',
'5b45b699-9c31-43ff-9745-c010094a09c5',
'819e8439-010d-49d6-ae7d-fa29357431be',
'3a195c48-98a0-4ef8-9fbf-f06582c1a726',
'cebf4204-0ebd-4bb3-b009-dbba1e602905',
'18c1d8a5-63e8-4baf-bda0-9e0878538237',
'32416452-fa92-4195-9057-e604e6521dfd',
'ed883d1f-d676-4af5-8a1a-cf78d04e1eba',
'b275992a-94d7-412c-8af6-1a7ea844dab1');

update page_layout_fields set deleted = 1 where id in (
'd27be8b5-2349-459f-ba26-48a0e3ddd7d9',
'a57f0529-b4c5-4d1a-b024-ff138d2db71b',
'60825667-0734-4491-92eb-d915a4997e7c',
'85e877c0-2ab7-4705-af6f-ffd7b8067503',
'68c0b4a6-3454-4b7b-8c9f-07c0dabaf437',
'ae1367ff-ebb7-46a4-ad4e-119f52121eae',
'68506517-6789-46cc-9149-fa2245651dcc',
'7dc367bb-904c-402c-b231-3b4ef9298f35',
'42305d1a-1c47-4939-83be-d84762e3775f',
'1044b6be-2e2c-4972-b5be-1539fe60b267');

update page_layout_fields set deleted = 1 where id in (
'c3952bb9-d791-11ea-bc49-0215c63fce1a',
'c3952c54-d791-11ea-bc49-0215c63fce1a',
'c3952cec-d791-11ea-bc49-0215c63fce1a',
'c3952d96-d791-11ea-bc49-0215c63fce1a',
'c3952e33-d791-11ea-bc49-0215c63fce1a',
'c3952eec-d791-11ea-bc49-0215c63fce1a',
'c3952f90-d791-11ea-bc49-0215c63fce1a',
'c3953036-d791-11ea-bc49-0215c63fce1a',
'c39530df-d791-11ea-bc49-0215c63fce1a',
'c3953239-d791-11ea-bc49-0215c63fce1a');

-- 电子资料撤回待发布
UPDATE `object_actions` SET `target_object_state_id`='0b47d29a-76e6-4125-bfff-ca414cafbddf', `message`='将撤回至审批通过状态，确认撤回？' WHERE (`id`='eb93342f-5e9f-4e8d-8381-9470348c8db0');
