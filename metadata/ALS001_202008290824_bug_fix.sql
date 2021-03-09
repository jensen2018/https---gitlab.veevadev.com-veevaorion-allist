UPDATE `object_validations` SET `trigger_code` = 'import re\n\nif instance.record_type.name in (\'add_new_account\', \'add_position_account\', \'edit_position_account\'):\n    prefessional_phone_error = create_validation_trigger_rule_errors(u\'手机号码格式错误\')\n    if instance.mobile is not None and instance.mobile != u\'\':\n        ret = re.match(r\"^1[35678]\\d{9}$\", instance.mobile)\n        if not ret:\n            raise prefessional_phone_error' WHERE (`id` = '20f01160-b66a-11e8-8758-020652a9390e');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746dad63-8572-4f92-b2b2-122795b72319', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'b4e49292-7492-4789-816a-1e5c0cd19829', '0', '1', '2020-06-09 09:35:01', '1', '2020-06-09 09:35:01');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('746dad63-8572-4f92-b2b2-122795b72320', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'b4e49292-7492-4789-816a-1e5c0cd19829', '0', '1', '2020-06-09 09:35:01', '1', '2020-06-09 09:35:01');

-- 电脑端菜单顺序调整
UPDATE `menus_assignments` SET `order` = '0' WHERE (`id` = '2d0012ea-5358-422d-b6fa-78f5a460daec');
UPDATE `menus_assignments` SET `order` = '0' WHERE (`id` = 'e34fc680-f0d5-4215-b214-84e3931eeffb');
UPDATE `menus_assignments` SET `order` = '20' WHERE (`id` = 'a98ef2e1-129e-11e7-8c39-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '20' WHERE (`id` = 'cb9b5c52-874d-44ce-a461-2bb5ddeefe6f');
UPDATE `menus_assignments` SET `order` = '40' WHERE (`id` = '2693f08c-097e-46ea-818a-b32a9257c82b');
UPDATE `menus_assignments` SET `order` = '60' WHERE (`id` = '940cf5e5-587b-459a-8c51-4a3a97f8dfe1');
UPDATE `menus_assignments` SET `order` = '60' WHERE (`id` = 'd802369e-3d7a-4da2-94be-2719a5dcf9a4');
UPDATE `menus_assignments` SET `order` = '60' WHERE (`id` = 'ea46d237-c83f-4c9d-84b8-6dc2651a6e05');
UPDATE `menus_assignments` SET `order` = '100' WHERE (`id` = '6075af40-4de9-4e2c-b821-2518ee66c92b');
UPDATE `menus_assignments` SET `order` = '100' WHERE (`id` = '7305329d-a880-40bf-b344-99871170d71a');
UPDATE `menus_assignments` SET `order` = '100' WHERE (`id` = 'aa26c60f-129e-11e7-bd70-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '46cfefc3-7d9a-4547-941b-7079a0a02932');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '6535d0b0-dc66-40fb-8aa8-23c21f652b5f');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = 'a4f2dda2-7e10-4219-a7c7-339465490d99');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = 'bd55b41e-129f-11e7-b362-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = '58084a34-81c2-4909-a5b1-b429430ece11');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = '8b866a49-f55f-44ca-9402-625e5435d7c1');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = 'a5050c3d-534e-4738-91f6-3c84f496d77a');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = 'bd2ea421-129f-11e7-b258-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = 'a5988982-797a-4d9f-b996-753cb1efc846');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = '8e63ec43-922f-4efe-b196-ea9727fcc758');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = '6c504cdc-0f36-45c0-8a69-0db7c17b5076');
UPDATE `menus_assignments` SET `order` = '5' WHERE (`id` = 'aaa22bb6-df82-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `order` = '5' WHERE (`id` = '2ec3b0ce-f729-4f18-8086-5e7a778c950e');
UPDATE `menus_assignments` SET `order` = '5' WHERE (`id` = '479d03f9-d3ae-4dad-bb8d-eebd643cd48d');
UPDATE `menus_assignments` SET `order` = '6' WHERE (`id` = 'fc006ec0-0f95-11e7-92b4-5cc5d4d3uhsm');
UPDATE `menus_assignments` SET `order` = '6' WHERE (`id` = 'dcfc2aed-79ec-4dc6-afdd-a90011006d87');
UPDATE `menus_assignments` SET `order` = '6' WHERE (`id` = '6350d92d-2ecc-4010-aad9-cf1ba44fb82d');
UPDATE `menus_assignments` SET `order` = '6' WHERE (`id` = '539be1b4-2425-4937-a437-89a8b09883ef');
UPDATE `menus_assignments` SET `order` = '7' WHERE (`id` = '2ffab567-c18c-4d4d-a8e4-46f3639a81f9');
UPDATE `menus_assignments` SET `order` = '7' WHERE (`id` = '745d648b-e633-4fc6-a96f-fea3ab7963c8');
UPDATE `menus_assignments` SET `order` = '7' WHERE (`id` = 'fc006ec0-0f95-11e7-92ez-5cc5d4d3uhab');
UPDATE `menus_assignments` SET `order` = '7' WHERE (`id` = 'c38a49f4-69a0-4f97-b335-34b6dbb81922');
UPDATE `menus_assignments` SET `order` = '8' WHERE (`id` = 'fc006ec0-b2f0-11e7-92ez-5cc5d4d3uhab');
UPDATE `menus_assignments` SET `order` = '8' WHERE (`id` = 'cf94d695-1023-4977-a3a2-491fcca4de2e');
UPDATE `menus_assignments` SET `order` = '8' WHERE (`id` = '25ce11fa-f856-444d-8842-b030259a970d');
UPDATE `menus_assignments` SET `order` = '8' WHERE (`id` = '20fa07c9-6d50-4abd-a2d8-828fdba07d98');
UPDATE `menus_assignments` SET `order` = '9' WHERE (`id` = '229c3b43-5408-4806-b9be-a20dbededa09');
UPDATE `menus_assignments` SET `order` = '9' WHERE (`id` = '5cb9655a-f3f1-4d45-a808-2abf84e5f008');
UPDATE `menus_assignments` SET `order` = '9' WHERE (`id` = '5cb7f48d-80f5-4bee-b3f5-2ffb6ba45e35');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '9c8dd082-5aaa-4e44-a0bb-535fdac74d36');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = 'd5635b15-9dab-433e-8c2f-2ae69bacecfb');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '3765cf90-ab72-463f-9cd8-05df43b62ad1');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '6c261b1e-c512-11e7-919d-186590dcd3c9');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = 'a60f3c98-2307-4b98-900f-7991bdf23647');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = 'a8096c0a-def2-41e6-9f3d-cb3529b4e01f');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = 'bd74cc62-4116-4ab6-9c3e-6a53a72db078');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = '85c429df-ad9f-46a0-a3f2-558fd1b03ce3');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = '0eff76e8-04bf-4068-97e7-a257b1d1df99');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = '1cf051db-764b-4709-bc06-cd42641e26b5');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = '14f0aab7-4f97-471b-a766-50fef1be30b6');
UPDATE `menus_assignments` SET `order` = '2' WHERE (`id` = 'f1bf5f29-5eea-4759-b88d-532041674275');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = '85b23665-9bf9-45fa-aa74-8177d6563d3f');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = 'a9e1a3f0-7225-41d0-b624-8b1046faf17f');
UPDATE `menus_assignments` SET `order` = '3' WHERE (`id` = 'e5a1e702-9e1c-4a66-97df-3df0828951c7');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '101477c5-efdd-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '10c1977e-820a-4966-b954-41365627bc4c');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '3d7960d0-e8d6-11ea-bc49-0215c63fce1a');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '4ee3f8f0-12c5-11e7-94cd-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '86623c1b-e8d5-11ea-bc49-0215c63fce1a');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '9c171283-a330-4c00-8c01-fd91770ed0f3');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = '9d61a001-f610-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `order` = '4' WHERE (`id` = 'ebc80d33-e773-4bef-92f9-88d22667e4be');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '92b2a2a6-1305-4ec4-a2ba-0e26835872b7');
UPDATE `menus_assignments` SET `order` = '1' WHERE (`id` = '9f3af178-38c7-452b-944d-d40ab505d89b');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '04a1ee3d-d2ed-11e9-b9aa-0298a739da58');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '04a1ee3d-d2ed-11e9-b9aa-0298a739da59');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '3d796a4b-e8d6-11ea-bc49-0215c63fce1a');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '10ddbbf2-a811-46e3-82b8-291150360f84');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '7976ea25-4de5-49cc-adb2-94bec6cbdb36');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '8662390a-e8d5-11ea-bc49-0215c63fce1a');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = '97b9ab33-f610-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = 'a9c7b61e-129e-11e7-8651-5cc5d4d378cb');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = 'd262d1f1-d2ec-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = 'c9292fcf-9452-4e62-89f1-4025e9a1f0d0');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = 'ec6c92b2-c702-4e07-9784-ff23f33c6aa6');
UPDATE `menus_assignments` SET `order` = '80' WHERE (`id` = 'f4ced316-efdc-11e9-b9aa-0298a739dec0');

