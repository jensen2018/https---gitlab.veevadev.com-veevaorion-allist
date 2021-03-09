-- 增加岗位级别
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `description`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('d841bde3-e5bf-11ea-bc49-0215c63fce1a', '34acb3de-3933-11e7-9b77-784f43949f5b', 'position_level_12', '培训经理', '12', '培训经理', '0', '1', '2018-07-24 07:50:42', '1', '2017-05-15 16:00:00', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `description`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('de1a77e5-e5bf-11ea-bc49-0215c63fce1a', '34acb3de-3933-11e7-9b77-784f43949f5b', 'position_level_13', '董事长', '13', '董事长', '0', '1', '2018-07-24 07:50:42', '1', '2017-05-15 16:00:00', 'custom');

-- SFE删除医院按钮
UPDATE `object_actions` SET `owner_only` = '0' WHERE (`id` = '2b6b58de-321b-11e6-9ff7-5cc5d4d378cb');

UPDATE `page_list_assignments` SET `deleted` = '1' WHERE (`id` = 'c5fec7dc-6cd3-41d9-acaf-113ff8dfd52c');

-- 随访改为协访
UPDATE `page_lists` SET `label` = '协访' WHERE (`id` = '48cf8f1e-75a3-11e6-b0d3-5cc5d4b571d2');

-- 医生-产品分级Tab
UPDATE `page_list_fields` SET `label` = 'EGFR分级' WHERE (`id` = 'e78e77b9-1e49-429b-a35c-5e627dba74df');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`) VALUES ('e78e77b9-1e49-429b-a35c-5e627dba1700', '0bf3eb0b-baea-475a-bcb8-e04c08d52041', '7591688e-6ca0-4c77-9a2c-87816c269fd1', 'T790M分级', '2', '120', '1', '1', '1', '0', '1', '2017-07-14 10:57:34', '1', '2020-08-24 08:47:45', '1', '0', '0');
UPDATE `page_list_fields` SET `label` = 'EGFR分级' WHERE (`id` = '72b983b8-a1b1-4ea0-ba7d-8055817a1ecc');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`) VALUES ('72b983b8-a1b1-4ea0-ba7d-8055817a1707', '0bf3eb0b-baea-475a-bcb8-e04c08d52041', '7591688e-6ca0-4c77-9a2c-87816c269fd1', 'T790M分级', '3', '120', '1', '1', '1', '0', '1', '2017-07-14 10:57:34', '1', '2020-08-24 08:47:45', '1', '0', '0');
UPDATE `page_list_fields` SET `page_list_id` = '5d7cd557-51e3-4c6d-91e3-14c43326ade9' WHERE (`id` = '72b983b8-a1b1-4ea0-ba7d-8055817a1707');

-- 医生关注度
UPDATE `object_actions` SET `is_need_read` = '0' WHERE (`id` = 'c9b7ee52-08e2-4f4c-bfdf-3984c45b8869');

-- 增加员工号字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '7618b5a3-6ac2-11e7-8e33-c85b76d4d416');
UPDATE `object_fields` SET `label` = '员工号' WHERE (`id` = '7618b5a4-6ac2-11e7-b39d-c85b76d4d416');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('baff2040-0254-11e7-80wb-34f39ab71754', '39f3b11e-f8c0-11e6-92db-68f72882c9d0', '7618b5a4-6ac2-11e7-b39d-c85b76d4d416', '员工号', '10', '120', '1', '1', '0', '0', '1', '2017-04-14 11:51:22', '1', '2020-07-20 10:54:42');
UPDATE `page_list_fields` SET `order` = '8' WHERE (`id` = 'baff2040-0254-11e7-80wb-34f39ab71754');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('3bd4c4cf-f8ce-11e6-9a09-68f728821756', '1c353f40-f8cb-11e6-90af-68f72882c9d0', 'field', '7618b5a4-6ac2-11e7-b39d-c85b76d4d416', '员工号', '9', '6', '0', '0', 'both', '0', '1', '2017-12-28 11:14:27', '1', '2020-08-06 08:55:51', '0', '0', '0');
UPDATE `page_layout_fields` SET `order` = '10' WHERE (`id` = '3bd4c4cf-f8ce-11e6-9a09-68f728821756');

