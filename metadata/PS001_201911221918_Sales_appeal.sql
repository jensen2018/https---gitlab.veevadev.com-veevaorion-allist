
-- 53de6f5e-1da3-11e6-b011-5cc5d4b57134 代表
-- 53de9670-1da3-11e6-961c-5cc5d4b57135 销售经理
-- 53de9671-1da3-11e6-93fb-5cc5d4b57136 大区经理

-- 销量申诉对象
-- efb25a90-a144-4d05-a696-02043f587f29

-- 申诉 action 23d227cf-d017-11e7-bd7d-c85b76d4d416
-- layout 
-- 7d348200-e6e2-11e7-8498-ec21b5f44b81  submitted_quantity_tth_appeal_s
-- 974ef30f-d408-11e7-b2fe-c85b76d4d416  quantity_tth_appeal_s
-- ff7bf4c0-d344-11e7-b07d-c85b76d4d416  quantity_tth_appeal_l
-- state
-- b2275225-30d9-479d-b88d-f5c065ae1aa5  草稿
-- 4bd00eec-3d9e-4b01-8eed-f4f1ecdb147a  提交
-- 32344e53-9ba1-4e9a-b415-fb3230d2f2e5  通过
-- 011ef75a-ec89-4bad-aa8f-4278d7257acc  拒绝

-- 6258cb7e-0f9a-4b4e-ad88-8fb876b589c2 数量申诉
-- 69e5bbeb-866d-48aa-b92f-5a02e46a076d 价格申诉

-- fcec4359-84fd-4201-83b1-bb060d5e7f47 已确认销量layout 

UPDATE `object_actions` SET `locked_by_state`='0' WHERE `id`='23d227cf-d017-11e7-bd7d-c85b76d4d416';