-- 科室微信端只显示名称
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1b');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1c');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1d');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fce1e');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fc234');
UPDATE `page_list_fields` SET `deleted` = '1' WHERE (`id` = '746d3333-dc77-11ea-bc49-0215c63fc445');

UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'd7fdf61f-e21d-11ea-bc49-0215c63fce1b');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'd7fdf61f-e21d-11ea-bc49-0215c63fce1a');

UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'c8ad8e10-f95e-11e9-b9aa-0298a739dec0');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'e2e916a8-f95e-11e9-b9aa-0298a739dec0');

UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '21b646d9-92e6-488c-aefe-2c68f6a21de4');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '88bb48b1-2f96-44b7-a242-78868a5a9434');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'f642345c-b400-4fdf-a71e-fbabdae3a50b');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '4c57b6ad-978f-45f1-8e59-c61527c19a55');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'efdf261f-752c-418e-a181-303d6dae2196');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'd368c940-c3c2-4109-b8de-bfb10301df3e');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '98c01367-cbc2-418e-8047-f7243f605e1c');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'f43507f5-e108-4b59-b6b2-9e2e3282288b');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '6de409a8-3e3c-4e61-b1d8-8a39e9ab0597');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'f642345c-de81-4fdf-a71e-fbabdae3a50b');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '21b646d9-de91-488c-aefe-2c68f6a21de4');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '88bb48b1-de92-44b7-a242-78868a5a9434');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '4c57b6ad-de81-45f1-8e59-c61527c19a55');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'efdf261f-de91-418e-a181-303d6dae2196');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'd368c940-de92-4109-b8de-bfb10301df3e');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '98c01367-de81-418e-8047-f7243f605e1c');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = 'f43507f5-de92-4b59-b6b2-9e2e3282288b');
UPDATE `page_layout_fields` SET `deleted` = '1' WHERE (`id` = '6de409a8-de93-4e61-b1d8-8a39e9ab0597');

