-- =============代表=============
-- 去除默认授权
delete from role_to_object_record_types where role_id='53de6f5e-1da3-11e6-b011-5cc5d4b57134' and object_record_type_id in
('990ea121-dc86-11e6-ac70-e4b318c6b596','6b45d306-e8af-4868-896d-6e477d51bdde','98ea9e61-dc86-11e6-ada3-e4b318c6b596','98fdff4f-dc86-11e6-b1cc-e4b318c6b596');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
-- 修改区域医生
('d061065f-307a-452c-8a27-095cac134592', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '990ea121-dc86-11e6-ac70-e4b318c6b596', '0', '0', '1',now(), '1', now()),
-- 移除区域医生
('d061065f-307a-452c-8a27-095cac13413v', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6b45d306-e8af-4868-896d-6e477d51bdde', '0', '0', '1',now(), '1', now()),
-- 添加区域医生
('d061065f-307a-452c-8a27-095cac134san', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '0', '0', '1',now(), '1', now()),
-- 添加新客户
('d061065f-307a-452c-8a27-095cac134tzm', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '0', '0', '1',now(), '1', now());
-- 
DELETE FROM role_to_object_permissions 
WHERE
    role_id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134'
    AND object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)
VALUES
	('5451bf04-f59e-431d-b9d7-fcf04ab780pz', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 1, 1, 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, 0, 0, 0, 1, 0, NULL, NULL);
DELETE FROM menus_assignments 
WHERE
    role_id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134'
    AND menu_id = '85e7f39e-dc89-11e6-935d-e4b318c6b596';
