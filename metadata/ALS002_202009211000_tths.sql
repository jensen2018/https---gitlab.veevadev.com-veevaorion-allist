-- 电脑端支持流向
-- 新建流向menu
INSERT INTO `menus` (`id`, `name`, `source`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('ea154bb0-e6b6-11e7-8fdb-ec21b5f44b81', 'tths_l', 'custom', '流向管理', 'df7db991-dcdf-11e8-b6c8-02f90e0f46f0', 'menu', 'large', '30b6eb5e-e6b6-11e7-a9e8-ec21b5f44b81', '0', '1', '2019-03-25 11:33:47', '1', '2019-06-24 11:08:42', 'tths_l');
INSERT INTO `object_actions` (`id`, `object_id`, `type`, `source`, `target_display_mode`, `name`, `label`, `is_need_create`, `is_need_delete`, `is_need_read`, `is_need_update`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `locked_by_state`, `owner_only`, `is_need_export`, `is_need_import`, `show_in_approval`, `configurations`, `is_need_pre_check`, `pre_check_label`) VALUES ('b02cfd49-b039-11ea-aab5-0215c63fce1a', '7825166c-29d4-407e-b754-5a7bb75c6c1d', 'custom', 'custom', 'all', 'cs_import', '导入', '0', '0', '0', '0', '0', '1', '2020-06-22 08:21:49', '1', '2020-06-22 08:21:49', '0', '0', '0', '0', '0', '{\"async\": true, \"type\": \"advanced_action\", \"refresh\": true}', '0', '0');
UPDATE `page_list_fields` SET `label` = '日期' WHERE (`id` = 'fba9628f-e6c4-11e7-a1cf-ec21b5f44b81');
UPDATE `page_list_fields` SET `label` = '医院' WHERE (`id` = '05188bd1-e6c5-11e7-9a3b-ec21b5f44b81');
UPDATE `page_list_fields` SET `label` = '上游' WHERE (`id` = '0e04c96e-e6c5-11e7-803e-ec21b5f44b81');
UPDATE `page_list_fields` SET `label` = '剂型' WHERE (`id` = '1561db8f-e6c5-11e7-9131-ec21b5f44b81');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '1d6ae51e-e6c5-11e7-a90d-ec21b5f44b81');
UPDATE `page_list_fields` SET `label` = '数量' WHERE (`id` = '24cfe680-e6c5-11e7-b8cc-ec21b5f44b81');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '2e38a721-e6c5-11e7-a885-ec21b5f44b81');
UPDATE `page_lists` SET `sort_field` = '6707e1ed-144b-4d6f-8b0e-ec26ab7fdaf1', `is_desc` = '0' WHERE (`id` = '421155a1-e6b9-11e7-8125-ec21b5f44b81');
UPDATE `page_lists` SET `primary_filter` = 'yearmonth', `primary_filter_configurations` = '{\"multiple_option\":false}' WHERE (`id` = '421155a1-e6b9-11e7-8125-ec21b5f44b81');
UPDATE `page_list_fields` SET `order` = '2' WHERE (`id` = '0e04c96e-e6c5-11e7-803e-ec21b5f44b81');
UPDATE `page_list_fields` SET `order` = '3' WHERE (`id` = '05188bd1-e6c5-11e7-9a3b-ec21b5f44b81');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `is_item_action`) VALUES ('27fe32b0-e63b-4a30-bf67-649d35be71a9', '421155a1-e6b9-11e7-8125-ec21b5f44b81', 'c8f29173-84fb-4ada-b617-2f175e3e759c', '2', '0', '1', '2019-11-12 00:00:00.000000', '1', '2019-11-12 00:00:00.000000', '0', '0');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `is_item_action`) VALUES ('20ea17af-4042-457f-a565-549dc72d58f2', '421155a1-e6b9-11e7-8125-ec21b5f44b81', 'b02cfd49-b039-11ea-aab5-0215c63fce1a', '1', '0', '1', '2019-11-12 00:00:00.000000', '1', '2019-11-12 00:00:00.000000', '0', '0');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'aadadc6f-c2e6-42ae-b555-f0e763678fec');
UPDATE `object_fields` SET `name` = 'cs_seller_name', `label` = '卖方名称' WHERE (`id` = 'dd1a6260-c325-4b18-a5fc-e134b0016dfb');
UPDATE `page_list_fields` SET `object_field_id` = 'dd1a6260-c325-4b18-a5fc-e134b0016dfb' WHERE (`id` = '0e04c96e-e6c5-11e7-803e-ec21b5f44b81');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = '1561db8f-e6c5-11e7-9131-ec21b5f44b81');
UPDATE `page_list_fields` SET `disable_click` = '1' WHERE (`id` = '05188bd1-e6c5-11e7-9a3b-ec21b5f44b81');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '772d8f73-b9da-4e2f-b37b-53031f87a360');
UPDATE `object_fields` SET `name` = 'cs_seller_code', `label` = '卖方编码' WHERE (`id` = 'ecd6684b-d54d-4a12-bc58-f7823d4f0f47');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `number_scale`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `allow_filter`, `allow_sort`) VALUES ('87bbe610-2f96-48ce-a8b3-25d2022cd058', '7825166c-29d4-407e-b754-5a7bb75c6c1d', 'cs_buyer_code', '医院编码', 'custom', 'refer', 'all', 'both', '0', '0', '1', '2019-03-14 09:19:13', '1', '2019-03-14 09:19:13', '{\"refer_field\": {\"path\": \"buyer.external_id\", \"type\": \"text\"}}', '0', '0', '0', '', '1', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `disable_click`) VALUES ('e697bbf9-bb4f-48c1-8689-f429b0381b6d', '421155a1-e6b9-11e7-8125-ec21b5f44b81', 'ecd6684b-d54d-4a12-bc58-f7823d4f0f47', '上游编码', '2', '120', '1', '1', '1', '0', '1', '2018-04-12 10:04:30', '1', '2020-09-24 08:43:14', '1');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1fb38a59-5c03-4e98-a3f3-82080430ef54', '421155a1-e6b9-11e7-8125-ec21b5f44b81', '87bbe610-2f96-48ce-a8b3-25d2022cd058', '医院编码', '4', '120', '0', '1', '1', '0', '1', '2018-04-12 10:04:30', '1', '2020-09-21 06:31:48');
UPDATE `page_list_fields` SET `label` = '医院名称', `order` = '5' WHERE (`id` = '05188bd1-e6c5-11e7-9a3b-ec21b5f44b81');
UPDATE `page_list_fields` SET `order` = '3', `allow_sort` = '1' WHERE (`id` = '0e04c96e-e6c5-11e7-803e-ec21b5f44b81');
UPDATE `page_list_fields` SET `order` = '6', `allow_sort` = '1' WHERE (`id` = '1561db8f-e6c5-11e7-9131-ec21b5f44b81');
UPDATE `page_list_fields` SET `order` = '7', `is_default` = '1' WHERE (`id` = '24cfe680-e6c5-11e7-b8cc-ec21b5f44b81');
UPDATE `page_list_fields` SET `allow_sort` = '1' WHERE (`id` = 'fba9628f-e6c4-11e7-a1cf-ec21b5f44b81');