UPDATE `page_list_fields` SET `is_default` = '1' WHERE (`id` = '733d014f-bb61-11e6-943c-5cc5d4d378cb');

-- 通过pre_check检查医生是否已经关联岗位
UPDATE `object_actions` SET `is_need_pre_check` = '1' WHERE (`id` = 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596');
UPDATE `object_actions` SET `pre_check_label` = '继续提交' WHERE (`id` = 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596');
UPDATE `page_layout_actions` SET `is_need_pre_check` = '1', `pre_check_label` = '继续提交' WHERE (`id` = 'a8c0f2f0-def5-11e6-def5-5cc5d4d37538');
UPDATE `object_actions` SET `is_need_pre_check` = '0' WHERE (`id` = 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596');

-- 客户变更menu隐藏
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '00c8823f-45ea-4ebe-be52-e70521022121');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '00c8823f-45ea-4ebe-be52-e7052102d5c8');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '1b22f914-1ba3-4973-8837-8716fd1c7c4f');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '5d8f9d77-7556-4ac9-a8ac-e29b17382aaf');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '6066f567-d53e-4fba-a42a-39ba5f1e6096');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '81628c00-0fa1-11e7-99d8-5cc5d4d33qan');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '81628c00-0fa1-11e7-99d8-5cc5d4d378cb');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '8661f67d-e8d5-11ea-bc49-0215c63fce1a');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '86b5f13e-40a6-421d-b5a6-a8654baaa0dd');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = '9702d2d3-bddf-4532-ac34-02a1d0d5fafc');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'c559eaae-c05e-4096-935e-138b866f3d95');
UPDATE `menus_assignments` SET `deleted` = '1' WHERE (`id` = 'e98bbcde-e8d6-11ea-bc49-0215c63fce1a');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d41356', 'c589cf68-e2d5-4f75-b23f-d2788e565abm', 'field', 'a3e7e7be-d72b-42a1-b62c-565e0ee2db95', '产品级别', '11', '6', '0', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40', '0');
UPDATE `page_layout_fields` SET `object_field_id` = 'd170edca-1367-47a1-aca0-f8dc917fbf13', `label` = '医生分级' WHERE (`id` = '492c57b1-653e-11e7-982c-c85b76d41356');
UPDATE `page_layout_fields` SET `is_mandatory` = '1' WHERE (`id` = '492c57b1-653e-11e7-982c-c85b76d41356');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf36', 'afd3d980-def1-11e6-ae90-5cc5d4d3utxm', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf37', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdcn', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf38', 'afd3d980-def1-11e6-3qzn-5cc5d4d3utxm', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf39', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdaz', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf40', 'afd3d980-def1-11e6-ae90-5cc5d4d3rool', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf41', 'afd3d980-def1-11e6-ae90-5cc5d4d3rdlz', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf42', 'afd3d980-def1-11e6-ae12-5cc5d4d3rool', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf43', '69a4f3cf-62ff-11e7-874c-c85b76d43wln', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf44', '69ce78d1-dc8c-bfdt-4axn-ecsv18c67yxm', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf45', '69ce78d1-dc8c-bfdt-bffa-ecsv18c67yxm', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf46', '69ce78d1-1qkl-bfdt-4axn-ecsv18c67yxm', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf47', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65scb', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf48', '69ce78d1-dc8c-bfdt-b969-ecsv18c65izn', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf49', '69ce78d1-dc8c-bfdt-bffa-ecsv18c65izn', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('492c57b1-653e-11e7-982c-c85b76d4bf50', '69ce78d1-dc7f-bfdt-dc7f-ecsv18c65izn', 'field', 'd170edca-1367-47a1-aca0-f8dc917fbf13', '医生分级', '15', '6', '1', '0', 'both', '0', '1', '2019-08-19 20:22:40', '1', '2020-08-30 06:09:33', '0');