-- 删除进货数量字段
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='07c09600-e6f4-11e7-aabc-ec21b5f44b81';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='ddc0dac0-d408-11e7-9720-c85b76d4d416';

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e7703c6d-0780-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '0', '0', '1', '2019-11-15 20:22:52', '1', '2019-11-15 20:22:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2ee0359e-078d-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '0', '0', '1', '2019-11-15 20:22:52', '1', '2019-11-15 20:22:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a0eee988-0796-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '0', '0', '1', '2019-11-15 20:22:52', '1', '2019-11-15 20:22:52');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('b83a4e38-077f-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', 'b2275225-30d9-479d-b88d-f5c065ae1aa5', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59', NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bcd25c66-0782-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '4bd00eec-3d9e-4b01-8eed-f4f1ecdb147a', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('78324aa7-0784-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '32344e53-9ba1-4e9a-b415-fb3230d2f2e5', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ba4f997b-0784-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '011ef75a-ec89-4bad-aa8f-4278d7257acc', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('360820d3-0797-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '32344e53-9ba1-4e9a-b415-fb3230d2f2e5', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3d1ddc70-0797-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', 'b2275225-30d9-479d-b88d-f5c065ae1aa5', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('41359365-0797-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '011ef75a-ec89-4bad-aa8f-4278d7257acc', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('44e80d36-0797-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '4bd00eec-3d9e-4b01-8eed-f4f1ecdb147a', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('65a7f964-0797-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '32344e53-9ba1-4e9a-b415-fb3230d2f2e5', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('69e97c82-0797-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', 'b2275225-30d9-479d-b88d-f5c065ae1aa5', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6db71d60-0797-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '011ef75a-ec89-4bad-aa8f-4278d7257acc', '974ef30f-d408-11e7-b2fe-c85b76d4d416', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('71f1390e-0797-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '4bd00eec-3d9e-4b01-8eed-f4f1ecdb147a', '7d348200-e6e2-11e7-8498-ec21b5f44b81', '0', '1', '2019-11-15 10:01:59', '1', '2019-11-15 10:01:59');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('7cedfc84-0785-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'efb25a90-a144-4d05-a696-02043f587f29', '1', '1', '1', '1', '0', '1', '2019-11-15 00:00:00', '1', '2019-11-15 00:00:00', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('84738692-0785-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'efb25a90-a144-4d05-a696-02043f587f29', '1', '1', '1', '1', '0', '1', '2019-11-15 00:00:00', '1', '2019-11-15 00:00:00', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('a2007c3a-0785-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'efb25a90-a144-4d05-a696-02043f587f29', '1', '1', '1', '1', '0', '1', '2019-11-15 00:00:00', '1', '2019-11-15 00:00:00', '0', '0', '0', '0');

-- 卖方必填
UPDATE `page_layout_fields` SET `is_mandatory`='1' WHERE `id`='e9b4c86e-e6f3-11e7-a2d3-ec21b5f44b81';
UPDATE `page_layout_fields` SET `is_mandatory`='1' WHERE `id`='ce6daacf-d408-11e7-b294-c85b76d4d416';
-- 申诉说明必填
UPDATE `page_layout_fields` SET `is_mandatory`='1' WHERE `id`='17a04e80-e6f4-11e7-b733-ec21b5f44b81';
UPDATE `page_layout_fields` SET `is_mandatory`='1' WHERE `id`='e639bd21-d408-11e7-8cad-c85b76d4d416';

-- 微信端销量申诉 menu
-- 1e1a92cf-ce6b-11e7-acaf-c85b76d4d416

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('879fc10f-09e4-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '1e1a92cf-ce6b-11e7-acaf-c85b76d4d416', '18', '0', '1', '2019-11-18 11:17:36', '1', '2019-11-18 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('bf2f9b4c-09e4-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '1e1a92cf-ce6b-11e7-acaf-c85b76d4d416', '18', '0', '1', '2019-11-18 11:17:36', '1', '2019-11-18 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d3e56a0c-09e4-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '1e1a92cf-ce6b-11e7-acaf-c85b76d4d416', '18', '0', '1', '2019-11-18 11:17:36', '1', '2019-11-18 11:17:36');

-- 874932de-cea0-11e7-a9da-c85b76d4d416 申诉列表

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('aeae401f-09eb-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '874932de-cea0-11e7-a9da-c85b76d4d416', '0', '1', '2019-11-18 06:06:56', '1', '2019-11-18 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('0c0760b3-09ec-11ea-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '874932de-cea0-11e7-a9da-c85b76d4d416', '0', '1', '2019-11-18 06:06:56', '1', '2019-11-18 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('20dc6aee-09ec-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '874932de-cea0-11e7-a9da-c85b76d4d416', '0', '1', '2019-11-18 06:06:56', '1', '2019-11-18 06:06:56', '1');

UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='74ce3c70-cea8-11e7-9ee8-c85b76d4d416';
UPDATE `page_list_fields` SET `allow_filter`='1' WHERE `id`='93c617ae-cea8-11e7-a9bc-c85b76d4d416';

-- efb25a90-a144-4d05-a696-02043f587f29 object_id
-- 电脑端电脑端申诉
-- 03cd8580-ce6c-11e7-a5f2-c85b76d4d416

-- d1bf4321-c42b-11e7-b28d-c85b76d4d416 销量category

INSERT INTO `menus` (`id`, `name`, `label`, `parent_id`, `type`, `screen_size`, `page_id`, `icon`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `template`) VALUES ('e11d3355-09ef-11ea-b9aa-0298a739dec0', 'tth_appeal_l', '销量申诉管理', 'd1bf4321-c42b-11e7-b28d-c85b76d4d416', 'menu', 'large', '03cd8580-ce6c-11e7-a5f2-c85b76d4d416', 'veev-appeal', '0', '1', '2019-11-18 10:33:29', '1', '2019-11-18 10:33:29', 'tth_appeal_l');

-- 53de9674-1da3-11e6-ac97-5cc5d4b57137  sfe经理 
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('319eaeb3-09f0-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'e11d3355-09ef-11ea-b9aa-0298a739dec0', '6', '0', '1', '2019-11-18 11:17:36', '1', '2019-11-18 11:17:36');

-- 删除进货数量字段
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='fca2d121-cf33-11e7-86d7-c85b76d4d416';
-- 删除市和省区
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='1549fb4f-0fd9-11e8-8901-c85b76d4d416';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='fbdcae9e-f459-11e7-8914-c85b76d4d416';

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b2709f39-09f0-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '975e77e1-cf30-11e7-a48c-c85b76d4d416', '0', '1', '2019-11-18 06:06:56', '1', '2019-11-18 06:06:56', '1');

-- 导出 申诉设置  b6845d6b-3651-4610-bd0e-371b43921ea0  fe895062-6daf-4760-aa08-5b775d865404
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('6d3a6274-0a78-11ea-b9aa-0298a739dec0', '975e77e1-cf30-11e7-a48c-c85b76d4d416', 'b6845d6b-3651-4610-bd0e-371b43921ea0', '1', '0', '1', '2019-11-19 00:00:00.000000', '1', '2019-11-19 00:00:00.000000', '0', '0', '0');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('8ddf35a5-0a78-11ea-b9aa-0298a739dec0', '975e77e1-cf30-11e7-a48c-c85b76d4d416', 'fe895062-6daf-4760-aa08-5b775d865404', '2', '0', '1', '2019-11-19 00:00:00.000000', '1', '2019-11-19 00:00:00.000000', '0', '0', '0');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('e04e8fd2-0a70-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'efb25a90-a144-4d05-a696-02043f587f29', '1', '0', '1', '0', '0', '1', '2019-11-19 00:00:00', '1', '2019-11-19 00:00:00', '0', '1', '1', '1');

-- quantity_tth_appeal_l  ff7bf4c0-d344-11e7-b07d-c85b76d4d416

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('0e625572-0a72-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '4bd00eec-3d9e-4b01-8eed-f4f1ecdb147a', 'ff7bf4c0-d344-11e7-b07d-c85b76d4d416', '0', '1', '2019-11-19 10:01:59', '1', '2019-11-19 10:01:59', NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('47eb9cbc-0a72-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '32344e53-9ba1-4e9a-b415-fb3230d2f2e5', 'ff7bf4c0-d344-11e7-b07d-c85b76d4d416', '0', '1', '2019-11-19 10:01:59', '1', '2019-11-19 10:01:59', NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_enter_mini_layout`) VALUES ('4ca0fa9f-0a72-11ea-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '6258cb7e-0f9a-4b4e-ad88-8fb876b589c2', '011ef75a-ec89-4bad-aa8f-4278d7257acc', 'ff7bf4c0-d344-11e7-b07d-c85b76d4d416', '0', '1', '2019-11-19 10:01:59', '1', '2019-11-19 10:01:59', NULL);
-- 删除进货量
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='17429361-d346-11e7-b132-c85b76d4d416';

