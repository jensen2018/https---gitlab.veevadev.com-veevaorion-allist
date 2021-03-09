-- sfe 经理授权
INSERT ignore INTO `menus` (`id`, `name`, `source`,`icon`, `label`, `type`, `screen_size`, `page_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES 
('c2102cbd-c511-11e7-b894-186590dc4wxb','resources_strategy_l', 'custom','veev-event', '资源策略管理', 'category', 'large', '20fdb4ca-c4ff-11e7-aab6-186590dcd3c9','0', '1', '2018-08-02 10:33:29', '1', '2019-06-24 11:23:59', 'resources_strategy');
UPDATE `menus` SET `parent_id`='c2102cbd-c511-11e7-b894-186590dc4wxb' WHERE `id`='c2102cbd-c511-11e7-b894-186590dcd3c9';

INSERT ignore INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('4c953218-d831-11e9-b9aa-0298a739iiz0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'c2102cbd-c511-11e7-b894-186590dc4wxb', '3', '0', '1', '2019-09-16 11:17:36', '1', '2019-09-16 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4c953218-d831-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'c2102cbd-c511-11e7-b894-186590dcd3c9', '1', '0', '1', '2019-09-16 11:17:36', '1', '2019-09-16 11:17:36');
UPDATE `menus` SET `deleted`='0' WHERE `id`='6e883f0f-b094-11e6-8a9a-5cc5d4d378cb';

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('7634ed4f-d834-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '67013e82-c500-11e7-be81-186590dcd3c9', '0', '1', '2019-09-16 06:06:56', '1', '2019-09-16 06:06:56', '1');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('198a357f-d835-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '350cbd31-1b0e-4577-82b4-65ee0e0435ef', '0', '1', '2019-09-16 06:40:53', '1', '2019-09-16 06:40:53');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6650d211-d835-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '568f4b45-c838-11e7-add9-186590dcd3c9', '0', '1', '2019-09-16 06:40:53', '1', '2019-09-16 06:40:53');

UPDATE `page_layout_assignments` SET `object_record_type_id`='dd746119-c45e-11e7-8378-186590dcd3c9' WHERE `id`='198a357f-d835-11e9-b9aa-0298a739dec0';
UPDATE `page_layout_assignments` SET `object_record_type_id`='dd71be85-c45e-11e7-8cbd-186590dcd3c9' WHERE `id`='6650d211-d835-11e9-b9aa-0298a739dec0';

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('4f74a1c5-d843-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '92f51257-c45a-11e7-8048-186590dcd3c9', '1', '1', '1', '1', '0', '1', '2019-09-16 11:20:42', '1', '2019-09-16 11:20:42', '1', '1', '1', '1');

UPDATE `page_list_fields` SET `order`='6' WHERE `id`='d21d6ea8-c50e-11e7-3211-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='5' WHERE `id`='d21d6ea8-c50e-11e7-9dec-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='2' WHERE `id`='d21d6ea8-c50e-11e7-9cc9-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='1' WHERE `id`='d220c2cc-c50e-11e7-9733-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='4' WHERE `id`='d21d6ea8-c50e-11e7-9bbe-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='3' WHERE `id`='d220c545-c50e-11e7-a355-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='7' WHERE `id`='d21d6ea8-c50e-11e7-9bfe-186590dcd3c9';
UPDATE `page_list_fields` SET `order`='8' WHERE `id`='d21d6ea8-c50e-11e7-3cae-186590dcd3c9';

-- system 字段
-- db6c6326-c45d-11e7-a289-186590dcd3c9 创建人 
-- db6c6917-c45d-11e7-80ba-186590dcd3c9 创建时间 
-- db6c6626-c45d-11e7-a2bb-186590dcd3c9 修改人 
-- db6c6bf0-c45d-11e7-ab34-186590dcd3c9 修改时间 

-- custome refer字段
-- 2d54b965-d84c-11e9-b9aa-0298a739dec0 创建人
-- 5e7279c8-d84c-11e9-b9aa-0298a739dec0 修改人

INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('2d54b965-d84c-11e9-b9aa-0298a739dec0', '92f51257-c45a-11e7-8048-186590dcd3c9', 'create_by_refer', '创建人', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-16 03:02:29', '1', '2019-09-16 03:02:29', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('5e7279c8-d84c-11e9-b9aa-0298a739dec0', '92f51257-c45a-11e7-8048-186590dcd3c9', 'modified_by_refer', '修改人', 'custom', 'refer', 'all', 'both', '0', '1', '2019-09-16 03:02:29', '1', '2019-09-16 03:02:29', '0', '0', '0', '1', '1');
UPDATE `object_fields` SET `configurations`='{\"refer_field\": {\"path\": \"created_by.orionusers.name\", \"type\": \"text\"}}' WHERE `id`='2d54b965-d84c-11e9-b9aa-0298a739dec0';
UPDATE `object_fields` SET `configurations`='{\"refer_field\": {\"path\": \"modified_by.orionusers.name\", \"type\": \"text\"}}' WHERE `id`='5e7279c8-d84c-11e9-b9aa-0298a739dec0';

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f816a888-d847-11e9-b9aa-0298a739dec0', '67013e82-c500-11e7-be81-186590dcd3c9', 'db6c6326-c45d-11e7-a289-186590dcd3c9', '创建人', '9', '120', '1', '1', '1', '1', '2019-09-16 00:00:00', '1', '2019-09-16 06:03:03');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('15b9f9e5-d848-11e9-b9aa-0298a739dec0', '67013e82-c500-11e7-be81-186590dcd3c9', 'db6c6917-c45d-11e7-80ba-186590dcd3c9', '创建时间', '10', '120', '1', '1', '0', '1', '2019-09-16 00:00:00', '1', '2019-09-16 06:03:03');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3982be6f-d848-11e9-b9aa-0298a739dec0', '67013e82-c500-11e7-be81-186590dcd3c9', 'db6c6626-c45d-11e7-a2bb-186590dcd3c9', '修改人', '11', '120', '1', '1', '1', '1', '2019-09-16 00:00:00', '1', '2019-09-16 06:03:03');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('540b7599-d848-11e9-b9aa-0298a739dec0', '67013e82-c500-11e7-be81-186590dcd3c9', 'db6c6bf0-c45d-11e7-ab34-186590dcd3c9', '修改时间', '12', '120', '1', '1', '0', '1', '2019-09-16 00:00:00', '1', '2019-09-16 06:03:03');

UPDATE `page_list_fields` SET `object_field_id`='2d54b965-d84c-11e9-b9aa-0298a739dec0' WHERE `id`='f816a888-d847-11e9-b9aa-0298a739dec0';
UPDATE `page_list_fields` SET `object_field_id`='5e7279c8-d84c-11e9-b9aa-0298a739dec0' WHERE `id`='3982be6f-d848-11e9-b9aa-0298a739dec0';


-- sfe经理对record授权，否则创建保存报错
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e806fc79-d855-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'dd746119-c45e-11e7-8378-186590dcd3c9', '1', '0', '1', '2019-09-16 09:09:34', '1', '2019-09-16 09:09:34');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('02d0422c-d856-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'dd71be85-c45e-11e7-8cbd-186590dcd3c9', '1', '0', '1', '2019-09-16 09:09:34', '1', '2019-09-16 09:09:34');

-- list 默认使用创建时间 倒序
UPDATE `page_lists` SET `sort_field` = 'db6c6917-c45d-11e7-80ba-186590dcd3c9', `is_desc` = '1' WHERE (`id` = '67013e82-c500-11e7-be81-186590dcd3c9');