-- 医生变更申请授权bug
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '2119e863-85f1-43ee-96e8-c808fd6a5967');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '1d75fe84-a4f4-924c-9f54-1a773c24c3b6');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '730c6365-a77e-42b3-8388-7027e7da8d7d');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '43b2d905-4d19-4f62-8836-da8bf660e4b0');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'dc87261e-fcab-4d0f-9d80-864930505544');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '25256f33-74da-b243-a8fa-8729e7230dda');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '2a4bb8f2-8714-4e54-a607-fc40c2933f6f');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '36799548-3f8e-4d8e-8cf6-fe0bcbd8634e');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '808d95d2-6c19-4169-89a1-94a5e199da76');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'c7c61e1f-6521-824e-9f75-421f79013ad3');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '657d26cc-a56c-4ac8-b673-84151d0da84b');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'ba980106-d633-42ba-9b61-2b04c66ce2a7');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'dcb74894-ebd2-4238-976f-12166cf5b32c');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '2ae16d7e-69a8-6c46-ac0f-dc6437715d61');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '70f6400c-d37b-48de-b44d-272465c2239a');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '79c4e0de-afaf-495a-ae9d-28aa19f6f43d');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '9d006d37-0e58-461c-b9f9-ee84384d7bab');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '3d610bae-92b2-6a40-bfd8-9817d99e0f62');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '46fac664-e19e-437a-a6be-238079557dad');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '9d2e91a1-3019-4fda-b218-9eb3f2a68456');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '0bc1dfe9-43cf-46ec-b62d-c3ab2097cf31');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '9a630f04-a3aa-924f-ae86-5824f8c56f41');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'ac1b6a4e-c1f3-464a-a761-e5c31ec02a9a');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'fc0beee2-de1d-4cf3-969d-264121ad1c96');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'c70ffde1-1388-41a6-b6cc-743e72d07a4d');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '2c609b2a-b014-8745-a0f8-a6d56705e392');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '32d4e2c1-8996-4e49-b6e1-33865f083bf6');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '3f8bbb28-b5c3-4462-a829-a3847f8f129c');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'd32892ec-a9f5-4aae-b04b-674eddf20f4e');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '530dddad-60a4-314c-a76e-129ba6300706');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'c8154467-71bf-4432-be7c-e29da99358db');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '21710ea6-57e5-46c7-a2bd-2df3e6351176');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'dac6419a-0b7a-4bcc-9218-5c2ea02f0620');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '8bfad969-c8ab-6d47-8f0d-2d52afffa2f1');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'b707808b-e339-4970-a87d-391ff00556ab');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'e7a178cf-5fd3-4cdd-8ccc-b97b31e1b3df');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'c76c415b-6eff-4940-9325-b2e5a3ca236a');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '3ac864d8-c790-c147-858c-d1092b547619');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '14093aee-e52b-43ab-9c1c-f23d086b1675');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '4798b228-3f02-444b-83f7-b73a816bfd16');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'e9252556-e355-4120-8312-ebbc3350ffdc');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'd74c15e6-1d19-214e-8bd6-5f51d707b8fb');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '0d402c6b-490a-46f0-bcd4-9d4afb75369c');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '390b7fd1-2f0d-4ac4-ba6a-bfb38b277fd3');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'a6f439c4-0da9-4123-a2b8-8a41bf3274b2');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '693e92f0-7d3d-094b-a2fa-bc227ca10ff3');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = 'aa7647e0-a2c9-43da-923b-2748794a3204');
UPDATE `page_layout_assignments` SET `deleted` = '0' WHERE (`id` = '18c441fd-ca22-48eb-a109-ef8551b30701');

-- 客户变更记录object权限
UPDATE `role_to_object_permissions` SET `allow_read_all` = '1' WHERE (`id` = '5451bf04-f59e-431d-1111-fcf04ab789df');

UPDATE `page_lists` SET `sort_field` = '52f2e7ee-7408-11e6-ad98-5cc5d4b571d2', `is_desc` = '1' WHERE (`id` = 'cd11034f-5d5f-11e7-9dcf-c85b76d4d416');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '3021c639-d545-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `is_default` = '1' WHERE (`id` = 'da7af912-e4af-42ce-9930-144a64a704f2');