-- 创建初始销量状态
INSERT INTO `sales_states` (`deleted`, `created_on`, `modified_on`, `created_by`, `modified_by`, `state_id`, `yearmonth`, `has_tth_relations`) VALUES ('0', NOW(), NOW(), '1', '1', '29d5f64a-a20f-490d-a725-b8e2e93277ef',DATE_FORMAT(NOW(),'%Y-%m') , '0');


-- sfe授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('0f7bcf41-6da8-4772-b624-a6cdb7038944', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'ea154bb0-e6b6-11e7-8fdb-ec21b5f44b81', '2', '0', '1', '2017-04-06 20:22:40', '1', '2020-04-10 03:28:06', NULL);
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('c3e60603-67ae-46d1-9df0-dcd6995a843f', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '421155a1-e6b9-11e7-8125-ec21b5f44b81', '0', '1', '2020-07-06 00:00:00', '1', '2020-07-06 00:00:00', '1');

UPDATE `role_to_object_permissions` SET `allow_read` = '1', `allow_import` = '1', `allow_export` = '1', `allow_read_all` = '1',`allow_update_all` = '1' WHERE (`id` = '30a65ce9-4ccc-4f4b-a797-792e697804ee');

-- 创建cs_custom_setting表
CREATE TABLE `cs_custom_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` mediumtext,
  `description` varchar(5120) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `modified_by` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `custom_settings_created_by_86b2c801_fk_auth_user_id` (`created_by`),
  KEY `custom_settings_modified_by_344daae1_fk_auth_user_id` (`modified_by`),
  CONSTRAINT `custom_settings_created_by_86b2c801_fk_auth_user_id` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `custom_settings_modified_by_344daae1_fk_auth_user_id` FOREIGN KEY (`modified_by`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `cs_custom_settings` (`id`, `key`, `value`, `deleted`, `created_on`, `modified_on`, `created_by`, `modified_by`) VALUES ('1', 'SFTP_INFO', '{\"SFTP_HOST\":\"52.80.40.12\",\"SFTP_PORT\":\"22\",\"SFTP_USER\":\"ftp_allist\",\"SFTP_PASS\":\"LlFuBg6G6yQN\"}', '0', '2020-07-17 13:20:35', '2020-07-17 13:20:35', '1', '1');
INSERT INTO `cs_custom_settings` (`id`, `key`, `value`, `deleted`, `created_on`, `modified_on`, `created_by`, `modified_by`) VALUES ('2', 'sent_message', '[\'shulin.qian@contractor.veeva.com\']', '0', '2020-07-17 13:20:35', '2020-07-17 13:20:35', '1', '1');

-- 创建 cs_tths中间表
CREATE TABLE `cs_tths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` varchar(255) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `seller_code` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `quantity` decimal(16,6) DEFAULT NULL,
  `price` decimal(16,6) DEFAULT NULL,
  `error_msg` varchar(255) DEFAULT NULL,
  `import_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cs_tths_created_by_9a7842b4_fk_auth_user_id` (`created_by`),
  KEY `cs_tths_buyer_id_967e0dc1_fk_accounts_id` (`buyer_id`),
  KEY `cs_tths_package_id_af794440_fk_packages_id` (`package_id`),
  CONSTRAINT `cs_tths_created_by_9a7842b4_fk_auth_user_id` FOREIGN KEY (`created_by`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cs_tths_buyer_id_967e0dc1_fk_accounts_id` FOREIGN KEY (`buyer_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `cs_tths_package_id_af794440_fk_packages_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


