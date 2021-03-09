-- 代表增加日程菜单
UPDATE `menus_assignments` SET `deleted` = '0' WHERE (`id` = 'b6675f6d-39e7-464b-9082-6bad53528ea6');
-- 新建销量报表
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `cron_hour`, `scheduled`) VALUES ('0', '1', '2020-10-09 00:00:00.000000', '1', '2020-10-09 00:00:00.000000', 'dxbce761-ytre-11e6-8fa0-88bcc771dfc3', '代表销量报表', 'custom', 'XS', '0', '1');
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES ('0', '1', '2020-10-09 00:00:00.000000', '1', '2020-10-09 00:00:00.000000', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', '经理销量报表', 'custom', 'XS', '0');

-- 代表授权销量报表
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', '1a1bb8df-9e4d-4317-8c10-d8ff81566e3a', '1', 'dxbce761-ytre-11e6-8fa0-88bcc771dfc3', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', '7e0ff4e9-c4cc-4caf-9879-e9414ecc3f29', '1', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', 'b468cad4-4f14-4c84-8d18-6ba3f84dcf60', '1', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', '9f3df479-946a-40b1-84c4-7d336a9f80f5', '1', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', '2020-10-09 01:02:18.356972', '1', '2020-10-09 01:02:18.356972', '9335b9f5-8ffc-45b9-bc4a-d2cd597e638c', '1', 'dsmce761-ytre-11e6-8fa0-88bcc771dfc3', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'analysis', '30ca0cb3-4c7c-44e6-bec7-b2158bc559f2');



-- 创建中间表
CREATE TABLE `cs_sales_data_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yearmonth` varchar(255) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `cs_type` varchar(10) NOT NULL,
  `cs_sum_month` decimal(15,6) DEFAULT NULL,  -- 当月销量
  `cs_sum_last_month` decimal(15,6) DEFAULT NULL, -- 环比月销量
  `cs_sum_month_of_last_year` decimal(15,6) DEFAULT NULL,-- 同比月销量
  `cs_target_month` decimal(15,6) DEFAULT NULL,-- 月达成
  `cs_sum_quarter` decimal(15,6) DEFAULT NULL,-- 当前季度销量
  `cs_sum_last_quarter` decimal(15,6) DEFAULT NULL,-- 环比季度销量
  `cs_sum_quarter_of_last_year` decimal(15,6) DEFAULT NULL,-- 同比季度销量
  `cs_target_quarter` decimal(15,6) DEFAULT NULL,-- 季度打成
  `cs_sum_ytd` decimal(15,6) DEFAULT NULL,-- ytd销量
  `cs_sum_ytd_of_last_year` decimal(15,6) DEFAULT NULL,-- 同比ytd销量
  `cs_target_ytd` decimal(15,6) DEFAULT NULL,-- ytd达成
  `created_on`   datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cs_sales_data_summary_cs_year_08c8d96e_uniq` (`yearmonth`,`hospital_id`,`package_id`,`position_id`,`cs_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;