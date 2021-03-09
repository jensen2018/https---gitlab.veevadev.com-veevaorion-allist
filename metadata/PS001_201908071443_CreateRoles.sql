-- 移除产品自带角色
UPDATE `roles` SET `deleted`='1',`name` = '代表_废弃' WHERE `id`='53de6f5e-1da3-11e6-b011-5cc5d4b571d2';
UPDATE `roles` SET `deleted`='1',`name` = '地区经理_废弃' WHERE `id`='53de9670-1da3-11e6-961c-5cc5d4b571d2';
UPDATE `roles` SET `deleted`='1',`name` = 'RM_废弃' WHERE `id`='53de9671-1da3-11e6-93fb-5cc5d4b571d2';
UPDATE `roles` SET `deleted`='1',`name` = 'SFE经理_废弃' WHERE `id`='53de9674-1da3-11e6-ac97-5cc5d4b571d2';
-- 添加新角色
INSERT INTO `roles` (`id`, `name`, `type`, `source`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('53de6f5e-1da3-11e6-b011-5cc5d4b57134', '代表', 'sales_rep', 'custom', '0', '1', now(), '1',now()),
('53de9670-1da3-11e6-961c-5cc5d4b57135', '销售经理', 'sales_manager', 'custom', '0', '1',now(), '1', now()),
('53de9671-1da3-11e6-93fb-5cc5d4b57136', '大区经理', 'sales_manager', 'custom', '0', '1',now(), '1', now()),
('53de9674-1da3-11e6-ac97-5cc5d4b57137', 'SFE经理', 'sfe', 'custom', '0', '1',now(), '1', now()),
('53de9674-1da3-11e6-ac97-5cc5d4b57138', 'SFE专员', 'sfe', 'custom', '0', '1', now(), '1', now());
-- 取消选择role时的权限
update object_filters set ignore_rls=1,modified_on = now() where id = '53cad6a1-f979-11e6-8c2b-68f72882c9d0';

-- 市场部角色
INSERT INTO `roles` (`id`, `name`, `type`, `source`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b72453fc-efdb-11e9-b9aa-0298a739dec0', '市场部', 'market', 'custom', '0', '1', '2019-10-16 10:33:29', '1', '2019-10-16 10:33:29');
-- 财务部 角色
INSERT INTO `roles` (`id`, `name`,`type`, `source`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fae61bfc-f57a-11e9-b9aa-0298a739dec0', '财务部', 'finance','custom', '0', '1', '2019-10-23 10:33:29', '1', '2019-10-23 10:33:29');