-- 医生讲者级别
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('3f9e44dc-dbbc-11ea-bc49-0215c63f1439', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'cs_speaker_level', '讲者级别', '讲者级别', 'custom', 'advanced', 'all', 'both', '0', '1', '2020-08-11 10:21:29', '1', '2020-08-11 10:21:29', '0', '0', '0', '1', '1');
UPDATE `page_layout_fields` SET `object_field_id` = '3f9e44dc-dbbc-11ea-bc49-0215c63f1439' WHERE (`id` = '95ee4d66-b871-4672-a1ab-e5bb010d2c59');
UPDATE `page_list_fields` SET `object_field_id` = '3f9e44dc-dbbc-11ea-bc49-0215c63f1439' WHERE (`id` = '395ef6de-7665-11e6-b398-5cc5d4dac18');

-- 医生申请修改按钮
UPDATE `object_actions` SET `is_need_update` = '0', `owner_only` = '1' WHERE (`id` = '7c5525d6-004c-4b3f-a61f-b4f406a2b230');
UPDATE `object_actions` SET `owner_only` = '0' WHERE (`id` = '7c5525d6-004c-4b3f-a61f-b4f406a2b230');
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`) VALUES ('1c40ddde-763b-11e6-91dc-5cc5d4d378cc', '1dd8259e-3e96-11e6-9c7d-5cc5d4d378cb', 'professional_s_sale', '医生详情', 'custom', 'small', '0', '1', '2018-08-02 10:33:29', '1', '2020-08-01 14:12:01', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eed29e4f-765f-11e6-ad94-1554d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '24d70ecf-12d4-11e7-bdd5-e4b318c6b596', '医生编码', '1', '12', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-15 08:15:03', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('ged29e4f-765f-11e6-ad94-1554d4d378cd', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '5a216d6e-20ad-11e6-a296-5cc5d4d378cb', '医生姓名', '2', '12', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-15 08:15:03', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('feffa1c0-765f-11e6-ba05-1554d4d31402', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', 'e1f66193-8912-44d4-9fa9-80dba6d138ab', '医院编码', '3', '12', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:01:25', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('feffa1c0-765f-11e6-ba05-1554d4d378cc', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', 'bb8c4b1e-20b2-11e6-b1b5-5cc5d4d378cb', '医院名称', '4', '12', '1', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:01:25', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('ef0bfdcf-765f-11e6-adf8-1554d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', 'c323dbc0-1cfc-452e-a506-491fc29e3714', '科室', '5', '12', '1', '0', 'both', '0', '1', '2018-06-07 06:13:40', '1', '2020-08-07 06:00:13', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eee53bf0-765f-11e6-9df2-1554d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', 'd4873d51-20ae-11e6-8493-5cc5d4d378cb', '性别', '6', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:00:13', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('eee53bf0-765f-11e6-9df2-1554d4d31404', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '8355952e-74dc-11e6-bfe1-5cc5d4d378cb', '带组医生', '7', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:00:13', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('if268ab0-765f-11e6-8dbe-1554d4d378cg', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '84140691-e071-11e6-aaa7-5cc5d4d378cb', '行政职务', '8', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:04:20', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('ef268ab0-765f-11e6-8dbe-1554d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '43d5ceb0-20af-11e6-b453-5cc5d4d378cb', '职称', '9', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:04:20', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`) VALUES ('hf46bcde-765f-11e6-bc8d-1554d4d378cf', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'section', '联系方式', '10', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-07-15 08:15:03', '0', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_highlight`) VALUES ('ef6abfa1-765f-11e6-8d1d-1554d4d378cb', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '6db2f870-20af-11e6-a512-5cc5d4d378cb', '手机号', '11', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2020-08-07 06:00:13', '0', '0', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('50830183-5c7b-4279-af67-27f6ca90c975', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '1b7a830f-5647-11e7-8582-c85b76d4d416', '医生图标', '12', '6', '1', '1', 'both', '0', '1', '2019-04-03 09:04:05', '1', '2020-07-15 08:15:03', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('2083081f-36b0-46f8-8886-d432931f3478', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '5a216d6e-20ad-11e6-a296-5cc5d4d378cb', '医生姓名', '13', '6', '1', '1', 'both', '0', '1', '2019-04-03 09:04:05', '1', '2020-07-15 08:15:03', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('e0830abd-b70f-46ff-b3e9-8a9ac48a5aac', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '43d5ceb0-20af-11e6-b453-5cc5d4d378cb', '职称', '14', '6', '1', '1', 'both', '0', '1', '2019-04-03 09:04:05', '1', '2020-07-15 08:15:03', '0', '1');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('508302a3-2407-47f4-b406-976250d5f899', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', 'field', '6db2f870-20af-11e6-a512-5cc5d4d378cb', '手机号码', '15', '6', '1', '1', 'both', '0', '1', '2019-04-03 09:04:05', '1', '2020-07-15 08:15:03', '0', '1');
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES ('7c9185b0-0bb1-4360-a946-7fe5499c1555', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', '3', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '8277abf0-99b5-11e6-9301-5cc5d4d378cb', '0');
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES ('d47ed9ad-cc3f-4680-b2c6-7a69b8c11556', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', '1', '0', '1', '2020-08-01 14:10:15.643632', '1', '2020-08-01 14:10:15.643672', '435ded6e-9dbc-40bb-b7ef-8170fc55e3ae', '0');
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES ('fd9fb20b-674e-4c69-a462-b45015341557', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', '2', '0', '1', '2020-08-01 14:11:09.750841', '1', '2020-08-01 14:11:09.750882', '144ccd80-afc3-12ec-825d-5cc5d4d388ca', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('c43d804f-7666-11e6-9d55-5cc5d4d31557', '1c40ddde-763b-11e6-91dc-5cc5d4d378cc', '7c5525d6-004c-4b3f-a61f-b4f406a2b230', 'view', '4', '1', '1', '2017-01-01 00:00:00', '1', '2020-08-30 07:50:38', '0', '0');
UPDATE `page_layout_assignments` SET `page_layout_id` = '1c40ddde-763b-11e6-91dc-5cc5d4d378cc' WHERE (`id` = '5be04543-36a2-0440-85d8-5cc6340308f5');
UPDATE `page_layout_assignments` SET `page_layout_id` = '1c40ddde-763b-11e6-91dc-5cc5d4d378cc' WHERE (`id` = '5be04543-7ea0-0440-85d8-5cc6340308f5');
UPDATE `page_layout_actions` SET `deleted` = '0' WHERE (`id` = 'c43d804f-7666-11e6-9d55-5cc5d4d31557');

-- picklist调整
DELETE FROM `picklist_values` WHERE (`id` = '4422b2e5-4564-4d06-9c93-58b7553758bd');
UPDATE `picklist_values` SET `order` = '1' WHERE (`id` = '7c35a8c0-e06c-11e6-8068-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '2' WHERE (`id` = '7c4909b0-e06c-11e6-b725-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '主任', `order` = '4' WHERE (`id` = '7c687891-e06c-11e6-a02a-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '副主任', `order` = '5' WHERE (`id` = '7c765b40-e06c-11e6-87e5-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '科长', `order` = '7' WHERE (`id` = '7cebb24f-e06c-11e6-adf5-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '副科长', `order` = '8' WHERE (`id` = '7cfd8ca1-e06c-11e6-ac9c-5cc5d4d378cb');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('7c687891-e06c-11e6-a02a-5cc5d4d31610', '7e71a0f0-e06a-11e6-be9f-5cc5d4d378cb', 'assistant_to_president', '院长助理', '3', '0', '1', '2020-08-30 08:10:47', '1', '2017-01-22 06:32:03', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('7c765b40-e06c-11e6-87e5-5cc5d4d31612', '7e71a0f0-e06a-11e6-be9f-5cc5d4d378cb', 'head_of_pharmacy', '药剂科主任', '6', '0', '1', '2020-08-30 08:10:47', '1', '2017-01-22 06:32:03', 'custom');
UPDATE `picklist_values` SET `order` = '1' WHERE (`id` = '79255b80-e06c-11e6-ad6a-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '4' WHERE (`id` = '78e2ad30-e06c-11e6-a113-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '副主任', `order` = '8' WHERE (`id` = '7bee8da1-e06c-11e6-9b5a-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '6' WHERE (`id` = '78d4a370-e06c-11e6-9dfe-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '5' WHERE (`id` = '7881ef8f-e06c-11e6-a7f6-5cc5d4d378cb');
UPDATE `picklist_values` SET `label` = '药剂师', `order` = '12' WHERE (`id` = '796c2880-e06c-11e6-bab9-5cc5d4d378cb');
UPDATE `picklist_values` SET `order` = '2' WHERE (`id` = '78f746a1-e06c-11e6-b5ed-5cc5d4d378cb');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('78f746a1-e06c-11e6-b5ed-5cc5d4d31616', '7e660830-e06a-11e6-a206-5cc5d4d378cb', 'chief_resident', '住院总医师', '3', '0', '1', '2020-08-30 08:16:06', '1', '2017-01-22 06:31:57', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('78d4a370-e06c-11e6-9dfe-5cc5d4d31617', '7e660830-e06a-11e6-a206-5cc5d4d378cb', 'group_leader', '组长', '7', '0', '1', '2020-08-30 08:16:06', '1', '2017-01-22 06:31:57', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('78d4a370-e06c-11e6-9dfe-5cc5d4d31618', '7e660830-e06a-11e6-a206-5cc5d4d378cb', 'section_director', '科主任', '9', '0', '1', '2020-08-30 08:16:06', '1', '2017-01-22 06:31:57', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('78d4a370-e06c-11e6-9dfe-5cc5d4d31619', '7e660830-e06a-11e6-a206-5cc5d4d378cb', 'physician', '医师', '10', '0', '1', '2020-08-30 08:16:06', '1', '2017-01-22 06:31:57', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('78d4a370-e06c-11e6-9dfe-5cc5d4d31620', '7e660830-e06a-11e6-a206-5cc5d4d378cb', 'dean', '院长', '11', '0', '1', '2020-08-30 08:16:06', '1', '2017-01-22 06:31:57', 'custom');


