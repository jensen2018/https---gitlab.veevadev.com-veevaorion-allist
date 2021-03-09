-- 为角色授权微信端的医院DCR

-- 代表 -- 代表 -- 代表 -- 代表 -- 代表 
DELETE FROM role_to_object_permissions 
WHERE
    role_id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134'
    AND object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
-- 对DCR对象的权限
INSERT IGNORE INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)
VALUES
	('5451bf04-f59e-431d-b9d7-fcf04ab789d1', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 1, 1, 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, 0, 0, 0, 1, 0, NULL, NULL);

-- select * from object_record_types where object_id = (select id from objects where name = 'dcr') ;
DELETE FROM role_to_object_record_types 
WHERE
    id IN ('d061065f-307a-452c-8a27-095cac134596' , 'd061065f-307a-452c-8a27-095cac13459c',
    'd061065f-307a-452c-8a27-095cac134598');
-- 对DCR对象record type的权限
INSERT IGNORE INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
-- 添加新医院
	('d061065f-307a-452c-8a27-095cac134596', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '12962ade-609e-11e7-82bb-c85b76d4d416', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
-- 修改区域医院
	('d061065f-307a-452c-8a27-095cac13459c', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
-- 移除区域医院
	('d061065f-307a-452c-8a27-095cac134598', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cd355470-d8ef-4ada-b332-8fa2807463fe', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');

DELETE FROM menus_assignments 
WHERE
    role_id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134'
    AND menu_id = '85e7f39e-dc89-11e6-935d-e4b318c6b596';
-- 微信端增加DCR菜单
INSERT IGNORE INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('81628c00-0fa1-11e7-99d8-5cc5d4d378cb', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '85e7f39e-dc89-11e6-935d-e4b318c6b596', 6, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
INSERT IGNORE INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`)
VALUES
	('979a6d61-622d-11e2-aca0-c85b76d4d422', NULL, '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '88695652-622b-11e7-a16b-c85b76d4d422', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 1, NULL);

INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES
	('7e858621-6548-11e7-9d15-c85b76d4d321', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '12951970-609e-11e7-870c-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69a5b724-62ff-11e7-97b5-c85b76d4d321', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d411', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '12962ade-609e-11e7-82bb-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d412', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d444', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '12962ade-609e-11e7-82bb-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d234', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d234', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d567', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d421', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d231', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('69484096-653e-11e7-a5a3-c85b76d4d121', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d212', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('7e858621-6548-11e7-9d15-c85b76d4d123', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '12951970-609e-11e7-870c-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69a5b724-62ff-11e7-97b5-c85b76d4d123', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');



-- 销售经理 -- 销售经理 -- 销售经理 -- 销售经理 
DELETE FROM role_to_object_permissions 
WHERE
    role_id = '53de9670-1da3-11e6-961c-5cc5d4b57135'
    AND object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
-- 对DCR对象的权限
INSERT IGNORE INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)
VALUES
	('5451bf04-f59e-431d-b933-fcf04ab789d1', '53de9670-1da3-11e6-961c-5cc5d4b57135', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 1, 1, 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, 0, 0, 0, 1, 0, NULL, NULL);

-- select * from object_record_types where object_id = (select id from objects where name = 'dcr') ;
DELETE FROM role_to_object_record_types 
WHERE
    id IN ('d061065f-307a-3333-8a27-095cac134596' , 'd061065f-307a-3333-8a27-095cac13459c',
    'd061065f-307a-3333-8a27-095cac134598');
-- 对DCR对象record type的权限
INSERT IGNORE INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
-- 添加新医院
	('d061065f-307a-3333-8a27-095cac134596', '53de9670-1da3-11e6-961c-5cc5d4b57135', '12962ade-609e-11e7-82bb-c85b76d4d416', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
-- 修改区域医院
	('d061065f-307a-3333-8a27-095cac13459c', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
-- 移除区域医院
	('d061065f-307a-3333-8a27-095cac134598', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'cd355470-d8ef-4ada-b332-8fa2807463fe', 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');

DELETE FROM menus_assignments 
WHERE
    role_id = '53de9670-1da3-11e6-961c-5cc5d4b57135'
    AND menu_id = '85e7f39e-dc89-11e6-935d-e4b318c6b596';
-- 微信端增加DCR菜单
INSERT IGNORE INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('81628c00-0fa1-3333-99d8-5cc5d4d378cb', '53de9670-1da3-11e6-961c-5cc5d4b57135', '85e7f39e-dc89-11e6-935d-e4b318c6b596', 6, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
INSERT IGNORE INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`)
VALUES
	('979a6d61-622d-3333-aca0-c85b76d4d422', NULL, '53de9670-1da3-11e6-961c-5cc5d4b57135', '88695652-622b-11e7-a16b-c85b76d4d422', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 1, NULL);

INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES
	('7e858621-6548-3333-9d15-c85b76d4d321', '53de9670-1da3-11e6-961c-5cc5d4b57135', '12951970-609e-11e7-870c-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69a5b724-62ff-11e7-97b5-c85b76d4d321', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d411', '53de9670-1da3-11e6-961c-5cc5d4b57135', '12962ade-609e-11e7-82bb-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d412', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d444', '53de9670-1da3-11e6-961c-5cc5d4b57135', '12962ade-609e-11e7-82bb-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d234', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d234', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d567', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d421', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d231', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('69484096-653e-3333-a5a3-c85b76d4d121', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-11e7-b39e-c85b76d4d212', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40'),
	('7e858621-6548-3333-9d15-c85b76d4d123', '53de9670-1da3-11e6-961c-5cc5d4b57135', '12951970-609e-11e7-870c-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69a5b724-62ff-11e7-97b5-c85b76d4d123', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');


-- 为角色授权电脑端的医院DCR

-- SFE经理 -- SFE经理 -- SFE经理 -- SFE经理 
DELETE FROM role_to_object_permissions 
WHERE
    role_id = '53de9674-1da3-11e6-ac97-5cc5d4b57137'
    AND object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
-- 对DCR对象的权限，查看全部
INSERT IGNORE INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)
VALUES
	('5451bf04-f59e-431d-1111-fcf04ab789df', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 0, 0, 0, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, 1, 1, 0, 0, 0, NULL, NULL);

DELETE FROM menus_assignments 
WHERE
    role_id = '53de9674-1da3-11e6-ac97-5cc5d4b57137'
    AND menu_id = '16f5a45a-efbe-4c07-905f-2ffae4da7f38';
-- 电脑端增加DCR菜单
INSERT IGNORE INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('9c8dd082-5aaa-4e44-1111-535fdac74d36', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '16f5a45a-efbe-4c07-905f-2ffae4da7f38', 6, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');

INSERT IGNORE INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`)
VALUES
	('5bc00484-806e-4294-1111-f8466ca1c883', NULL, '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 1, NULL);

-- sfe经理对四种类型的审批完成状态授权
INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`)
VALUES
	('69484096-653e-3313-a5a3-c85b76d4d121', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-1117-b39e-c85b76d4d212', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-653e-3333-a523-c85b76d4d444', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12962ade-609e-11e7-82bb-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-1127-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-653e-3333-a533-c85b76d4d567', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '612a6091-62fb-1137-b39e-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('7e858621-6548-1147-9d15-c85b76d4d321', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12951970-609e-11e7-870c-c85b76d4d416', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69a5b724-62ff-1147-97b5-c85b76d4d321', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL);
-- sfe经理对四种类型的草稿状态授权
INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`)
VALUES
	('69484096-653e-3313-3333-c85b76d4d121', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-1117-62fb-c85b76d4d212', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-3333-3333-a523-c85b76d4d444', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12962ade-609e-11e7-82bb-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '62fb6091-62fb-1127-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-4096-3333-3333-c85b76d4d567', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '612a6091-62fb-62fb-b39e-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('7e858621-3333-9d15-9d15-c85b76d4d321', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12951970-609e-11e7-870c-c85b76d4d416', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69a5b724-62ff-1147-97b5-62fb76d4d321', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL);

-- sfe经理对四种类型的审批中状态授权
INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`)
VALUES
	('69484096-653e-3313-d121-c85b76d4d121', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '755c6791-dc85-11e6-82e6-e4b318c6b596', '612a6091-62fb-1117-dc88-c85b76d4d212', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-653e-d121-a523-c85b76d4d444', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12962ade-609e-11e7-82bb-c85b76d4d416', '755c6791-dc85-11e6-82e6-e4b318c6b596', '612a6091-62fb-b39e-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-d121-3333-a533-c85b76d4d567', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '755c6791-dc85-11e6-82e6-e4b318c6b596', '612a6091-b39e-1137-b39e-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('7e85d121-6548-1147-9d15-c85b76d4d321', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12951970-609e-11e7-870c-c85b76d4d416', '755c6791-dc85-11e6-82e6-e4b318c6b596', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL);

-- sfe经理对四种类型的审批拒绝状态授权
INSERT IGNORE INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`)
VALUES
	('69484096-4096-3313-a5a3-c85b76d4d121', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cd355470-d8ef-4ada-b332-8fa2807463fe', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '612a6091-1117-1117-b39e-c85b76d4d212', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-653e-4096-a523-c85b76d4d444', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12962ade-609e-11e7-82bb-c85b76d4d416', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '612a6091-62fb-1117-b39e-c85b76d4d444', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('69484096-653e-3333-4096-c85b76d4d567', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'b02c9f8f-6211-11e7-b39b-c85b76d4d416', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '612a6091-62fb-1137-1117-c85b76d4d567', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL),
	('7e858621-6548-1147-9d15-409676d4d321', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '12951970-609e-11e7-870c-c85b76d4d416', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '69a5b724-62ff-1147-97b5-11176d4d3214', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL);
