UPDATE `object_record_types` SET `label` = '协访' WHERE (`id` = '4b889120-5f66-4453-9971-db5eef363f0e');

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f11120859', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '62c05b51-1777-11e7-af94-5cc5d4b571d2', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-30 07:40:10');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f11120860', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '62c05b51-1777-11e7-af94-5cc5d4b571d2', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-30 07:40:10');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5a2a9e0f-f8aa-11e6-b2f9-68f11120861', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '62c05b51-1777-11e7-af94-5cc5d4b571d2', '1', '0', '1', '2020-06-09 09:35:00', '1', '2020-07-30 07:40:10');

UPDATE `page_list_assignments` SET `deleted` = '1' WHERE (`id` = 'e40f67a6-11ea-4187-bc83-8df283ddd999');

UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'd7fdf61f-e21d-11ea-bc49-0215c63fce1c');

UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '8cf3f92c-1e17-413d-9bee-a448131fa885');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '31439250-3b94-11e7-94ea-34f39ab71988');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = 'f066b47e-d09c-4255-9eeb-346c0950dd94');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '63ce46f9-87f5-44f2-b71e-0814d51a1cc7');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '3bef6f88-b0d0-4bdb-b0db-354187215570');
UPDATE `role_to_object_permissions` SET `allow_export` = '1' WHERE (`id` = '4087a758-eb7b-42c4-b35e-cd7ed612bd67');

