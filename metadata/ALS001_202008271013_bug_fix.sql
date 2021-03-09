-- 岗位
UPDATE `page_layout_fields` SET `order` = '11' WHERE (`id` = '50b83a54-a3f9-11e7-8e76-186590dcd3c9');
UPDATE `page_layout_fields` SET `order` = '12' WHERE (`id` = '50b838ba-a3f9-11e7-a84a-186590dcd3c9');
UPDATE `page_layout_fields` SET `order` = '13' WHERE (`id` = '50b83bee-a3f9-11e7-b793-186590dcd3c9');
UPDATE `page_layout_fields` SET `order` = '14' WHERE (`id` = '50b83d87-a3f9-11e7-9ca0-186590dcd3c9');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('50b83717-a3f9-11e7-aeba-186590dc1525', '50b82c45-a3f9-11e7-bbfb-186590dcd3c9', 'field', '9fa5bc3e-683a-11e7-9bf7-34f39ab71988', '所在大区', '8', '6', '0', '0', 'both', '0', '1', '2017-12-28 11:20:39', '1', '2020-07-07 01:55:42', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('50b83717-a3f9-11e7-aeba-186590dc1526', '50b82c45-a3f9-11e7-bbfb-186590dcd3c9', 'field', '9fa5bc40-683a-11e7-8c2c-34f39ab71988', '所在地区', '9', '6', '0', '0', 'both', '0', '1', '2017-12-28 11:20:39', '1', '2020-07-07 01:55:42', '0', '0');

UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'fe09be61-473b-4532-83a4-6387925025a9');

UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"product.veeva_code\", \"type\": \"textr\"}}' WHERE (`id` = '6df30784-6bd9-473d-8d22-b8fe20896cef');
UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"professional.hospital.external_id\", \"type\": \"text\"}}' WHERE (`id` = '88fcbb0f-3e38-454b-b683-518dd2dfe54d');
UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"professional.veeva_code\", \"type\": \"text\"}}' WHERE (`id` = 'a44dd9f2-98de-441e-822d-1a8875f41517');
UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"product.product_code\", \"type\": \"text\"}}' WHERE (`id` = '6df30784-6bd9-473d-8d22-b8fe20896cef');
UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"professional.external_id\", \"type\": \"text\"}}' WHERE (`id` = 'a44dd9f2-98de-441e-822d-1a8875f41517');
UPDATE `object_fields` SET `configurations` = '{\"refer_field\": {\"path\": \"record.external_id\", \"type\": \"text\"}}' WHERE (`id` = '56990664-bec7-447b-8e23-b73aa93d64c0');

UPDATE `page_list_fields` SET `allow_filter` = '0', `allow_sort` = '0' WHERE (`id` = 'c4144bf7-5795-4ff8-86e7-2a8dc9bf2f55');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '627de354-d527-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '47331a37-d535-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `allow_sort` = '0' WHERE (`id` = '47331a37-d535-11e9-b9aa-0298a739dec0');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'e9c38c6c-e14f-4d94-ba9f-fb5bde812274');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'e9c38c6c-e14f-4d94-ba9f-fb5ba1c42274');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'fda57326-0773-46a3-b21b-69f71c96ffff');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'fda57326-0773-46a3-b21b-69f7de84ffff');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = 'debc8ff0-8cb3-48c1-8dbe-d341568ac218');
UPDATE `page_list_fields` SET `allow_sort` = '0' WHERE (`id` = 'debc8ff0-8cb3-48c1-8dbe-d341568ac218');

INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('9b508408-d8d2-4fa4-8437-c32c517b1624', '48cf8f1e-75a3-vwfv-b0d3-5cc5d4b571d2', '8e47c229-0aed-4d20-a345-c910ed066db0', '1', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '0', '0', '0');
UPDATE `page_list_actions` SET `page_list_id` = '48cf8f1e-75a3-1808-b0d3-5cc5d4b571d2' WHERE (`id` = '9b508408-d8d2-4fa4-8437-c32c517b1624');

UPDATE `page_layout_fields` SET `display_mode` = 'view' WHERE (`id` = '50b81541-a3f9-11e7-a60e-186590dcd3c9');

UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4d30axm');
UPDATE `page_list_fields` SET `allow_filter` = '0' WHERE (`id` = '777a5861-7665-11e6-bd57-5cc5d4d30axv');

UPDATE `import_templates` SET `instructions` = '导入说明###1.请按所示列提供版本（年月）、岗位编码、岗位名称、员工账号、员工名称、岗位级别、上级岗位编码、主岗位标识、所在大区、所在地区、操作###2.操作：新增【I】、更新【U】、删除【D】，请在导入文件中输入I或U或D' WHERE (`id` = '196a88a5-2248-4dcb-af84-a34f2c13db4b');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '37');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '38');
UPDATE `customer_map_column` SET `deleted` = '1' WHERE (`id` = '41');

UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '0017ac43-4567-41eb-99e2-ec227db42bf4');
UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '0017ac43-3456-41eb-99e2-ec227db42bf4');
UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '0017ac43-7890-41eb-99e2-ec227db42bf4');
UPDATE `page_list_fields` SET `is_default` = '0' WHERE (`id` = '0017ac43-7832-41eb-99e2-ec227db42bf4');

-- fix bug No.264
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = '3bf1c2b0-f8ce-11e6-a06d-68f72882c9d5');
UPDATE `object_fields` SET `regexp_validation_msg` = '邮箱格式有误！', `regexp_validation` = '^[a-z0-9]+([._\\\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$' WHERE (`id` = '3b40f8a4-95fc-4d63-8856-044810d1d08d');
UPDATE `object_fields` SET `regexp_validation_msg` = '请提供正确的手机号码', `regexp_validation` = '^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|191|(147))\\d{8}$' WHERE (`id` = 'ff738e9e-4404-11e6-a10e-5cc5d4d378cb');
-- 修改用户邮箱为email
UPDATE `page_list_fields` SET `object_field_id` = '3b40f8a4-95fc-4d63-8856-044810d1d08d' WHERE (`id` = 'baff2040-0254-11e7-80wb-34f39ab71988');
UPDATE `page_layout_fields` SET `object_field_id` = '3b40f8a4-95fc-4d63-8856-044810d1d08d' WHERE (`id` = '3bf1c2b0-f8ce-11e6-a06d-68f72882c9d2');
