-- 实施电脑端销量
INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('cc60334a-0432-11ea-b9aa-0298a739dec0', 'sales_data_allocation', 'custom', '销量管理', 'df7db991-dcdf-11e8-b6c8-02f90e0f46f0', 'menu', 'large', '84146976-0432-11ea-b9aa-0298a739dec0', 'veev-sales-data', '0', '1', '2019-11-11 10:33:29', '1', '2019-11-11 10:33:29', 'sales_data_allocation');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('edecb302-7cc3-4986-b5da-9beb25f09691', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'cc60334a-0432-11ea-b9aa-0298a739dec0', '3', '0', '1', '2017-04-06 20:22:40', '1', '2020-04-10 03:28:06', NULL);
DELETE FROM `page_list_fields` WHERE `page_list_id`='e57cca71-0438-11ea-b9aa-0298a739dec0';

INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('a63ac035-bce8-4f9d-9096-5783328b05ef', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'cs_account_external', '医院编码', 'custom', 'refer', 'all', 'both', '0', '1', '2019-11-13 02:20:39', '1', '2019-11-13 02:20:39', '{\"refer_field\": {\"path\": \"account.external_id\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('f93ca536-5688-40f7-bf06-3305dfb55544', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'cs_package_code', '剂型编码', 'custom', 'refer', 'all', 'both', '0', '1', '2019-11-13 02:20:39', '1', '2019-11-13 02:20:39', '{\"refer_field\": {\"path\": \"package.package_code\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_actions` (`id`, `object_id`, `type`, `source`, `target_display_mode`, `name`, `label`, `is_need_create`, `is_need_delete`, `is_need_read`, `is_need_update`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `locked_by_state`, `owner_only`, `is_need_export`, `is_need_import`, `show_in_approval`, `configurations`, `is_need_pre_check`, `pre_check_label`) VALUES ('9d39ba7e-0907-4117-b3ac-ca68bd163a4e', '3a519a1b-8c80-4479-8693-607e2853b4eb', 'custom', 'custom', 'all', 'cs_import', '导入', '0', '0', '0', '0', '0', '1', '2020-06-22 08:21:49', '1', '2020-06-22 08:21:49', '0', '0', '0', '0', '0', '{\"async\": true, \"type\": \"advanced_action\", \"refresh\": true}', '0', '0');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bc2d4f1c-1dac-4bc4-8e45-316f21f8f4e7', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '892a1868-3626-4ea4-817c-3f4b5c70a4a6', '日期', '1', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('cdc29e17-cef4-4992-bcd5-467d90bd400d', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '85eb019b-e315-4655-8a09-5b022f3af719', '岗位', '2', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3551b24a-91c1-48d2-8878-da7998b16eaf', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '928f1485-fc74-41a5-8415-e0cff111b205', '用户', '3', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('292a72d7-18af-4c9f-9038-2f1f6fe65a81', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'a63ac035-bce8-4f9d-9096-5783328b05ef', '医院编码', '4', '120', '0', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('05a67cb0-934d-4908-b8c8-57dfe3984a68', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'ea894d2d-0244-408f-a7d1-0d75d3a1f339', '医院名称', '5', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2756c784-5b8f-41b9-b8af-af750b08da12', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'f93ca536-5688-40f7-bf06-3305dfb55544', '剂型编码', '6', '120', '0', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a4a4ed83-9169-4336-be89-c266208cf1db', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '79d6ccb3-3346-4005-9c25-2ebc9260f119', '剂型名称', '7', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e8871dbb-e4e0-48bd-a5a6-9233fd9855de', 'e57cca71-0438-11ea-b9aa-0298a739dec0', 'bc58a3e9-47aa-45a0-b09b-6d8772829780', '数量', '8', '120', '1', '1', '1', '0', '1', '2020-08-24 15:05:15', '1', '2020-08-30 12:49:02');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('db035ea2-834f-4af4-a276-d2f102aaeff3', 'e57cca71-0438-11ea-b9aa-0298a739dec0', '9d39ba7e-0907-4117-b3ac-ca68bd163a4e', '1', '0', '1', '2019-11-11 00:00:00.000000', '1', '2019-11-11 00:00:00.000000', '0', '0', '0');
UPDATE `page_list_actions` SET `order` = '2' WHERE (`id` = 'ac059559-0460-11ea-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `object_field_id` = '52e59482-2334-46f4-8c61-fd6e1a748e6c' WHERE (`id` = 'bc2d4f1c-1dac-4bc4-8e45-316f21f8f4e7');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = 'cdc29e17-cef4-4992-bcd5-467d90bd400d');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = '3551b24a-91c1-48d2-8878-da7998b16eaf');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = '05a67cb0-934d-4908-b8c8-57dfe3984a68');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = 'a4a4ed83-9169-4336-be89-c266208cf1db');
UPDATE `page_lists` SET `detail_disabled` = '1' WHERE (`id` = 'e57cca71-0438-11ea-b9aa-0298a739dec0');
UPDATE `page_lists` SET `primary_filter` = 'yearmonth' WHERE (`id` = 'e57cca71-0438-11ea-b9aa-0298a739dec0');



-- 创建 cs_sales_datas 中间表
CREATE TABLE `cs_sales_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` int(11) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `date` varchar(24) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `quantity` decimal(16,6) DEFAULT NULL,
  `error_msg` varchar(255) DEFAULT NULL,
  `import_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cs_sales_datas_created_by_9a7842b4_fk_auth_user_id` (`created_by`),
  KEY `cs_sales_datas_account_id_967e0dc1_fk_accounts_id` (`account_id`),
  KEY `cs_sales_datas_package_id_af794440_fk_packages_id` (`package_id`),
  CONSTRAINT `cs_sales_datas_created_by_9a7842b4_fk_auth_user_id` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cs_sales_datas_account_id_967e0dc1_fk_accounts_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `cs_sales_datas_package_id_af794440_fk_packages_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;