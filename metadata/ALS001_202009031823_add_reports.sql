create table if not exists cs_underling(
	`id` int AUTO_INCREMENT,
    `position_id` varchar(50),
    `underling_position_ids` varchar(50),
  	`updated_on` datetime,
     PRIMARY KEY (`id`)
     ) CHARSET=utf8;

-- 添加 代表 首页报表
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES ('0', '1', '2019-12-10 00:00:00.000000', '1', '2019-12-10 00:00:00.000000', 'eb7797ff-dff5-11e7-803d-022802890001', '首页报表--自定义代表角色报表', 'system', 'S', '0');

UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '5d02bdb7-ceb7-4de0-925b-b7146807452f');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '65fa203c-9734-4a34-a88b-51b858f56164');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2020-07-15 10:48:51.599809', '1', '2020-07-15 10:48:51.599850', '46e0f4a3-f7a4-4671-9052-37d6aebda90a', '1', 'eb7797ff-dff5-11e7-803d-022802890001', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'homepage');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '46e0f4a3-f7a4-4671-9052-37d6aebda9b4');

UPDATE `reports` SET `source` = 'custom' WHERE (`id` = 'eb7797ff-dff5-11e7-803d-022802890001');

-- 添加主管  地区 大区 总监 首页 报表
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES ('0', '1', '2019-12-10 00:00:00.000000', '1', '2019-12-10 00:00:00.000000', 'eb7797ff-dff5-11e7-803d-022802890002', '首页报表--自定义主管、地区、大区、总监', 'custom', 'S', '1');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'cd28c3ec-dfba-11ea-bc49-0215c63fc30a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'homepage');
-- 主管权限
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) 
VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'cd28c3ec-dfba-11ea-aa2i-0215c63fc30a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'homepage');
-- 大区经理
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) 
VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'cd28c3ec-dfba-11ea-90ia-0215c63fc30a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'homepage');
-- 大区总监
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) 
VALUES ('0', '1', '2020-07-15 14:23:49.726529', '1', '2020-07-15 14:23:49.726568', 'cd28c3ec-dfba-11ea-99ee-0215c63fc30a', '1', 'eb7797ff-dff5-11e7-803d-022802890002', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'homepage');