-- 微信端增加DCR菜单
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES('81628c00-0fa1-11e7-99d8-5cc5d4d33qan', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '85e7f39e-dc89-11e6-935d-e4b318c6b596', 6, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`)
VALUES('979a6d61-622d-11e3-aca0-c85b76d4d422', NULL, '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'fc53e64f-dc9a-11e6-bcb5-e4b318c6b522', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, NULL);

-- 去除产品授权
delete from page_layout_assignments where page_layout_id='db37b65e-dc98-11e6-9db9-e4b318c69ila';
delete from page_layout_assignments where page_layout_id='69ce78d1-dc8c-bfdt-bffa-ecsv18c67yxm';

-- 代表授权layout  4中record type * 4种object state
INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('09a2ee6e-6890-d54e-8c61-1d661b5c4f9a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'c589cf68-e2d5-4f75-b23f-d2788e565abm', '草稿',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7f493f0f-dc53-f44b-a839-30dbd515c555','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3utxm', '审批中',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('97d249e0-ee7d-194d-bb77-69cc923d9a60','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdcn', '审批通过',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d61d1db6-a7f2-bf45-9a07-a3134e9745c0','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', '拒绝',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a8ce6cf8-66e9-3e49-aef8-3a9f0100a045','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdaz', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9081f3de-bdac-4743-9aba-178a7b1a9b84','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rool', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f09eeaec-9244-ff47-a2bf-ef51cb94176d','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdlz', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e9ebd77b-60bd-fd4f-95e0-fb95d53837c9','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('74186d6d-fa0d-2a45-b081-d589ba481ffe','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69a4f3cf-62ff-11e7-874c-c85b76d43wln', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a54c473b-4397-9849-87c4-ba390e057049','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '990ea121-dc86-11e6-ac70-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', '69ce78d1-dc8c-bfdt-4axn-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f2447469-50dc-5e4d-addc-51994712b55f','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('15d9ece7-c3dc-f646-a36d-aff856396ffd','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '990ea121-dc86-11e6-ac70-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('68c8cd0f-5aec-5941-b325-107333970c08','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6b45d306-e8af-4868-896d-6e477d51bdde', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65scb', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('dc02967c-5039-b140-a058-11a69019d4c8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6b45d306-e8af-4868-896d-6e477d51bdde', '755c6791-dc85-11e6-82e6-e4b318c6b596', '69ce78d1-dc8c-bfdt-b969-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c4a944c5-78c7-f945-b57c-eedda8c362ce','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6b45d306-e8af-4868-896d-6e477d51bdde', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('883ee78b-7ea5-5647-8e49-98f47875316a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6b45d306-e8af-4868-896d-6e477d51bdde', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '69ce78d1-dc7f-bfdt-dc7f-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- =====================地区经理===========
DELETE FROM role_to_object_permissions 
WHERE role_id = '53de9670-1da3-11e6-961c-5cc5d4b57135' AND object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
-- 对DCR对象的权限
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)
VALUES('5451bf04-f59e-431d-b933-fcf04ab7ccxv', '53de9670-1da3-11e6-961c-5cc5d4b57135', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 1, 1, 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, 0, 0, 0, 1, 0, NULL, NULL);
delete from role_to_object_record_types where role_id='53de9670-1da3-11e6-961c-5cc5d4b57135' and  object_record_type_id in
('990ea121-dc86-11e6-ac70-e4b318c6b596','6b45d306-e8af-4868-896d-6e477d51bdde','98ea9e61-dc86-11e6-ada3-e4b318c6b596','98fdff4f-dc86-11e6-b1cc-e4b318c6b596');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
-- 修改区域医生
('d061065f-307a-452c-8a27-095cac1342qz', '53de9670-1da3-11e6-961c-5cc5d4b57135', '990ea121-dc86-11e6-ac70-e4b318c6b596', '0', '0', '1',now(), '1', now()),
-- 移除区域医生
('d061065f-307a-452c-8a27-095cac134edn', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6b45d306-e8af-4868-896d-6e477d51bdde', '0', '0', '1',now(), '1', now()),
-- 添加区域医生
('d061065f-307a-452c-8a27-095cac134sjl', '53de9670-1da3-11e6-961c-5cc5d4b57135', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '0', '0', '1',now(), '1', now()),
-- 添加新客户
('d061065f-307a-452c-8a27-095cac134eav', '53de9670-1da3-11e6-961c-5cc5d4b57135', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '0', '0', '1',now(), '1', now());

DELETE FROM menus_assignments 
WHERE role_id = '53de9670-1da3-11e6-961c-5cc5d4b57135' AND menu_id = '85e7f39e-dc89-11e6-935d-e4b318c6b596';
-- 微信端增加DCR菜单
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES('81628c00-0fa1-3333-99d8-5cc5d4d3711m', '53de9670-1da3-11e6-961c-5cc5d4b57135', '85e7f39e-dc89-11e6-935d-e4b318c6b596', 6, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`)
VALUES('979a6d61-622d-11e3-aca0-crzb76d4d2wc', NULL, '53de9670-1da3-11e6-961c-5cc5d4b57135', 'fc53e64f-dc9a-11e6-bcb5-e4b318c6b522', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, NULL);
-- 地区经理layout授权 4种record type * 4种object state
INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5ac72d84-635f-9048-948c-34c491ab5e29','53de9670-1da3-11e6-961c-5cc5d4b57135', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'c589cf68-e2d5-4f75-b23f-d2788e565abm', '草稿',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('acb9c3d2-53d4-8547-819f-103a3435138a','53de9670-1da3-11e6-961c-5cc5d4b57135', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3utxm', '审批中',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('554b6972-548a-e247-8c8c-bf364e1061ec','53de9670-1da3-11e6-961c-5cc5d4b57135', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdcn', '审批通过',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d466cce9-4d80-6f4f-b279-0531e4d6be4d','53de9670-1da3-11e6-961c-5cc5d4b57135', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', '拒绝',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('99a2b384-138c-8448-8e42-d256dabbbdce','53de9670-1da3-11e6-961c-5cc5d4b57135', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdaz', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('fc90d64d-815e-d849-b02b-ccbf23b9bd90','53de9670-1da3-11e6-961c-5cc5d4b57135', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rool', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cc03f4b1-a4a5-3547-b7c7-28fb67443c3f','53de9670-1da3-11e6-961c-5cc5d4b57135', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdlz', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('38ac2754-e4c9-5644-bfb9-f1c8659510ed','53de9670-1da3-11e6-961c-5cc5d4b57135', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('45bfd1f0-e29c-f14f-a0cc-76555c0d7962','53de9670-1da3-11e6-961c-5cc5d4b57135', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69a4f3cf-62ff-11e7-874c-c85b76d43wln', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f8bfb26d-d49f-7e41-ad9b-0f80110eaf37','53de9670-1da3-11e6-961c-5cc5d4b57135', '990ea121-dc86-11e6-ac70-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', '69ce78d1-dc8c-bfdt-4axn-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('06ee1ca3-699d-cb4c-97b2-ed5dcc5eab8d','53de9670-1da3-11e6-961c-5cc5d4b57135', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('17afa311-2419-cd42-8d52-3a1668f3a1d4','53de9670-1da3-11e6-961c-5cc5d4b57135', '990ea121-dc86-11e6-ac70-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('944de183-045a-2949-a0e8-b0e27f759ac2','53de9670-1da3-11e6-961c-5cc5d4b57135', '6b45d306-e8af-4868-896d-6e477d51bdde', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65scb', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('25161898-4b06-ff44-ba36-26ecf4cce8df','53de9670-1da3-11e6-961c-5cc5d4b57135', '6b45d306-e8af-4868-896d-6e477d51bdde', '755c6791-dc85-11e6-82e6-e4b318c6b596', '69ce78d1-dc8c-bfdt-b969-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('de75bb5e-0ec2-264b-987d-3d01ad9dfbe1','53de9670-1da3-11e6-961c-5cc5d4b57135', '6b45d306-e8af-4868-896d-6e477d51bdde', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('64c0cb80-b9ec-3245-b711-b87ceff3adb2','53de9670-1da3-11e6-961c-5cc5d4b57135', '6b45d306-e8af-4868-896d-6e477d51bdde', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '69ce78d1-dc7f-bfdt-dc7f-ecsv18c65izn', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- =====================sfe经理对于医生dcr电脑端的授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f1196f9a-2790-4e52-adde-06c24e70f6av', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '85e7f39e-dc89-11e6-935d-e4b318c6b491', '3', '0', '1', '2017-04-06 20:22:40', '1', '2017-04-06 20:22:40');

DELETE FROM menus_assignments WHERE role_id = '53de9674-1da3-11e6-ac97-5cc5d4b57137' AND menu_id = '16f5a45a-efbe-4c07-905f-2ffae4da7f38';
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)VALUES('9c8dd082-5aaa-4e44-1111-535fdac74d36', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '16f5a45a-efbe-4c07-905f-2ffae4da7f38', 6, 0, 1, '2019-08-26 09:09:24', 1, '2019-08-26 09:09:24');

DELETE FROM role_to_object_permissions WHERE role_id = '53de9674-1da3-11e6-ac97-5cc5d4b57137' AND `object_id` = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`)VALUES('5451bf04-f59e-431d-1111-fcf04ab789df', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', 1, 0, 0, 0, 0, 1, '2019-08-26 09:09:24', 1, '2019-08-26 09:09:24', 0, 1, 1, 0, 0, 0, NULL, NULL);

DELETE FROM page_list_assignments WHERE role_id = '53de9674-1da3-11e6-ac97-5cc5d4b571d2' AND page_list_id = '96e6fa85-c1c2-42c8-860d-f8a46e26ea50';
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('7f83576f-95c1-4200-b4cd-44146c8255bd', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '96e6fa85-c1c2-42c8-860d-f8a46e26ea50', '0', '1', '2018-04-17 09:09:25', '1', '2018-04-17 09:09:25', '1');

-- 电脑端layout授权 --四种类型四种状态，共16个layout
INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3d610bae-92b2-6a40-bfd8-9817d99e0f62','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '4c95f1d1-5acd-824a-ae76-614a7a8c425c', '草稿',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9a630f04-a3aa-924f-ae86-5824f8c56f41','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', '3dafd307-89fd-ee4f-aeb6-29c98d43a566', '审批中',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2c609b2a-b014-8745-a0f8-a6d56705e392','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '17c4e2d7-7ab2-3e4e-a688-3e76a5e99564', '审批通过',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('530dddad-60a4-314c-a76e-129ba6300706','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98fdff4f-dc86-11e6-b1cc-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '53cc72f4-ccc3-b841-9096-5fe97cd33c9a', '拒绝',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1d75fe84-a4f4-924c-9f54-1a773c24c3b6','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', '9e4af5bc-8732-834a-bd8b-035740191e1a', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('25256f33-74da-b243-a8fa-8729e7230dda','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', '7ea48839-70d1-9a47-9231-1c0adf0a269c', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c7c61e1f-6521-824e-9f75-421f79013ad3','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '3001f895-f909-e94f-8fb7-51ea5c6dccbc', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2ae16d7e-69a8-6c46-ac0f-dc6437715d61','53de9674-1da3-11e6-ac97-5cc5d4b57137', '98ea9e61-dc86-11e6-ada3-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', 'cb8b44df-4d0a-674f-b1a4-d0b667080e4e', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8bfad969-c8ab-6d47-8f0d-2d52afffa2f1','53de9674-1da3-11e6-ac97-5cc5d4b57137', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'b02afead-6640-b844-8d8e-9a95aec7b634', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3ac864d8-c790-c147-858c-d1092b547619','53de9674-1da3-11e6-ac97-5cc5d4b57137', '990ea121-dc86-11e6-ac70-e4b318c6b596', '755c6791-dc85-11e6-82e6-e4b318c6b596', 'c64aacb7-b650-0c49-acf7-cb6fe25825b7', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d74c15e6-1d19-214e-8bd6-5f51d707b8fb','53de9674-1da3-11e6-ac97-5cc5d4b57137', '990ea121-dc86-11e6-ac70-e4b318c6b596', '7577428f-dc85-11e6-a0eb-e4b318c6b596', '7ecac3c5-f8ad-0248-bdb4-aa9ac99088b6', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('693e92f0-7d3d-094b-a2fa-bc227ca10ff3','53de9674-1da3-11e6-ac97-5cc5d4b57137', '990ea121-dc86-11e6-ac70-e4b318c6b596', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '81b45d2d-c2d7-8047-9763-554f74ef78aa', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5084d038-fda1-6d4d-a693-101cfd8620af','53de9674-1da3-11e6-ac97-5cc5d4b57137', '6b45d306-e8af-4868-896d-6e477d51bdde', '7544e7f0-dc85-11e6-a315-e4b318c6b596', 'e723ab4b-a421-d24c-9d87-704eff89c495', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3198d308-661f-d240-a240-a09b96d4cb99','53de9674-1da3-11e6-ac97-5cc5d4b57137', '6b45d306-e8af-4868-896d-6e477d51bdde', '755c6791-dc85-11e6-82e6-e4b318c6b596', '7e629665-6df3-fa42-9c0b-1dc0060a13ac', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('150248ee-4fa4-0b40-b5cb-f46cb328f9a9','53de9674-1da3-11e6-ac97-5cc5d4b57137', '6b45d306-e8af-4868-896d-6e477d51bdde', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 'b1d9029f-2631-cc4b-ab91-e47aaad355a5', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b964af37-a68c-914b-8692-5976a72ac2f0','53de9674-1da3-11e6-ac97-5cc5d4b57137', '6b45d306-e8af-4868-896d-6e477d51bdde', '758dd7cf-dc85-11e6-8e8a-e4b318c6b596', '86aa2ddb-702d-5942-8bf3-acc125ab54e9', '',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- 授权list时设置is_default=1
UPDATE `page_list_assignments` SET `is_default` = '1' WHERE (`id` = '979a6d61-622d-11e3-aca0-c85b76d4d422');
UPDATE `page_list_assignments` SET `is_default` = '1' WHERE (`id` = '979a6d61-622d-11e3-aca0-crzb76d4d2wc');
