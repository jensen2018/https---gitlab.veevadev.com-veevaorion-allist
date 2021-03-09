-- 电子资料
-- 营销公司负责人微信端查看资料详情 
-- 72e462a0-b600-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('77915e48-e8ff-11ea-bc49-0215c63fce1a', '72e462a0-b600-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

-- 去掉ceo电脑端电子资料管理
update menus_assignments set deleted = 1 where id = 'b1e783bb-4d18-4e1a-bd5d-f534d201df00';
update menus_assignments set deleted = 1 where id = 'a01faf1c-64b3-4396-b208-3e478e7217fb';

-- 去掉董事长电脑端电子资料管理
update menus_assignments set deleted = 1 where id = '6075af40-4de9-4e2c-b821-2518ee66c92b';
update menus_assignments set deleted = 1 where id = '9f3af178-38c7-452b-944d-d40ab505d89b';
