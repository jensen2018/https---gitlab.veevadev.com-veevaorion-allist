-- 市场部微信端讲者查看
-- 区域市场经理   a99fcd69-b5ff-11ea-aab5-0215c63fce1a
-- 区域产品经理   b72453fc-efdb-11e9-b9aa-0298a739deb2

-- 区域市场经理
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('40732588-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('7115f211-eccf-11ea-bc49-0215c63fce1a', NULL, 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

-- 申请历史详情
-- 区域市场经理医生转讲者计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa26775-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa26db9-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa26e58-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 区域市场经理医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa26ef2-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa27030-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('9fa270eb-eccf-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);



-- 区域产品经理
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('b5a0db7a-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('b5a0dd1c-ecd2-11ea-bc49-0215c63fce1a', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

-- 申请历史详情
-- 区域产品经理医生转讲者计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4e83d-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4eb69-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4eca9-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 区域产品经理医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4ed3c-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4edcc-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('c5d4ee61-ecd2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);




-- 市场部微信端讲者查看
-- 地区经理   5a013aaa-b5c5-11ea-aab5-0215c63fce1a
-- 大区经理   53de9671-1da3-11e6-93fb-5cc5d4b57136

-- 地区经理
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('1405df9f-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('1405e0eb-ece2-11ea-bc49-0215c63fce1a', NULL, '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

-- 申请历史详情
-- 地区经理医生转讲者计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e17a-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e20b-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e296-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 地区经理医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e325-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e3ba-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1405e467-ece2-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 生效讲者详情查看
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('233fb4dd-ece5-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 失效讲者详情查看
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('233fba93-ece5-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);



-- 大区经理
select mm.id,mm.label,m.* from menus_assignments m
left join menus mm on m.menu_id = mm.id where role_id = '53de9671-1da3-11e6-93fb-5cc5d4b57136';

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('adb385b2-ece5-11ea-bc49-0215c63fce1a', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');


-- 去掉大区经理新建讲者及医生讲者修改
update role_to_object_record_types set deleted = 1
where id in (
'743be195-df80-11e9-b9aa-0298a739dec0',
'8430e0c6-df80-11e9-b9aa-0298a739dec0',
'8bfeea30-df80-11e9-b9aa-0298a739dec0',
'94ee89f1-df80-11e9-b9aa-0298a739dec0',
'9ea8f83d-df80-11e9-b9aa-0298a739dec0',
'a74aa28f-df80-11e9-b9aa-0298a739dec0'
);