-- 客户变更申请-退回
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('a09b128f-def5-11e6-874a-5cc5d4d31843', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('a8c0f2f0-def5-11e6-a4cc-5cc5d4d31844', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', '2', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('af88f100-def5-11e6-98a0-5cc5d4d31845', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', '3', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('b75ba84f-def5-11e6-922c-5cc5d4d31846', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', '4', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('a09b128f-def5-11e6-f100-1725d4d35380', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('a8c0f2f0-def5-11e6-def5-1726d4d37538', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', '2', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('af88f100-def5-11e6-11e6-1727d4d35382', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', '3', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('b75ba84f-def5-11e6-def5-1728d4d35383', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', '4', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('1c359c6e-def8-11e6-87fe-1632d4d37edb', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('232ff51e-def8-11e6-9499-1633d4d37yaz', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', '2', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('2a4fd730-def8-11e6-8d72-1634d4d378pz', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', '3', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('30dc79ee-def8-11e6-8c07-1635d4d37ean', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', '4', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');

-- 客户变更申请-差异信息
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('02754cc0-3e4a-kukg-0001-5cc5d4d30958', '69a4f3cf-62ff-11e7-874c-c85b76d43wln', 'section', '差异信息', '16', '12', '0', '1', 'view', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('1a6c6aa1-def7-11e6-bd36-5cc5d4d30959', '69a4f3cf-62ff-11e7-874c-c85b76d43wln', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异', '17', '12', '0', '1', 'view', '0', '1', '2018-04-12 10:04:36', '1', '2018-04-12 10:04:36', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('02754cc0-3e4a-kukg-0001-5cc5d4d31000', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'section', '差异信息', '16', '12', '0', '1', 'view', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('1a6c6aa1-def7-11e6-bd36-5cc5d4d31001', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异', '17', '12', '0', '1', 'view', '0', '1', '2018-04-12 10:04:36', '1', '2018-04-12 10:04:36', '0');

-- 客户变更申请-审批名称
UPDATE `object_states` SET `label` = '审批中' WHERE (`id` = '755c6791-dc85-11e6-82e6-e4b318c6b596');
UPDATE `object_states` SET `label` = '审批通过' WHERE (`id` = '7577428f-dc85-11e6-a0eb-e4b318c6b596');

UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '4771ee57-a801-41ac-1122-e791d6d11229');

UPDATE `role_to_object_permissions` SET `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = 'a4426545-150e-4ade-85f5-7c3f0a4efc2a');
UPDATE `role_to_object_permissions` SET `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '7f9bfae2-a45f-49ad-ad60-5c542450f602');

UPDATE `object_validations` SET `trigger_code` = 'from orionbase.common import models\nfrom orionbase.common import models\nfrom django.utils.timezone import utc, localtime\nimport datetime\n\ncalls = models.Calls.objects.filter(deleted=delete_types.is_not_delete, account__id=instance.account.id, call_date=instance.call_date, owner__id=instance.owner.id)\ncall = calls[0] if calls else None\n\n# if call and call.id != instance.id:\n#     message = \'每人只可以在同一天内对同一医生拜访一次\'\n#     raise create_validation_trigger_rule_errors(message)\n\nnow = datetime.datetime.now()\ndate_now = now.date()\ncalls = models.Calls.objects.filter(deleted=delete_types.is_not_delete, id=instance.id)\ncall = calls[0] if calls else None\nif type(instance.call_date) == datetime.date:\n    start_time = instance.call_date\nelse:\n    start_time = datetime.datetime.strptime(instance.call_date, \'%Y-%m-%d\').date()\n\nif instance.state.name == \'finished\' and (not call or call.state.name == \'unfinished\'):\n    if start_time > date_now:\n        message = \'不能完成未来的拜访\'\n        raise create_validation_trigger_rule_errors(message)' WHERE (`id` = '6f56fed3-d54a-11e9-b9aa-0298a739dec0');

UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '8ac52c7c-8d92-48fc-8e35-a0a6278e995b');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = 'cd2f2efa-33f5-4622-a48f-94c0671eb3d3');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '4951b152-8907-4ff3-b14e-70b3238c3f30');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = '69946879-b173-4cd7-b2af-f538de9da79f');
UPDATE `role_to_object_permissions` SET `allow_read_all` = '0' WHERE (`id` = 'bfc40670-b7fe-4519-a283-c91170fc106a');

-- 不能完成未来的协访
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`) VALUES ('hxf43f70-e980-11e9-b9aa-0298a739dec0', '3bb97df0-75a3-11e6-b1d3-5cc5d4b571d2', '不能完成未来的协访', '不能完成未来的协访', 'trigger', '', '', '0', '1', '2019-10-11 03:26:32', '1', '2020-04-09 08:18:12', 'post_save', '1', 'custom', 'validate_coachings');
UPDATE `object_validations` SET `trigger_code` = 'if not instance is None:\n	if instance.state_id == \'4445e851-75a3-11e6-a77d-5cc5d4b571d2\':\n		now = datetime.datetime.now()\n		date_now = now.date()\n		if type(instance.coaching_date) == datetime.date:\n			start_time = instance.coaching_date\n		else:\n			start_time = datetime.datetime.strptime(instance.coaching_date, \'%Y-%m-%d\').date()\n		if start_time > date_now:\n			message1 = \'不能完成未来的协访\'\n			raise create_validation_trigger_rule_errors(message1)' WHERE (`id` = 'hxf43f70-e980-11e9-b9aa-0298a739dec0');
