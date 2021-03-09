-- 配置第三方费用lookup
INSERT INTO `object_filters` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `label`, `source`, `formula`, `is_desc`, `object_id`, `sort_field`, `name`, `display`, `external_condition`, `ignore_rls`) VALUES ('0', '1', '2019-01-02 00:00:00', '1', '2020-04-09 04:17:34', 'f2a1b08c-997b-4722-80c2-2af6729cc437', '选择学会/供应商', 'custom', NULL, '0', 'b0344133-82ea-4b9e-ab65-d28409be134b', 'e23c43ea-c71b-4aaa-bec2-e665e5f6b92f', 'event_logistic', 'standard', NULL, '1');
INSERT INTO `object_filter_display_fields` (`id`, `label`, `order`, `width`, `object_field_id`, `object_filter_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('c86ebdb3-f25c-43f9-af3b-c3786a717b2a', '学会/供应商名称', '1', '250', 'e23c43ea-c71b-4aaa-bec2-e665e5f6b92f', 'f2a1b08c-997b-4722-80c2-2af6729cc437', '0', '1', '2019-12-04 09:35:08', '1', '2019-12-04 09:35:08', '1');
UPDATE `object_fields` SET `lookup_filter_id` = 'f2a1b08c-997b-4722-80c2-2af6729cc437' WHERE (`id` = 'fe4207e4-0a6f-4ab2-838d-45f8ef4e3ee2');
-- 删除主管产品menu
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '05ccbff0-827b-4b38-a400-cbba43fdef13');
-- 删除区域外时间中的外部会议
UPDATE `picklist_values` SET `deleted` = '1' WHERE (`id` = 'd91e7f1e-e9a2-4e58-921a-d9c74f240dcd');
-- 董事长添加日程
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('017d80e0-8bbc-4f2b-9443-b92d03f4a555', '02ebda16-b601-11ea-aab5-0215c63fce1a', '62c05b51-1777-11e7-af94-5cc5d4b571d2', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-30 07:40:10');
-- 删除重复页面
DELETE FROM `page_list_assignments` WHERE (`id` = '977ee070-f8c1-11e6-8986-68f72882c5az');
DELETE FROM `page_list_assignments` WHERE (`id` = 'a6233216-2e13-4b60-9c3c-2f498643feee');
DELETE FROM `page_list_assignments` WHERE (`id` = '02f78dd4-490o-42f9-98dd-6e32529d8b13');
UPDATE `page_lists` SET `primary_filter` = NULL WHERE (`id` = '30fb9736-d1ef-11e8-a140-02f90e0f46f0');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '5039fa08-de48-4e5e-81cf-7518a12827f3');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '08411159-7d2f-40e5-bf10-1b57bd444aae');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '80b6bb61-0c1b-4e6b-8987-f30ec52d8fc6');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '753a9c7a-3fc3-43f1-86ff-ec5503ab6bd5');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '80b6bb61-0c19-4e6b-8987-f30ec52d8fc6');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'e98bc7e1-e8d6-11ea-bc49-0215c63fce1a');
