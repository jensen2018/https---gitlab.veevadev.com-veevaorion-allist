-- 讲者
-- 53de6f5e-1da3-11e6-b011-5cc5d4b57134
-- 只保留医生讲者相关功能，去掉新增讲者、非医生讲者修改、失效非医生讲者修改
update role_to_object_record_types set deleted = 1 where id in (
'25b750e8-db88-11e9-b9aa-0298a739dec0',
'ba119846-db88-11e9-b9aa-0298a739dec0',
'da4c7981-db88-11e9-b9aa-0298a739dec0'
);


-- 代表医生转讲者页面
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`) VALUES
('fd0820de-dad8-11ea-bc49-0215c63fce1a', '184f84eb-8532-498c-8d16-b133e2ec08e6', NULL, 'cs_hospital_code', '医院编码', '医院编码', 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, '{\"refer_field\": {\"path\": \"professional.hospital.veeva_code\", \"type\": \"text\"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL);

-- 讲者DCR显示目标医生级别
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`) VALUES
('3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '184f84eb-8532-498c-8d16-b133e2ec08e6', NULL, 'cs_doctor_level_speaker_dcr', '目标医生级别', '目标医生级别', 'custom', 'advanced', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL);

-- 讲者DCR
update object_database_columns set used = 1 where id = '926bb3b7-fe09-48fa-a489-96991bdac99d';
update object_fields set `name` = 'cs_learn_duty', label = '学会任职(学会和职务)', description = '学会任职(学会和职务)' where id = '52c0e0a6-ee3c-4a07-919b-52dfa632939e';
update object_database_columns set used = 1 where id = '3667d37a-a287-438b-9399-0a2789ef0c75';
update object_fields set `name` = 'cs_publications', label = '发表文献', description = '发表文献' where id = '62f8c74d-02ed-4001-aac6-ab87b2a8e487';

update page_layout_fields set deleted = 1 where id = '9a0d0838-a3bf-4193-bb28-1e399f916d02';
update page_layout_fields set deleted = 1 where id = '47202caa-2936-9349-4567-34a13dfc5e47';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '8a85b92d-e9c9-5948-1234-503aab39feb4';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '557acaba-9bec-a647-1234-03c4bf4534d3';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('a0487d04-dad9-11ea-bc49-0215c63fce1a', '3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c649b567-dd10-11ea-bc49-0215c63fce1a', '3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('24482f4d-dc6e-11ea-bc49-0215c63fce1a', '3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7 where id = 'aafe34da-a07f-d542-1234-500751048884';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c1447734-dc6e-11ea-bc49-0215c63fce1a', '3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c144788a-dc6e-11ea-bc49-0215c63fce1a', '3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '092c8cf6-93af-fe4b-1234-d2c07bf1e280';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '2dfaee84-63d9-9a4c-1234-b549a3617ae0';
update page_layout_fields set `order` = 12 where id = '8561c6ee-8291-794b-1234-5473e5e891e3';
update page_layout_fields set `order` = 13, label = '身份证' where id = 'c3141259-79bf-4b86-bdc9-e350cfe5d445';
update page_layout_fields set `order` = 14, label = '银行账号' where id = 'd805f55a-c688-470d-a654-543f050c8265';
update page_layout_fields set `order` = 15 where id = '757a98f2-fca9-448c-aaca-c6cd17182ec5';

update page_layout_fields set `order` = 16 where id = '9b38b758-bd09-4087-a456-b881279a04cc';
update page_layout_fields set `order` = 17 where id = '33923d39-58cc-46dd-b16a-e83bfc6de13e';
update page_layout_fields set `order` = 18 where id = 'cda18974-9cd2-4c6e-8c17-119f45e9e3ae';
update page_layout_fields set `order` = 19 where id = '5cdf3031-413b-4a28-9957-ec9cc8d574fa';

update page_layout_fields set deleted = 1 where id = '87d5b781-ecc5-cf45-4321-42f4eb9d706d';
update page_layout_fields set deleted = 1 where id = '5d7c4675-b7a5-4596-a9a3-4946563e8616';
update page_layout_fields set `order` = 20 where id = 'e1479134-cbc0-ca44-1234-4c60213ab505';


-- 医生讲者审批中页面
update page_layout_fields set deleted = 1 where id = '461d6862-4f75-1f4a-8c73-f654e86bfb1f';
update page_layout_fields set deleted = 1 where id = '5af5ea5c-b5ca-7b4a-8bfc-d0ac7e6b8db3';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '75be47b0-4189-1e4c-9f44-4dc0d72d9cbe';
update page_layout_fields set deleted = 1 where id = 'cb44acef-01f7-b445-91c4-554f61f531e8';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = 'ba315e5f-03d4-0346-87ef-61afb3e9d8bf';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('66939903-dc74-11ea-bc49-0215c63fce1a', '4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('3d422313-dd11-11ea-bc49-0215c63fce1a', '4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('78d0aa14-dc74-11ea-bc49-0215c63fce1a', '4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7 where id = '9c9f14b1-eb05-0c44-814e-8ad3b6b1f092';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('952fcbcc-dc74-11ea-bc49-0215c63fce1a', '4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('952fce6d-dc74-11ea-bc49-0215c63fce1a', '4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '681bcfc7-81b2-4b4e-acac-0702c90f3351';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '6e24d24e-32c0-8b45-9366-462a83b34dcc';
update page_layout_fields set `order` = 12 where id = '05ffc8fb-853c-da48-ada3-05ba5b37d2b6';
update page_layout_fields set `order` = 13, label = '身份证' where id = '5bbec33f-d2c4-614d-9fba-2b6c8febebe9';
update page_layout_fields set `order` = 14, label = '银行账号' where id = 'dd8a94f1-6d9f-7d40-b002-312929b25708';
update page_layout_fields set `order` = 15, label = '开户行', object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '3e90c0be-262f-ea46-9869-b0b7a74aa6a1';
update page_layout_fields set `order` = 16 where id = 'f852b0a0-fbc7-834d-9230-a7aa9df11bca';
update page_layout_fields set `order` = 17 where id = '7e65989e-2caf-2842-921a-f580ed804edd';
update page_layout_fields set `order` = 18 where id = 'a10b9d41-ba0f-c541-9390-b98c6a3eb3b3';
update page_layout_fields set `order` = 19 where id = '38cc54d3-162b-2942-a07a-e1a0ef361ceb';

update page_layout_fields set deleted = 1 where id = '66ef6bc6-cadf-be45-a885-59625b50356a';
update page_layout_fields set deleted = 1 where id = 'fcbc462d-7254-354d-8418-2091a8479094';
update page_layout_fields set deleted = 1 where id = '257616c0-13a4-b645-81e4-f9e92b32d1a8';
update page_layout_fields set deleted = 1 where id = '781baa5f-e892-2d48-a201-fcf0829e8d72';
update page_layout_fields set deleted = 1 where id = '6890882d-4ca2-8c42-9a61-fd545e327422';
update page_layout_fields set deleted = 1 where id = 'dad1a105-b6f5-1f45-8539-05c70aa44869';
update page_layout_fields set deleted = 1 where id = '8f9550e3-6bb2-bb4f-bc51-fb5f378bc920';
update page_layout_fields set deleted = 1 where id = 'e7b5ef53-dae3-b543-94b1-cfd4a6a5d1fb';
update page_layout_fields set deleted = 1 where id = '30cc1337-4d43-d34a-a2b2-74a6f0f5e9c3';
update page_layout_fields set deleted = 1 where id = '701dd8cc-1870-094e-b2ae-9b584ed7d3b5';
update page_layout_fields set deleted = 1 where id = 'a42c6442-e00d-934c-8160-e293930a320a';
update page_layout_fields set `order` = 20 where id = 'd9093de9-1eb2-bc4e-b37e-f190a73085e7';


-- 医生讲者审批通过页面
-- 讲者DCR审批通过显示讲者编码 refer讲者
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`) VALUES
('4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '184f84eb-8532-498c-8d16-b133e2ec08e6', NULL, 'cs_speaker_veeva_code', '讲者编码', '讲者编码', 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, '{\"refer_field\": {\"path\": \"speaker.veeva_code\", \"type\": \"text\"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = '89218247-fe20-9044-a3e9-2f3d262af3d3';
update page_layout_fields set deleted = 1 where id = '4a06af9e-f59b-034a-9418-44acf8645d99';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '28313b6b-6251-624c-aa03-5c59dc1c1439';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a' where id = 'bbadc0a2-08f2-ed43-abf7-dbf8a3745108';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '02762fbe-28d9-384b-a787-e0730e32c42b';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c63c39a2-dc81-11ea-bc49-0215c63fce1a', 'def823dd-2766-284a-9610-b480d82c171c', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('556756ff-dd11-11ea-bc49-0215c63fce1a', 'def823dd-2766-284a-9610-b480d82c171c', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('85c96658-dc3e-11ea-bc49-0215c63fce1a', 'def823dd-2766-284a-9610-b480d82c171c', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7 where id = 'f5d5e57d-5f77-034f-98a1-da0ed4e13919';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('d2e2a917-dc81-11ea-bc49-0215c63fce1a', 'def823dd-2766-284a-9610-b480d82c171c', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('fc7e5cfd-dc81-11ea-bc49-0215c63fce1a', 'def823dd-2766-284a-9610-b480d82c171c', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '684fed21-0ff3-4347-91c8-967db8431aa5';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '745a239f-8936-ef4e-b356-47c7acb8b397';
update page_layout_fields set `order` = 12 where id = '0c7de1a5-1f84-3244-89ad-cc65f50a33c7';
update page_layout_fields set `order` = 13, label = '身份证' where id = 'fcf58791-9b50-6e4c-8430-5ff785317a28';
update page_layout_fields set `order` = 14, label = '银行账号' where id = '2520241a-b449-d348-9eab-c8ea18e4c4c8';
update page_layout_fields set `order` = 15, label = '开户行', object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '9d79031b-cdff-474f-8ffb-66bf325e19da';

update page_layout_fields set `order` = 16 where id = '9c56aa88-f511-324f-85b2-3e742eb9d57f';
update page_layout_fields set `order` = 17 where id = '6e7f0a77-6e3f-6446-945c-c629ec7f291d';
update page_layout_fields set `order` = 18 where id = '8329e3ed-96db-a840-b9e8-210d86b4acd6';
update page_layout_fields set `order` = 19 where id = 'a67390dd-912b-f042-a5d8-a4cab1f2ca61';

update page_layout_fields set deleted = 1 where id = 'db82af62-4816-d145-95cb-b3bab96dd6d0';
update page_layout_fields set deleted = 1 where id = 'e890a66f-f38f-8d4e-bf5c-17c258c3058a';
update page_layout_fields set deleted = 1 where id = '426adf61-4773-eb40-a4c2-896be5114608';
update page_layout_fields set deleted = 1 where id = '714c6e7f-be5c-3b48-8618-b291e9402519';
update page_layout_fields set deleted = 1 where id = '81654fac-9bdf-264d-b968-a49959ce7ce3';
update page_layout_fields set deleted = 1 where id = '6aa283c7-0add-1c4b-85aa-d79776195d17';
update page_layout_fields set deleted = 1 where id = '8ff1ddfe-a8b9-6b42-9a54-d139dc85c1d4';
update page_layout_fields set deleted = 1 where id = '8d5123ed-d11f-7146-9f60-1a5818840409';
update page_layout_fields set deleted = 1 where id = '9e282b47-a6dc-1748-b602-38f714a2c9fd';
update page_layout_fields set deleted = 1 where id = '1020781c-297d-e94a-8f22-0766c42d33aa';
update page_layout_fields set deleted = 1 where id = '0752eff2-ecc0-e040-94a8-b3bf214f5da1';
update page_layout_fields set `order` = 20 where id = 'e2149347-4869-2945-a6d9-bc402fd7e1a4';


-- 医生转讲者审批拒绝
update page_layout_fields set deleted = 1 where id = 'b113c13e-be57-d44c-821f-63f915d2e378';
update page_layout_fields set deleted = 1 where id = '29d5ae50-050f-9b4d-8406-1a9823fb3746';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '2bb673f0-698b-f94d-920e-2b9a81c48534';
update page_layout_fields set deleted = 1 where id = '755aabcd-f1c9-d84c-b141-c91198fabc24';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '91ea82ff-b1a9-aa49-949b-7bf587b90801';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cf5cdc4-ddf7-11ea-bc49-0215c63fce1a', '90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cf5d010-ddf7-11ea-bc49-0215c63fce1a', '90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cf5d0a6-ddf7-11ea-bc49-0215c63fce1a', '90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7,is_mandatory = 1 where id = '9d45fa0b-d306-8d49-b612-86f0d30690cc';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cf5d139-ddf7-11ea-bc49-0215c63fce1a', '90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cf5d1cc-ddf7-11ea-bc49-0215c63fce1a', '90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '78e77c55-bc23-4446-b9c6-66c1b27c16f9';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '94956ca2-2aae-6d41-a388-f21b1ec82045';
update page_layout_fields set `order` = 12 where id = 'bddaf111-abab-e241-ac01-a34a70a1788d';
update page_layout_fields set `order` = 13, label = '身份证' where id = '5319c423-9ea0-7742-a11b-9dec47267965';
update page_layout_fields set `order` = 14, label = '银行账号' where id = '65d237b9-3bd2-164d-bb46-9f525370ba76';
update page_layout_fields set `order` = 15, label = '开户行', is_mandatory = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '01da5bc0-9de6-b14e-a658-921e26b49e93';

update page_layout_fields set `order` = 16 where id = 'a471457c-2a9d-0c4d-8485-73ae0564f744';
update page_layout_fields set `order` = 17 where id = '1122e94e-2f42-0f4a-ade3-643bda7b9e57';
update page_layout_fields set `order` = 18 where id = 'b4cc4a0b-2912-b04e-9651-3b5c62078965';
update page_layout_fields set `order` = 19 where id = '6089b742-ae9c-854c-8f76-3beab77534ba';

update page_layout_fields set deleted = 1 where id = '4c79b968-874a-334f-a148-2b1b042b8c14';
update page_layout_fields set deleted = 1 where id = '707cc7e2-b080-6b4e-b6df-f4d9e77de9ae';
update page_layout_fields set deleted = 1 where id = 'c481138b-4db8-564d-9763-d7ad33c41760';
update page_layout_fields set deleted = 1 where id = '46637518-a0e7-8843-9ee2-969442a2250c';
update page_layout_fields set deleted = 1 where id = 'fc6ea8ec-6905-c748-af25-28de81c1bf44';
update page_layout_fields set deleted = 1 where id = '9112f0d3-4add-6341-aa03-fa4fa2d5f1cf';
update page_layout_fields set deleted = 1 where id = 'fcbd4b05-c6c5-f547-83f1-2c483db37284';
update page_layout_fields set deleted = 1 where id = '50123ab3-d71b-d742-9526-4817ca0cd55b';
update page_layout_fields set deleted = 1 where id = '4b8293e9-20cf-4b4c-b9bf-d4170405b568';
update page_layout_fields set deleted = 1 where id = '6f645ac8-bde1-0241-9f9e-d78a704fc2cb';
update page_layout_fields set deleted = 1 where id = 'dd71d433-b61b-664c-81a0-01c3da7a66ee';
update page_layout_fields set `order` = 20 where id = '4b60a8ec-47dc-7e41-a01d-7c972c32e91c';



-- 讲者附件
update attachment_groups set label = '发表文献' where id = '843d9394-b5cd-4cac-ae4a-0845dabf4566';
update attachment_groups set label = '学会职务证明(名片/公告等)' where id = 'd8464a54-2766-4d49-a7cd-1c89e4214276';
update attachment_groups set label = '职称证明', `name` = 'other__speaker' where id = 'f106efd4-5f4e-4d50-939e-69e5713dbc20';

UPDATE `object_tabs` SET `configurations`='{\"album\": true, \"group\": [{\"name\": \"identity__speaker\"},{\"name\": \"academic__speaker\"},{\"name\": \"other__speaker\"}], \"detail_comment\": true, \"help_text\": \"1. 支持文件格式： jpg,png,gif,docx,doc,xlsx,xls,xltx,xlt,csv,ppt,pptx,pps,ppsx,pdf,txt\\n2. 上传单个文件最大不能超过10M\", \"show_upload_time\": false, \"supported_file_extensions\": [\"bmp\", \"jpg\", \"jpeg\", \"png\", \"gif\", \"docx\", \"doc\", \"dotx\", \"dot\", \"xlsx\", \"xls\", \"xltx\", \"xlt\", \"csv\", \"ppt\", \"pptx\", \"pot\", \"potx\", \"pps\", \"ppsx\", \"pdf\", \"txt\"]}' WHERE (`id`='464e50f9-7ef0-4904-b962-15bb2d7e7a47');

-- 讲者DCR附件
update attachment_groups set label = '发表文献' where id = '843d9394-b5cd-4cac-ae4a-0845dabf3455';
update attachment_groups set label = '学会职务证明(名片/公告等)' where id = '843d9394-b5cd-4cac-ae4a-0845dabf7877';
update attachment_groups set label = '职称证明' where id = 'f106efd4-5f4e-4d50-939e-69e5713dbc40';


-- 医生讲者修改页面
update page_layout_fields set deleted = 1 where id = '4a1c7a5c-6503-2e42-8198-0b651b5034ac';
update page_layout_fields set deleted = 1 where id = '5f326b79-3224-6747-bbaf-e11136a7aa84';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'be6983b3-80ee-e94c-a3c8-7008b07f5dcd';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '1bdce90c-c549-094d-a1f0-b51a67f4d5ec';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '2ca3b246-5bbe-134b-beac-d7793d824d89';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4b892357-dd19-11ea-bc49-0215c63fce1a', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('58c8171c-dd19-11ea-bc49-0215c63fce1a', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('5e40437e-dd19-11ea-bc49-0215c63fce1a', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7, is_mandatory = 1 where id = 'f5a4c774-e3a5-9c40-9765-ee94be0c8657';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('908d9b55-dd19-11ea-bc49-0215c63fce1a', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('984ec8b4-dd19-11ea-bc49-0215c63fce1a', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '4b9ac203-0d63-054f-aaa9-57efa3695153';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '6ef45072-a5ff-3446-b8d9-e71e919587df';
update page_layout_fields set `order` = 12 where id = '68586f56-28e6-5348-8b74-9439ed9cf595';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '60ef6404-34ca-0441-b62d-aaf45a5483d9';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = '3a536861-3fe2-9649-bac8-eccb9bc10164';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '27ba724a-83f2-e84c-a32f-08c6bec243cc';

update page_layout_fields set `order` = 16 where id = '16fbed0a-5fc2-534a-8768-ddeeb9f4b5eb';
update page_layout_fields set `order` = 17 where id = '7273483a-99e6-8e42-ab23-2fe9c7c2e0c5';
update page_layout_fields set `order` = 18 where id = '1b32fbef-32d2-1244-9ed0-85851c4e75d9';
update page_layout_fields set `order` = 19 where id = '9cff88ac-434e-af4e-80c3-b67651e37389';

update page_layout_fields set deleted = 1 where id = '6d5662ea-6817-7146-9c9f-b86555a2fea1';
update page_layout_fields set deleted = 1 where id = 'c211697c-c4da-2e46-ac8f-dcec9f563897';
update page_layout_fields set deleted = 1 where id = '8240698d-d026-c04d-807c-f7806dae4163';
update page_layout_fields set deleted = 1 where id = '0d5c9525-2c05-a94c-95fc-205343d6b56c';
update page_layout_fields set deleted = 1 where id = 'd2cd0ea5-fa58-114c-bc8b-d49162a9438d';
update page_layout_fields set deleted = 1 where id = 'e5a06403-cfaa-9545-b897-899d14b6792a';
update page_layout_fields set deleted = 1 where id = 'd3bd4b27-f02a-074e-a437-e1f6bde01bb9';
update page_layout_fields set deleted = 1 where id = 'e70a20cb-3180-b742-b91e-6d2f7301e083';
update page_layout_fields set deleted = 1 where id = 'd7210c29-1187-3549-973e-814e4c66728b';
update page_layout_fields set deleted = 1 where id = 'f8485f2f-3dc1-8444-ae85-1f21ddc8ca9d';
update page_layout_fields set deleted = 1 where id = '69590acc-f750-554b-b83b-3449e49ec399';
update page_layout_fields set `order` = 20 where id = 'dcb655c7-dc63-6249-8c4f-42620e3e4fb3';


-- 医生讲者修改审批中页面
update page_layout_fields set deleted = 1 where id = '47740fce-f8a1-8042-8b13-643a301f8203';
update page_layout_fields set deleted = 1 where id = '21095e82-a259-ae4e-aff6-cf9933d2a561';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '388a936c-0a94-3e4b-8b79-24131b0d865f';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '1cf3a909-2c28-5a40-b233-1778aec8a31b';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = 'b61bf7ee-a607-3a4f-af13-c6392fab1564';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b0d4d3bc-dddd-11ea-bc49-0215c63fce1a', 'acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b0d4d506-dddd-11ea-bc49-0215c63fce1a', 'acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b0d4d59b-dddd-11ea-bc49-0215c63fce1a', 'acee9eb7-1296-4c4f-9334-802d33045062', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7, is_mandatory = 1 where id = 'f2d59ab4-b93a-cc49-9fca-44dc00ea954c';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b0d4d630-dddd-11ea-bc49-0215c63fce1a', 'acee9eb7-1296-4c4f-9334-802d33045062', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b0d4d6c2-dddd-11ea-bc49-0215c63fce1a', 'acee9eb7-1296-4c4f-9334-802d33045062', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = 'bd828305-86f8-db43-bbf9-f53a089129af';
update page_layout_fields set `order` = 11, is_mandatory = 0 where id = '45cd0e3c-cf74-f04e-8816-670d99e21945';
update page_layout_fields set `order` = 12 where id = '76c16174-2d2e-004c-8a53-bf4d60ef7bea';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '6a610922-3c89-b04e-b9c5-61776e92e840';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = '72d0e44f-172e-5747-ab7c-b68bdc9310f7';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '9152efa2-3374-914f-8089-4d2d384b20b8';

update page_layout_fields set `order` = 16 where id = 'c593f35b-7021-c240-a79f-0f96f98e7756';
update page_layout_fields set `order` = 17 where id = '8d5e0bfc-8d0d-9c4b-9bf7-e67660f92881';
update page_layout_fields set `order` = 18 where id = '258418dd-b788-2b49-b25e-4377ae0cae65';
update page_layout_fields set `order` = 19 where id = 'd38c7887-e214-f048-9180-807f7c1a4980';

update page_layout_fields set deleted = 1 where id = '3d0ddd89-7195-9642-9b5b-f888b719b7d4';
update page_layout_fields set deleted = 1 where id = 'b68bf91b-a609-6441-814f-2ec44c0f27c7';
update page_layout_fields set deleted = 1 where id = '0af58c35-2e32-6e47-82ea-d495cb3af7ff';
update page_layout_fields set deleted = 1 where id = '85ad1a7f-5b9a-0640-8a4f-9f1b5a8923f3';
update page_layout_fields set deleted = 1 where id = 'b872f5c7-265a-f44c-a73c-4a5d75c8efcf';
update page_layout_fields set deleted = 1 where id = '25b78804-9765-4d40-95c7-5b7638910271';
update page_layout_fields set deleted = 1 where id = 'bc34cccc-3404-144f-886d-6b9264955334';
update page_layout_fields set deleted = 1 where id = '5d15fa31-63c9-0744-850a-06b7f55848bc';
update page_layout_fields set deleted = 1 where id = '3f657add-348c-a24a-a078-e452c9d83846';
update page_layout_fields set deleted = 1 where id = 'b41cd6e2-ec06-404a-9b62-b2dfac932ca6';
update page_layout_fields set deleted = 1 where id = '079dc2ea-275d-d743-9d3d-40edbab4796d';
update page_layout_fields set `order` = 20 where id = '79d46c12-61eb-ff4f-9dcd-34eb380d6cd8';


-- 医生讲者修改审批通过页面
update page_layout_fields set deleted = 1 where id = 'e109f945-fe83-5749-a82e-61fc46ec0cca';
update page_layout_fields set deleted = 1 where id = '49c5f309-880c-df4a-a07c-bc6b64b4202e';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'fc612aa5-fa15-ed4b-ac97-b79f999bdd7b';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = 'deb7b3d9-34d4-7d45-b2ed-7fd4e0440b61';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '8ad91989-7b69-cf47-83b4-ad974a00965f';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('7de6b828-ddd8-11ea-bc49-0215c63fce1a', '3db20274-a58e-7340-9de0-d451eb968781', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('7de6ba23-ddd8-11ea-bc49-0215c63fce1a', '3db20274-a58e-7340-9de0-d451eb968781', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('7de6bafb-ddd8-11ea-bc49-0215c63fce1a', '3db20274-a58e-7340-9de0-d451eb968781', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7, is_mandatory = 1 where id = '15fe3c5c-a328-cb47-9b29-f4e25d89ccb7';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('159ed8f5-ddd9-11ea-bc49-0215c63fce1a', '3db20274-a58e-7340-9de0-d451eb968781', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('159ee07a-ddd9-11ea-bc49-0215c63fce1a', '3db20274-a58e-7340-9de0-d451eb968781', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '39c0e1bd-e9ce-f34f-860e-814f7991c732';
update page_layout_fields set `order` = 11, is_mandatory = 0 where id = 'e171d0df-9779-ef42-a2da-cd5b7f757007';
update page_layout_fields set `order` = 12 where id = '7fe63c99-8549-e44e-a73c-b14dc56104ab';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = 'c03d9647-b4a0-374f-b18b-e389198497d3';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = 'f1734696-b7ea-4f40-860e-af8740a026d8';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '21308aa6-7308-5644-b954-7772a7ec22c1';

update page_layout_fields set `order` = 16 where id = '043ce3cf-26d0-2a40-ae12-11dacfd2201e';
update page_layout_fields set `order` = 17 where id = '47369b88-0e0f-e147-8a91-a7ea1ecb614e';
update page_layout_fields set `order` = 18 where id = '58fe3f18-f4d7-fe4a-9239-3cc279a403af';
update page_layout_fields set `order` = 19 where id = '6c4cb6d2-143b-9f43-90b0-43d8959868fd';

update page_layout_fields set deleted = 1 where id = '1e0cff38-fd8c-0e42-a894-21b0dfce1bd2';
update page_layout_fields set deleted = 1 where id = 'd215918e-6bc7-484f-ac32-b548aec32536';
update page_layout_fields set deleted = 1 where id = '057c16a2-58cd-2844-a510-b02fca440e62';
update page_layout_fields set deleted = 1 where id = '217441b0-8305-b241-b8c0-cf27be029238';
update page_layout_fields set deleted = 1 where id = '60a7c619-7e6e-9248-a796-7167f1fbac86';
update page_layout_fields set deleted = 1 where id = '4ec20ea5-99a3-f947-8a75-70fb32cdd1cb';
update page_layout_fields set deleted = 1 where id = '5a56b18f-115e-1146-8363-8431bf07c24b';
update page_layout_fields set deleted = 1 where id = '8e29af08-1365-464b-ad08-562d7b2dcf82';
update page_layout_fields set deleted = 1 where id = '14b6f5d9-34fd-9e48-9cd2-4e36ae25a0ed';
update page_layout_fields set deleted = 1 where id = 'eabb0629-8d99-cf41-859c-75827f79b5df';
update page_layout_fields set deleted = 1 where id = 'c0788c49-87f4-734c-91e1-f30fcd6ee15d';
update page_layout_fields set `order` = 20 where id = '9f6e2063-cbd6-d645-83bf-7c7a18fb1c78';


-- 医生讲者修改审批拒绝页面
update page_layout_fields set deleted = 1 where id = 'eff62843-bb4d-9b4e-843e-2f2005ba7e63';
update page_layout_fields set deleted = 1 where id = 'febf76ea-28b4-074e-84ab-237dcaad04f2';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'dadedce9-f3a7-a940-b986-7da57878bf70';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '29837747-7b8c-7045-bab6-c09cc9a8060b';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = 'db94caf8-294c-9b4b-a3e2-efd33c610109';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65f306a7-dde8-11ea-bc49-0215c63fce1a', '50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65f308ea-dde8-11ea-bc49-0215c63fce1a', '50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65f309b1-dde8-11ea-bc49-0215c63fce1a', '50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7, is_mandatory = 1 where id = 'cee6df5e-8216-b24b-b645-a0ce60a1e663';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65f30a74-dde8-11ea-bc49-0215c63fce1a', '50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65f30b34-dde8-11ea-bc49-0215c63fce1a', '50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '22a1cc47-63a1-5d40-8fc8-51717f43b70b';
update page_layout_fields set `order` = 11, is_mandatory = 0 where id = '7b97ce61-fcec-0b48-aa7e-8c93dc9a668f';
update page_layout_fields set `order` = 12 where id = 'f2ab224c-dc2f-5248-955a-57414a38b1b7';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '7257bd95-e387-9d47-a0d1-cc4d47dfe830';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = 'e7fc78c6-c4c3-de46-ba25-d3125dbbc934';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '07eb28fe-fcfa-654b-ada2-3abd554a4238';

update page_layout_fields set `order` = 16 where id = '18493b70-38b8-ef42-b5ec-103f34d3fea1';
update page_layout_fields set `order` = 17 where id = 'e38c01da-4097-7a46-8105-75b762db8ec5';
update page_layout_fields set `order` = 18 where id = 'ea19c860-dc29-724e-911d-18be8e410eac';
update page_layout_fields set `order` = 19 where id = 'd8efbc34-529b-e845-a3ef-2139cf3ae6fb';

update page_layout_fields set deleted = 1 where id = '0abf9c4a-6519-414c-8047-ac5808f65174';
update page_layout_fields set deleted = 1 where id = 'ff5391f5-2517-3b48-92b3-efa647351da9';
update page_layout_fields set deleted = 1 where id = 'e1d8a88e-90ef-6449-9d95-204cb7d0d963';
update page_layout_fields set deleted = 1 where id = 'be26d6ce-daba-cd4d-8ba4-e8f21f1ad9af';
update page_layout_fields set deleted = 1 where id = '9998af67-1685-d844-a181-085c746d8280';
update page_layout_fields set deleted = 1 where id = '38a3d152-8dfd-6847-9022-87ae90a87c77';
update page_layout_fields set deleted = 1 where id = 'eba50180-321a-8949-b3f4-47da682e1f2f';
update page_layout_fields set deleted = 1 where id = 'c4d54700-927f-4f4e-9fd1-8b57d6f29dcd';
update page_layout_fields set deleted = 1 where id = '87eded59-fbdf-7742-9d33-6f4c30bb7b8a';
update page_layout_fields set deleted = 1 where id = '223de84a-8c3b-6e45-89c2-4a8c696052f3';
update page_layout_fields set deleted = 1 where id = '7aa513b8-8030-054f-90b6-fab24bbdda86';
update page_layout_fields set `order` = 20 where id = 'a1690062-8f3c-2343-8b42-a61f1cfb9c2c';



-- 生效医生讲者页面
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`) VALUES
('1f649e2a-db7d-11ea-bc49-0215c63fce1a', 'df53d96e-ffcb-4930-badb-b160d3fcee17', NULL, 'cs_hospital_code', '医院编码', '医院编码', 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, '{\"refer_field\": {\"path\": \"professional.hospital.veeva_code\", \"type\": \"text\"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL);

-- 学会任职longtext1、发表文献longtext2
-- 讲者
update object_database_columns set used = 1 where id = '46702a4c-b61b-4b5b-8437-052802878992';
update object_fields set `name` = 'cs_learn_duty', label = '学会任职(学会和职务)', description = '学会任职(学会和职务)' where id = '9a46be63-c5c3-4b43-8779-62cb79169a37';
update object_database_columns set used = 1 where id = '16c48985-c82b-47ee-a46c-22985e781173';
update object_fields set `name` = 'cs_publications', label = '发表文献', description = '发表文献' where id = '31908632-243e-403b-86e5-b80d399f549e';

-- 讲者显示目标医生级别
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`) VALUES
('3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', 'df53d96e-ffcb-4930-badb-b160d3fcee17', NULL, 'cs_doctor_level_speaker', '目标医生级别', '目标医生级别', 'custom', 'advanced', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = 'dbf0b22f-cf6e-0846-aa02-18a53fc32ad4';
update page_layout_fields set deleted = 1 where id = '33cb15b8-34d7-4e46-b4bd-beee8f3eb91e';
update page_layout_fields set label = '姓名', `order` = 1 where id = '5056b113-b829-1f46-b68a-65d1767c0e7b';
update page_layout_fields set `order` = 2, object_field_id = '7399392b-0549-11ea-b9aa-0298a739dec0' where id = '94345eed-ccf0-7f41-9181-67a074a27032';
update page_layout_fields set `order` = 3, object_field_id = '76e6c399-b1df-44c1-8e2b-23d859bb9bba' where id = '1b58ef04-b478-f748-a401-a671dec3c96e';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('37c71c55-db7d-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('91657d85-dd0f-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('a309aef2-dbbc-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7 where id = '2e321533-8030-b748-98f5-3cbcf33d6394';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('254730e4-db9e-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('254733db-db9e-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '2c9c693f-09f8-114c-b265-81ffc8b95141';
update page_layout_fields set `order` = 11, is_mandatory = 0 where id = 'bc8112b8-c8d4-7f40-bdb9-b08013879de1';
update page_layout_fields set `order` = 12 where id = '2afd687d-e3ba-4a5d-8257-b072ce54c7b2';
update page_layout_fields set `order` = 13, label = '身份证' where id = '7876b1a1-2685-8a43-b134-8221be1965c4';
update page_layout_fields set `order` = 14, label = '银行账号' where id = 'eb7f43e2-5f63-f84d-a04a-f5f5d47646e6';

update object_database_columns set used = 1 where id = '21348179-cd6c-4f7a-9b3a-692dd7fc7d22';
update object_database_columns set used = 0 where id = '7c469f4a-b1ae-4aef-a6d3-74310e5675ad';
update object_fields set `name` = 'text_3',label='文本预留3',description = NULL where id = '031ba4d9-8fb6-4a2b-8e74-aaf5052d08c3';
update object_fields set `name` = 'cs_debit_bank',label='开户行',description = '开户行' where id = '83b5aa78-fb68-4b4b-8be6-c44193749ed1';
update page_layout_fields set `order` = 15, object_field_id = '83b5aa78-fb68-4b4b-8be6-c44193749ed1' where id = '372d9124-f882-554d-83a0-5fbf1ea6e0e8';

update page_layout_fields set `order` = 16 where id = '0c3e3418-3082-f54c-b73a-6d4df8aa4494';
update page_layout_fields set `order` = 17 where id = 'a71fdadb-ab5c-2f4e-ab65-44b6269f1637';
update page_layout_fields set `order` = 18 where id = 'b0610c98-05b0-3441-b2cc-1f0d1a0ed288';
update page_layout_fields set `order` = 19 where id = 'aa3379cb-9136-da41-85ce-8bd156ac9083';

update page_layout_fields set deleted = 1 where id = 'e8bf10d0-e246-a349-9907-01673f21776c';
update page_layout_fields set deleted = 1 where id = 'b6925f08-04c8-4d85-9d84-cf9035722dc6';
update page_layout_fields set deleted = 1 where id = '61aa2ba9-4f6f-5d44-8f74-048fbd391d1e';
update page_layout_fields set deleted = 1 where id = '7562976b-36b0-3a48-9cf5-23e5447e3c7b';
update page_layout_fields set deleted = 1 where id = '6c658b0d-3550-6642-bff5-8a1dbff78153';
update page_layout_fields set deleted = 1 where id = '1e3164d9-f0cf-554a-8bbf-03c84417f418';
update page_layout_fields set deleted = 1 where id = 'd7f78dbf-2d9a-7e49-8d82-7519c54a3caa';
update page_layout_fields set deleted = 1 where id = '8c1a7b0a-b569-1a49-95fc-c0fd5259f2ac';
update page_layout_fields set deleted = 1 where id = '24592e92-b0bb-5949-a686-6df12dbc2c4a';
update page_layout_fields set deleted = 1 where id = '01ddf5ef-2114-a44c-835b-c952b6c5ba21';
update page_layout_fields set deleted = 1 where id = '31e1d11e-8702-2547-a07f-6e578c1243d2';
update page_layout_fields set `order` = 20 where id = 'c34131c4-429e-0946-be97-3d5903816da3';

-- 生效医生讲者附件
update page_layout_tabs set object_tab_id = '464e50f9-7ef0-4904-b962-15bb2d7e7a47' where id = '9df19dd7-ddeb-a941-bf2e-903e8bdb690c';

-- 生效讲者页面附件不可编辑
update page_layout_tabs set is_readonly = 1 where page_layout_id = '4d4783ac-0b26-bf4f-939d-5185b27fca85';

-- 失效医生讲者页面
update page_layout_fields set deleted = 1 where id = 'e2a35cd9-efeb-3744-b3e9-8707021da08e';
update page_layout_fields set deleted = 1 where id = '1b25d747-3600-e84c-93f7-5c6b721f4d3e';
update page_layout_fields set label = '姓名', `order` = 1 where id = 'f27ebf94-93fe-2948-bc4e-92b2d8b23c96';
update page_layout_fields set `order` = 2, object_field_id = '7399392b-0549-11ea-b9aa-0298a739dec0' where id = 'c7f572ff-6f8c-7b47-b9b1-ff5099e0703f';
update page_layout_fields set `order` = 3, object_field_id = '76e6c399-b1df-44c1-8e2b-23d859bb9bba' where id = '8054b1ef-ca0e-1a4c-ae04-6c3988f472fe';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9328bd81-dc4d-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0a402f79-dd10-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('47b1e359-dc62-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 7 where id = '4b58787d-21f7-634f-a375-152076bf1c35';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('80eb36a7-dc62-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('87506268-dc62-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '7151fa72-04ef-ba48-ad80-464305992b2e';
update page_layout_fields set `order` = 11, is_mandatory = 0 where id = '7c19d7bc-ae06-1e4a-9da3-efcda8bbb255';
update page_layout_fields set `order` = 12 where id = '6e2e7e7b-0652-a344-b163-a79e88115ee1';
update page_layout_fields set `order` = 13, label = '身份证' where id = 'a791d64c-763c-154d-bf4a-fba688c8eaf8';
update page_layout_fields set `order` = 14, label = '银行账号' where id = 'fefca4d6-747a-ba46-9f20-f4712177f3ef';

update page_layout_fields set `order` = 15, object_field_id = '83b5aa78-fb68-4b4b-8be6-c44193749ed1' where id = 'bfb7f1dd-6928-3244-a439-83fb1e8177cb';

update page_layout_fields set `order` = 16 where id = 'fa576762-3a77-fd47-a00f-c0fc72b44f2b';
update page_layout_fields set `order` = 17 where id = 'c8e24f49-c893-3a42-b125-069bd95e86bd';
update page_layout_fields set `order` = 18 where id = 'd08d4539-566d-3f44-900d-41b3f13bd9cc';
update page_layout_fields set `order` = 19 where id = '7900ff69-94ea-5445-add3-cb7fdd2c6f0b';

update page_layout_fields set deleted = 1 where id = '546dbcc8-7388-244e-8a1f-1ca1bcde9cf2';
update page_layout_fields set deleted = 1 where id = 'ee38f1b9-f06c-6c43-a711-0bf62ad19e67';
update page_layout_fields set deleted = 1 where id = '1381da93-ff5f-3143-b179-1f060c55a2a4';
update page_layout_fields set deleted = 1 where id = '3cc80df9-3399-db40-8a2d-622a0afeabbf';
update page_layout_fields set deleted = 1 where id = 'd717bc8e-f8bf-bd4f-a5f5-0d7802c6c92c';
update page_layout_fields set deleted = 1 where id = '01a2026e-46bb-9949-8159-47c388021d06';
update page_layout_fields set deleted = 1 where id = '9ffa003a-f30a-214d-9a32-e20605aabb36';
update page_layout_fields set deleted = 1 where id = 'bab19e2f-cd6f-584a-939c-8b48ede82e7a';
update page_layout_fields set deleted = 1 where id = '02210400-da5f-5a4c-bf2c-d24307fa1b14';
update page_layout_fields set deleted = 1 where id = '2d8bd1c2-5110-9d48-9afa-993b6e32151d';
update page_layout_fields set `order` = 20 where id = '0110bb5d-94e2-fd4d-b26f-cc2107a3aee7';

-- 失效医生讲者附件
update page_layout_tabs set object_tab_id = '464e50f9-7ef0-4904-b962-15bb2d7e7a47' where id = '8cfc2afe-6bda-c745-a1e8-e17780e14f2b';


-- 讲者编码
update objects set code_prefix = 'KOL' where id = 'df53d96e-ffcb-4930-badb-b160d3fcee17';


-- 可转为讲者的医生范围：区域内包括下属及share rule
update custom_settings set `value` = '"subordinate_share_rule"' where `key` = 'speaker_dcr_professional_applicable';

-- 可修改讲者的范围：区域内包括下属及share rule
update custom_settings set `value` = '"subordinate_share_rule"' where `key` = 'speaker_dcr_enable_to_update';


-- 代表非医生讲者查看
update page_layout_fields set deleted = 0 where id in (
'7379b931-06c9-1240-a088-0f318d03c9ae',
'85be9e8e-7d4c-674a-9fe3-307eca69e568',
'1c13516b-1ce3-0741-9c13-8c2ac6bba798',
'f07e3cd6-7a73-3d4f-a003-0fe76221f7de',
'8a36a832-f4f3-4144-9960-1531809ac349',
'8cf47540-a7f9-2545-88fc-0ddf1985b915',
'7ebd4c56-3475-d542-bf32-a249ca7944de',
'01355272-6286-6446-9dc8-21ad3cf6f8ea',
'bb8f620d-6311-1f48-8f20-d34cdb9aae22',
'03ada585-4742-744e-84b5-5ca3e0c5f804',
'e288bf65-bafc-de4b-866e-be75fc765494',
'0ab2b4c9-a5bc-cb4c-8314-e7bb10dd95ae'
);


-- 讲者申请历史筛选条件讲者级别去掉县级、VIP级
delete from picklist_values where id in (
'57da9565-e27f-11e9-b9aa-0298a739dec0',
'96d74ca3-e27f-11e9-b9aa-0298a739dec0'
);

-- 修改讲者级别 国家级改为全国级
update picklist_values set label = '全国级' where id = '381e52da-48b1-4ade-9bab-c21b6c65666b';

-- 查看DCR仅查看自己申请的
update role_to_object_permissions set allow_read_all = 0 where id = '337ab985-db83-11e9-b9aa-0298a739dec0';
update role_to_object_permissions set allow_read_all = 0 where id = '87786aeb-db83-11e9-b9aa-0298a739dec0';


-- 微信端其他角色
-- 1. 销售主管与代表一致
-- b74845ad-b5fe-11ea-aab5-0215c63fce1a
-- 修改主管对应的讲者维护menus
update menus_assignments set menu_id = '009891f0-c4f2-11ea-9285-999a0f71b698' where id = '522406cb-66ce-44b1-bba4-53c9b39b1012';

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('17815872-de12-11ea-bc49-0215c63fce1a', NULL, 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

-- 讲者DCR可能申请类型
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
('637ba4f1-decc-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '0', '0', '1', NOW(), '1', NOW()),
('637ba73e-decc-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '0', '0', '1', NOW(), '1', NOW()),
('637ba7f7-decc-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '0', '0', '1', NOW(), '1', NOW());

-- 主管讲者及讲者DCR权限
update role_to_object_permissions set allow_read = 1, allow_create = 1, allow_update = 1, allow_read_all = 0, allow_update_attachment = 1, allow_read_all = 0 where id = '99d39b79-fa17-4539-a7ce-93006e6ac100';
update role_to_object_permissions set allow_read = 1, allow_create = 1, allow_update = 1, allow_read_all = 0, allow_update_attachment = 1, allow_read_all = 0 where id = '65d042f6-b581-4b44-bc8b-ab8b43ed5133';

-- 主管医生转讲者申请
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('a6f7b683-decd-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生转讲者申请中
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('71fc0e2c-ded0-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生转讲者申请通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('3077acbb-ded1-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生转讲者申请拒绝
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('aeee09c7-ded0-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 主管医生讲者修改申请
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('15ef1d2b-ded4-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生讲者修改申请中
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('d366fc10-ded5-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生讲者修改申请通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('d1dac90f-ded6-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管医生讲者修改申请拒绝
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6e544739-ded6-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 主管生效医生讲者查看
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('02f7d147-ded2-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管失效医生讲者查看
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('83a4b5e1-ded3-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 2. 地区经理、区域市场经理、产品经理、市场总监需要审批讲者DCR（查看审批中页面权限）
-- 地区经理	5a013aaa-b5c5-11ea-aab5-0215c63fce1a
-- 产品经理	b72453fc-efdb-11e9-b9aa-0298a739deb2
-- 市场经理	a99fcd69-b5ff-11ea-aab5-0215c63fce1a
-- 市场总监	b72453fc-efdb-11e9-b9aa-0298a739dec0

-- 地区经理	审批申请中的讲者
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('ac107c83-dee3-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL),
('ac107e51-dee3-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

update role_to_object_permissions set allow_read = 1 where id = 'e5cf1a11-a7d6-4f52-bac1-2a399706d532';

-- 产品经理	审批申请中的讲者
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('fc8ea726-dee5-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL),
('fc8ea899-dee5-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 市场经理 审批申请中的讲者
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('986d67af-e12e-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL),
('986d6ccc-e12e-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 市场总监微信端讲者查看
-- 市场总监    b72453fc-efdb-11e9-b9aa-0298a739dec0
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('6ba081e7-e13a-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');

-- 讲者详情
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('b22cf4a5-e13d-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL),
('b22cf6a2-e13d-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('d1b88177-e13a-11ea-bc49-0215c63fce1a', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES
('0edf2816-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '184f84eb-8532-498c-8d16-b133e2ec08e6', '1', '0', '0', '0', '0', '1', NOW(), '1', NOW(), '0', '1', '1', '0', '0', '0', '0', '0');

-- 申请历史详情
-- 市场总监医生转讲者计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fff75d-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fff967-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fffa52-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fffb39-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 市场总监医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fffc21-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fffd0c-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90fffdf8-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('90ffff00-e13b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- SFE微信端讲者查看
-- SFE    53de9674-1da3-11e6-ac97-5cc5d4b57137
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('9d264c17-e0f8-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '009891f0-c4f2-11ea-9285-999a0f71b698', '11', '0', '1', NOW(), '1', NOW(), 'null');

-- 申请历史列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('d58c11a7-e0f8-11ea-bc49-0215c63fce1a', NULL, '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'd3fbde08-32b7-4547-8e0d-3c79e6cdae67', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

-- 申请历史详情
-- sfe医生转讲者计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c48e-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c610-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c6a1-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c738-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- sfe医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c7ca-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c85a-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c8ed-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('6dd1c99c-e0fa-11ea-bc49-0215c63fce1a', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 电脑端SFE、市场经理、产品经理讲者及讲者申请的查看、导出
-- SFE    53de9674-1da3-11e6-ac97-5cc5d4b57137

-- 讲者管理列表
update page_list_fields set width = '120' where id = 'c2993189-d817-4b28-80fe-c8ce4edb929b';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('04d006a1-df70-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '7399392b-0549-11ea-b9aa-0298a739dec0', '讲者编码', '2', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('d64f3086-df71-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('d8e7a8e5-df72-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('d8e7ac86-df72-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('903abfa3-df73-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('903ac1ad-df73-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

update page_list_fields set `order` = 10 where id = '89a21abf-a8d9-4b52-aa26-0f99ca199a56';
update page_list_fields set `order` = 11 where id = '25dbbb44-46a1-40be-bc68-41700645ddf1';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('036067e1-df74-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '434d35fc-72ce-46b5-bd4a-7b7497f9107b', '性别', '12', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ca05e095-df75-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ca05e37e-df75-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '488658fc-88f0-419e-9031-c81e29ef7eae', '银行账号', '14', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ca05e4b6-df75-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '83b5aa78-fb68-4b4b-8be6-c44193749ed1', '开户行', '15', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ce3ff805-df76-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', 'fec5065e-5c6a-479c-8e47-3364361c5cc4', '创建时间', '16', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ce3ffa24-df76-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', 'aaeb0a6e-2f4c-4dc6-aa82-0645a871ddee', '创建人', '17', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ce3ffaed-df76-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', 'b703585f-fd65-4a9c-a3ce-4e320469b5dd', '修改时间', '18', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('ce3ffbb2-df76-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', 'c42d17b3-7c0d-4485-924e-823771d03a89', '修改人', '19', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

update page_list_fields set deleted = 1 where id = '5ce787a3-3100-4dc9-ab58-ab1e8fa19408';
update page_list_fields set deleted = 1 where id = 'ce922ea9-97bb-4569-9d61-450bb43e8959';
update page_list_fields set `order` = 20,width = 120 where id = '1b47030a-4658-411e-8ae7-7c476115b189';

-- 讲者导出
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`, `configurations`, `label`) VALUES
('109743b1-e058-11ea-bc49-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '460ab38e-5f5f-452a-acff-a8734ef522b0', '1', '0', '1', NOW(), '1', NOW(), '0', NULL, '0', NULL, NULL);

-- 生效讲者管理详情
update page_layout_fields set deleted = 1 where id = 'b4e541de-5433-435b-8124-bfbd767193e9';
update page_layout_fields set `order` = 1 where id = '3782069d-149f-4382-b13a-0253558f320e';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('088bd6bb-e03d-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '7399392b-0549-11ea-b9aa-0298a739dec0', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 3 where id = 'a259ab6e-feb3-400a-85da-a6b4ef1bbe3c';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('573fda74-e050-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('573fdc82-e050-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('573fdd34-e050-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 7 where id = 'e0863034-583b-4603-af6f-68e94e83f921';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('573fdddf-e050-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('573fde88-e050-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = '4743769e-63ab-4343-9e7f-e7ceebcbe052';
update page_layout_fields set `order` = 11 where id = 'cde7231f-d63c-4c47-9ec3-c669c4e5b854';
update page_layout_fields set `order` = 12 where id = 'c8d118e0-e7e6-49a2-b5c0-fe190bb20f05';
update page_layout_fields set `order` = 13 where id = 'c9cfb95e-bf1f-41ba-8d62-3cb1726fcf38';
update page_layout_fields set `order` = 14 where id = '906829d7-c4f8-44f4-9420-7b73c79beb66';
update page_layout_fields set `order` = 15, object_field_id = '83b5aa78-fb68-4b4b-8be6-c44193749ed1' where id = '12f69759-723a-4c7a-b255-8a861e7c1652';

update page_layout_fields set `order` = 16 where id = '7c434343-cc40-4f99-87e3-2c06015d3387';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('5a1c47cb-e052-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 18 where id = 'ff0fc15e-5871-45b1-bacf-be03befe7b92';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('5a1c4ac9-e052-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = 'b1e2966c-c703-49d0-9538-4206760d33df';
update page_layout_fields set deleted = 1 where id = 'e883cf0f-1e49-4617-b5e6-1b9b1234a463';
update page_layout_fields set deleted = 1 where id = 'dff21516-1d6d-4454-ad9c-89eadc32d85f';
update page_layout_fields set deleted = 1 where id = '700edfec-5e24-4ae6-9f3e-10752bce3bc3';
update page_layout_fields set `order` = 20 where id = 'fb68aa53-3453-4937-94f3-b78d38ed9abb';

-- 讲者详情去掉审批Tab
update page_layout_tabs set deleted = 1 where id = 'a44f54c1-8e16-4ccf-ab3e-e940dc92b223';

-- SFE设置讲者生效/失效
-- 去掉讲者的编辑/保存
update page_layout_actions set deleted = 1 where id = '384a2f5c-db88-448d-ac1a-34a71cb5f16e';
update page_layout_actions set deleted = 1 where id = '1774f498-34eb-4dd3-838d-dda28fc5eae9';
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`, `configurations`, `label`) VALUES
('dd24368b-e053-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'fb7cf782-edbc-4777-ad5c-086ee6d87779', 'view', '2', '0', '1', NOW(), '1', NOW(), NULL, '0', NULL, NULL, NULL);


-- 失效讲者管理详情
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('e93247bf-e054-11ea-bc49-0215c63fce1a', '05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'speaker_page_layout_l', '讲者详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('8ee7e6b2-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'd0c9ce9b-946a-47d0-abed-5ae536a1d651', '姓名', '1', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7e93d-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '7399392b-0549-11ea-b9aa-0298a739dec0', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7ea1e-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '76e6c399-b1df-44c1-8e2b-23d859bb9bba', '机构', '3', '6', '1', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7eaff-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7ebde-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7ecc1-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7eda7-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '82c4780d-98a1-419c-b93a-3ddef09f61c6', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7eea1-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7efaf-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f099-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '09e584f2-84da-4812-9302-bccd1d31e8e2', '讲者级别', '10', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f188-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '1d838a6d-7723-44d9-a2ad-35d27a8328e0', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f276-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '434d35fc-72ce-46b5-bd4a-7b7497f9107b', '性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f36d-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'fd23ead8-fa92-460f-8c8a-217956806df1', '身份证', '13', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f460-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '488658fc-88f0-419e-9031-c81e29ef7eae', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f557-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '83b5aa78-fb68-4b4b-8be6-c44193749ed1', '开户行', '15', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f68a-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'fec5065e-5c6a-479c-8e47-3364361c5cc4', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f786-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f88a-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'b703585f-fd65-4a9c-a3ce-4e320469b5dd', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7f98b-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('8ee7fa92-e055-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'af6cf635-625f-436e-951a-f6b1b70c416f', '状态', '20', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('2bd08332-e056-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '464e50f9-7ef0-4904-b962-15bb2d7e7a47', NULL, '0');

INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`, `configurations`, `label`) VALUES
('65e0db84-e056-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'f4e048fe-920c-45f1-85ea-61280b684beb', 'view', '2', '0', '1', NOW(), '1', NOW(), NULL, '0', NULL, NULL, NULL);

update page_layout_assignments set page_layout_id = 'e93247bf-e054-11ea-bc49-0215c63fce1a' where id = '51b5205e-63f8-9e48-9653-f7b751046af8';


-- 讲者申请管理列表
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('83e353e8-e059-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
update page_list_fields set `order` = 3, width = 150 where id = 'dc9dd12d-94d6-4ebf-b37b-bb0b35751954';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('c84a4dc5-e059-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编辑', '4', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('92109964-e05a-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('92109b6f-e05a-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

update page_list_fields set `order` = 7 where id = '4b92fca3-f9f5-4caa-87c0-c958b456563a';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('87735795-e05b-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('87735905-e05b-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

update page_list_fields set `order` = 10 where id = '6efc268e-9a3e-4a88-98c5-b9241643c025';
update page_list_fields set `order` = 11 where id = '7beeec8e-b2a8-4c4d-aae9-c4c7e7a63e8f';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('021745e6-e05c-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('6e12942a-e05c-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('6e129656-e05c-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('6e129736-e05c-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('7af5c3b0-e05e-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('7af5c55f-e05e-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('7af5c605-e05e-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('7af5c6aa-e05e-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

update page_list_fields set `order` = 20 where id = 'bd96d098-6cd7-4ff4-85c1-863ec3557b44';

-- 讲者申请导出
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`, `configurations`, `label`) VALUES
('db5a1137-e058-11ea-bc49-0215c63fce1a', 'be739038-35fe-4c16-9803-92acd7a01f69', 'd0705a2f-a69a-4234-a8a4-2488430821d3', '1', '0', '1', NOW(), '1', NOW(), '0', NULL, '0', NULL, NULL);



-- 讲者申请管理详情
-- 医生转讲者: 计划申请、审批中、审批拒绝、审批通过
-- 计划审请
update page_layout_fields set deleted = 1 where id = 'c3bc34e7-b5ba-4e38-8b43-77701766e792';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d459a-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = 'f2fd9a4e-1249-4059-a17b-a627710f3722';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d47a2-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4884-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4967-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4a43-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4b27-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4c0c-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = 'fb65b5c0-6b15-4ac8-acfb-295e8424bdc0';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4d09-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4df0-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = 'ba96d046-d48d-4ffa-bb86-f36fe0351587';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4ede-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d4fcd-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('843d50c0-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('843d51b6-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('843d52ae-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('843d53a6-e06a-11ea-bc49-0215c63fce1a', '42cd6b18-0fa8-4dc8-b16c-7ffb1f700385', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = '63d913fb-5dd4-4dfd-bdd4-92c6ed507d78';
update page_layout_fields set deleted = 1 where id = 'eceabce1-7980-4b4f-947c-16d9078308d8';
update page_layout_fields set deleted = 1 where id = '0268f482-2178-480f-98b7-6dcfa58ca918';
update page_layout_fields set deleted = 1 where id = 'e6508d5c-6377-4d9d-995a-8785cd3c21f8';
update page_layout_fields set `order` = 20 where id = 'b04b6642-7a24-4128-8ee6-d829f49feb75';

-- 审批中、审批拒绝、审批通过
update page_layout_fields set deleted = 1 where id = 'e2171f8b-a598-40fe-84df-ff79cfd35ca2';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b1733354-e066-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = 'f2183889-930c-464c-bc4b-75dc2e2e5c0a';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('83ab3390-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b2dfdc82-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b2dfdf71-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ff9156ba-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ff91582c-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ff9158ca-e067-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = 'e104908c-33ea-41d1-b7df-08e102898f8c';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65ce84d0-e068-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('65ce8643-e068-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = 'e1894445-c707-4ab1-adc8-f078726c4d42';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('2314e398-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('2314e54a-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9a6384a3-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('9a6387c6-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('9a6388ae-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('9a638991-e069-11ea-bc49-0215c63fce1a', '5698e827-32e9-4ba9-99a7-96abca68c9ef', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = '7f379367-b6da-4de1-8874-b7f300a30e5f';
update page_layout_fields set deleted = 1 where id = '09290a58-7558-46ea-8c80-103c3bd76a14';
update page_layout_fields set deleted = 1 where id = 'f3927688-3bf6-4bc1-a191-c63048931573';
update page_layout_fields set deleted = 1 where id = '03d67eb1-ab25-4dff-864e-a4ce97ac31a4';
update page_layout_fields set `order` = 20 where id = '92569302-7edc-42a7-b317-87dcad63e169';


-- 医生讲者修改：计划申请、审批中、审批拒绝、审批通过
-- 计划申请
update page_layout_fields set deleted = 1 where id = '6b516c7a-2073-45bc-a762-e61da7456f3d';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eb471-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = '0b2e0b53-00f4-45df-898d-928f2a0452f3';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eb677-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eb763-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eb84a-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eb92f-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8eba1b-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebb05-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = '8e61a735-9163-46f1-82d1-2537cb5fe4cf';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebc08-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebcf9-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = 'ec603155-1bc1-46de-93ec-4fd7a1cbb2b9';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebdec-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebee1-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('be8ebfd9-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('be8ec0d4-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('be8ec1d2-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('be8ec2d1-e06c-11ea-bc49-0215c63fce1a', 'b8b96022-3e43-4a3d-8075-891902b4f4eb', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = '78ab3589-c432-4433-9df3-1eea137f9f07';
update page_layout_fields set deleted = 1 where id = '7ace4dd3-0f50-44ae-8f22-98cddd63e7c1';
update page_layout_fields set deleted = 1 where id = '404d7559-5f9c-4543-80d1-76f3cd604976';
update page_layout_fields set deleted = 1 where id = '62a5e252-53bd-4dc7-8915-a8d3b6957d6a';
update page_layout_fields set `order` = 20 where id = '36561f09-c77d-4b58-b7e6-6a3c66b9bd0e';

update page_layout_fields set `order` = 24 where id = '5ded5065-8515-4203-93ca-4a58538aa4e3';
update page_layout_fields set `order` = 25 where id = '57c5a6ed-dbe3-420b-941f-db2411dbc779';


-- 审批中、审批拒绝、审批通过
update page_layout_fields set deleted = 1 where id = 'd1d522a3-e616-4bb6-8e71-6792463fc94d';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926482-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = '86440e65-4b0c-41d4-a8bd-525c1d091c0c';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926721-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926813-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926901-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f9269ea-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926ad7-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926bc7-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = '105dbeb6-0a6e-4231-aaac-86b4a8ef89da';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926cd0-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926dc4-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = 'b36d0ffa-168e-43be-965f-9d4b488ada8f';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926eba-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f926fb5-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4f9270b1-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4f9271b0-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4f9272af-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4f9273b8-e06f-11ea-bc49-0215c63fce1a', '57bcfd04-5a91-4136-8080-0d5a61484710', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted = 1 where id = 'f193478e-ea78-44b5-8596-a3d6ea315cfc';
update page_layout_fields set deleted = 1 where id = '6fa95c5d-033e-4dfd-af06-63449f5b4236';
update page_layout_fields set deleted = 1 where id = '7059b772-b7ec-4702-86fb-0c1c309cea64';
update page_layout_fields set deleted = 1 where id = '2aadfb8a-9134-4520-ad03-6bf462941174';
update page_layout_fields set `order` = 20 where id = '34b4346e-f518-4e73-a8ad-3058a82f29bf';

update page_layout_fields set `order` = 24 where id = '7ffd1f01-6f02-46b8-84b1-5f5c468e6d67';
update page_layout_fields set `order` = 25 where id = '7a218d48-2960-47cb-8878-083e5cd89fb2';


-- 市场部：市场经理、产品经理电脑端讲者、讲者申请查看及导出
-- 市场经理：a99fcd69-b5ff-11ea-aab5-0215c63fce1a
-- menus
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('2b180f73-e104-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '7361b2d0-c4ec-11ea-9285-999a0f71b698', '9', '0', '1', NOW(), '1', NOW(), 'null'),
('2b181106-e104-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '5c4a7351-b55a-48ff-973f-03699256227b', '5', '0', '1', NOW(), '1', NOW(), NULL);

-- 讲者列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('e29141e8-e104-11ea-bc49-0215c63fce1a', NULL, 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

update role_to_object_permissions set allow_read = 1, allow_read_all = 1, allow_export = 1, allow_terminate_approval = 0 where id = '3e55eaf3-4bab-43b0-8f20-ee6587156d3d';

-- 生效讲者详情
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('324574d9-e11a-11ea-bc49-0215c63fce1a', '05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'speaker_page_layout_l', '讲者详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4a582f90-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'd0c9ce9b-946a-47d0-abed-5ae536a1d651', '姓名', '1', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583032-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '7399392b-0549-11ea-b9aa-0298a739dec0', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a5830d7-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '76e6c399-b1df-44c1-8e2b-23d859bb9bba', '机构', '3', '6', '1', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583191-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583235-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a5832dc-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a58339b-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '82c4780d-98a1-419c-b93a-3ddef09f61c6', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583445-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a5834f8-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a5835a8-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '09e584f2-84da-4812-9302-bccd1d31e8e2', '讲者级别', '10', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a58365c-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '1d838a6d-7723-44d9-a2ad-35d27a8328e0', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583713-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '434d35fc-72ce-46b5-bd4a-7b7497f9107b', '性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a5837cc-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'fd23ead8-fa92-460f-8c8a-217956806df1', '身份证', '13', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583887-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '488658fc-88f0-419e-9031-c81e29ef7eae', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583980-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '83b5aa78-fb68-4b4b-8be6-c44193749ed1', '开户行', '15', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583a41-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'fec5065e-5c6a-479c-8e47-3364361c5cc4', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583b06-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583be2-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'b703585f-fd65-4a9c-a3ce-4e320469b5dd', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583caa-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4a583d76-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'af6cf635-625f-436e-951a-f6b1b70c416f', '状态', '20', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('4a583e45-e11a-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '464e50f9-7ef0-4904-b962-15bb2d7e7a47', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('4a583f16-e11a-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '324574d9-e11a-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 失效讲者详情
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('1a67ee6b-e11d-11ea-bc49-0215c63fce1a', '05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'speaker_page_layout_l', '讲者详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('1a67f326-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'd0c9ce9b-946a-47d0-abed-5ae536a1d651', '姓名', '1', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f3b9-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '7399392b-0549-11ea-b9aa-0298a739dec0', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f44c-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '76e6c399-b1df-44c1-8e2b-23d859bb9bba', '机构', '3', '6', '1', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f4dc-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '1f649e2a-db7d-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f571-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '32e7faf0-da3d-4a80-8555-d9cfbc49ed15', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f605-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '3f9e44dc-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f6b2-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '82c4780d-98a1-419c-b93a-3ddef09f61c6', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f74d-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '9a46be63-c5c3-4b43-8779-62cb79169a37', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f7e9-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '31908632-243e-403b-86e5-b80d399f549e', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f889-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '09e584f2-84da-4812-9302-bccd1d31e8e2', '讲者级别', '10', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f92a-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '1d838a6d-7723-44d9-a2ad-35d27a8328e0', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67f9cf-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '434d35fc-72ce-46b5-bd4a-7b7497f9107b', '性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fa78-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'fd23ead8-fa92-460f-8c8a-217956806df1', '身份证', '13', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fb23-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '488658fc-88f0-419e-9031-c81e29ef7eae', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fc0b-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '83b5aa78-fb68-4b4b-8be6-c44193749ed1', '开户行', '15', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fcbd-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'fec5065e-5c6a-479c-8e47-3364361c5cc4', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fd87-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fe3f-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'b703585f-fd65-4a9c-a3ce-4e320469b5dd', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67fef6-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('1a67ffb0-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'af6cf635-625f-436e-951a-f6b1b70c416f', '状态', '20', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('1a68006e-e11d-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '464e50f9-7ef0-4904-b962-15bb2d7e7a47', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('1a68012b-e11d-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 讲者申请列表
INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `formula`, `sort_field`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_readonly`, `style`, `detail_disabled`, `configurations`, `aggregate_field`, `owner`, `primary_filter`, `report_id`, `primary_filter_configurations`, `external_condition`, `db_hint`, `mode`) VALUES
('11620180-e120-11ea-bc49-0215c63fce1a', '02d88fe8-f8d3-43db-947c-a108aec8d895', 'speaker_dcr_page_list_large', 'rls', 'custom', '讲者申请管理', 'large', NULL, '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '0', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, '{}', NULL, NULL, 'position', NULL, '{\"advanced_position_filter\":true}', NULL, NULL, NULL);

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`) VALUES
('11620383-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '120', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620463-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162053f-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'a41422a3-43c2-4b07-a00a-3515342f2ab3', '机构', '3', '150', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620616-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编辑', '4', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116206f1-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116207cf-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620906-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '120', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116209ec-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620ad1-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620bb8-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '120', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620ca4-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '120', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620d92-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '120', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620e83-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11620f76-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116210a8-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116211a1-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('116212a0-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162139f-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162149f-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '150', '1', '1', '1', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1162159e-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '120', '1', '1', '0', NULL, '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`, `configurations`, `label`) VALUES
('116216a5-e120-11ea-bc49-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', 'd0705a2f-a69a-4234-a8a4-2488430821d3', '1', '0', '1', NOW(), '1', NOW(), '0', NULL, '0', NULL, NULL);

INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('116217ae-e120-11ea-bc49-0215c63fce1a', NULL, 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '11620180-e120-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

update role_to_object_permissions set allow_read = 1, allow_read_all = 1, allow_export = 1, allow_terminate_approval = 0 where id = 'f80b9258-0650-42a1-8a65-40142ac721ce';


-- 医生转讲者计划申请
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('ff7507fb-e121-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'copy_professional_to_speaker_draft_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ff750a16-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ff750afb-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff750bdd-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ff750cba-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff750d9c-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff750e7e-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff750f7a-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751061-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff75114d-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff75123b-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ff75132d-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff75143a-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff75154d-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ff751646-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff75177a-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751877-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751977-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751a7c-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751b80-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('ff751c8a-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('ff751d98-e121-11ea-bc49-0215c63fce1a', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('ff751ea6-e121-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 医生转讲者审批中、审批拒绝、审批通过
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('417948f8-e124-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'copy_professional_to_speaker_submit_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('41794af2-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41794bd8-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41794cba-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41794d9d-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41794e84-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41794f6a-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795069-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795158-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795245-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4179533c-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41795432-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4179552a-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795626-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41795725-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('4179585f-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795962-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795a6b-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795b76-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795c81-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('41795d90-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('41795eb8-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', NULL, '1'),
('41795fcf-e124-11ea-bc49-0215c63fce1a', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('41796144-e124-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('4179625a-e124-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('41796373-e124-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 医生讲者修改计划申请
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('87d31c7a-e125-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'edit_professional_speaker_draft_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('87d31efc-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d31fab-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d3205a-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d32105-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d321b3-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32264-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d3232f-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d323e9-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d324a2-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d3255d-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d3261c-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d326e1-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d327a6-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d3286c-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32989-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32a56-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32b25-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32bf8-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32ccf-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('87d32da6-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d32e80-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'section', NULL, '数据变更对比', '24', '12', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('87d32f5c-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', 'field', 'f6a786e1-bfa6-11e7-962c-c85b76d4d416', '差异信息', '25', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('87d3309c-e125-11ea-bc49-0215c63fce1a', '87d31c7a-e125-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('87d3317e-e125-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '87d31c7a-e125-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 医生讲者修改审批中、审批拒绝、审批通过
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('fdce4bc0-e126-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'edit_professional_speaker_submit_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('fdce4d0f-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce4da8-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce4e42-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce4ed8-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce4f71-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce500d-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce50c2-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5160-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5205-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce52ae-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce5357-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5401-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce54b0-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce5564-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5655-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce570c-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce57c6-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5895-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5954-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('fdce5a15-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce5adb-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'section', NULL, '数据变更对比', '24', '12', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('fdce5ba2-e126-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', 'field', 'f6a786e1-bfa6-11e7-962c-c85b76d4d416', '差异信息', '25', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('7233fed1-e127-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0'),
('72340682-e127-11ea-bc49-0215c63fce1a', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', NULL, '1');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('fdce5cca-e126-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('fdce5d97-e126-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('fdce5f08-e126-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');



-- 产品经理：b72453fc-efdb-11e9-b9aa-0298a739deb2
-- menus
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES
('a09a5cd6-e129-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '7361b2d0-c4ec-11ea-9285-999a0f71b698', '9', '0', '1', NOW(), '1', NOW(), 'null'),
('a09a5e64-e129-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '5c4a7351-b55a-48ff-973f-03699256227b', '5', '0', '1', NOW(), '1', NOW(), NULL);

-- 讲者列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('1466be22-e12a-11ea-bc49-0215c63fce1a', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '840fe531-3aca-4b94-ae09-d10e40f10eb4', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES
('602f7196-e12a-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '0', '0', '0', '0', '1', NOW(), '1', NOW(), '0', '1', '1', '0', '0', '0', '0', '0');

-- 讲者详情
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('bd1b57a6-e12a-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '324574d9-e11a-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL),
('bd1b5b81-e12a-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 讲者申请列表
INSERT INTO `page_list_assignments` (`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`, `order`) VALUES
('166a82b9-e12b-11ea-bc49-0215c63fce1a', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '11620180-e120-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), '1', NULL, NULL);

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_terminate_approval`, `allow_modify_approver`, `allow_create_page_list`) VALUES
('7155b8fe-e12b-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '184f84eb-8532-498c-8d16-b133e2ec08e6', '1', '0', '0', '0', '0', '1', NOW(), '1', NOW(), '0', '1', '1', '0', '0', '0', '0', '0');

-- 讲者申请详情
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('08aca83d-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'ff7507fb-e121-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08aca9c2-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08acaa6f-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08acab1b-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', '417948f8-e124-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('08acabc5-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '87d31c7a-e125-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08acac74-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08acad22-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('08acaded-e12c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'fdce4bc0-e126-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');



-- 审批人电脑端审批时无法查看审批中详情页
update page_layouts set screen_size = 'both' where id = '4e7c669f-1a5a-8c43-9595-93f8c2429256';
update page_layouts set screen_size = 'both' where id = 'acee9eb7-1296-4c4f-9334-802d33045062';



-- 失效医生讲者修改
update page_layout_fields set deleted = 1 where id = 'b2ab4375-3cc9-434c-b116-cdf830398180';
update page_layout_fields set deleted = 1 where id = '1e6e4d69-7717-cb47-ac35-ff34aed480c1';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'c1f8f542-c14b-4644-a264-135468f1acb9';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '0ff83360-c4f0-9f4b-b312-31a6812e23c2';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '9c1b885f-c42f-a342-ae7d-94bbe9afc418';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ee647b95-e35c-11ea-bc49-0215c63fce1a', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ee6482b2-e35c-11ea-bc49-0215c63fce1a', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ee648392-e35c-11ea-bc49-0215c63fce1a', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set `order` = 7, is_mandatory = 1 where id = 'e6255e4e-90cc-1949-b084-491b92f90a24';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ee648475-e35c-11ea-bc49-0215c63fce1a', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('ee64854e-e35c-11ea-bc49-0215c63fce1a', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '1ffb6155-3bfc-0c47-88ec-8c76cf41ae43';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '55c8fbc2-f55d-3f4e-9398-ac97e9394716';
update page_layout_fields set `order` = 12 where id = 'ca98c847-d539-8c41-a769-173f3411d54e';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '1bedb601-2bc5-044e-b199-ecb9f7fe7078';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = 'd424214a-46ca-0e42-b3d4-ea54705b22de';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '553cc68a-1998-1848-bb9d-74838630f83b';

update page_layout_fields set `order` = 16 where id = '58dbe4ff-7388-634a-835c-80ac3ffc57a0';
update page_layout_fields set `order` = 17 where id = 'dba74672-043c-594c-bc8e-645a2f1a6804';
update page_layout_fields set `order` = 18 where id = '1a11cc97-cda8-784b-8422-5927e24f80b2';
update page_layout_fields set `order` = 19 where id = '95f6edff-924e-554c-b084-61a6264160bd';

update page_layout_fields set deleted = 1 where id = '2af3a9b3-0aa6-fa47-9aea-14fc9ce1e8cd';
update page_layout_fields set deleted = 1 where id = 'f8b3e15f-6fe8-1049-9040-19cfcfebeaef';
update page_layout_fields set deleted = 1 where id = 'b39042bc-3241-ec42-93eb-90297f9a9b2f';
update page_layout_fields set deleted = 1 where id = '3469cf43-7b98-6140-a1e7-8bf8e706ac68';
update page_layout_fields set deleted = 1 where id = 'c44b9929-84f3-024c-bc13-de2ba8cf3f3d';
update page_layout_fields set deleted = 1 where id = '1bd87cfa-a4a7-8948-9796-28890cde63ce';
update page_layout_fields set deleted = 1 where id = '3f5cf226-2cbc-4841-bd05-8fdb2fb72a10';
update page_layout_fields set deleted = 1 where id = 'df464b38-6d24-e94f-88f7-453ece2a84bd';
update page_layout_fields set deleted = 1 where id = '05d5625c-0f92-f447-b309-b41733cc9016';
update page_layout_fields set deleted = 1 where id = 'bb2f8936-05a1-fe40-8cf7-e500fbaef473';
update page_layout_fields set deleted = 1 where id = '47f9f6ee-4e03-6840-b1ea-fca8a586e8ec';
update page_layout_fields set `order` = 20 where id = 'a21b353b-dd42-4643-990b-ba65fd5bae5e';

-- 失效医生讲者修改审批中
-- 审批中页面电脑端审批人需要查看
update page_layouts set screen_size = 'both' where id = '1a1187c0-61b7-2d43-a2c9-1876c5027f5f';


update page_layout_fields set deleted = 1 where id = 'a332a6e3-2a68-6744-9911-d5c2d0d1a9f5';
update page_layout_fields set deleted = 1 where id = 'b0761aa2-ed77-4e4d-a897-2cbe951a4dc6';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = '9cb266ba-3864-1742-a40f-f505d886a310';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '2f01918e-79ed-c349-8ce8-731ebd78e556';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '05c35c8a-e549-ce40-bda8-1444edafc0c6';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9dc18c38-e35f-11ea-bc49-0215c63fce1a', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9dc18f9a-e35f-11ea-bc49-0215c63fce1a', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9dc1907e-e35f-11ea-bc49-0215c63fce1a', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set `order` = 7, is_mandatory = 1 where id = '0f24a4d8-1399-734e-8ba3-01e33f743ec0';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9dc1915d-e35f-11ea-bc49-0215c63fce1a', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9dc19239-e35f-11ea-bc49-0215c63fce1a', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = 'b57c54c0-5f2f-6a4a-a958-d31798397485';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '8190e537-2652-014d-8db4-b642c7c8db45';
update page_layout_fields set `order` = 12 where id = 'fabb48a6-fb1c-d04e-8aad-83f74f9db85e';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '72275bc2-c288-cf4c-a43e-17ff434c5930';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = '87303c7d-50f2-9048-b913-66fe54881108';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = 'eb54f596-8162-204c-b24c-4cc1c1b041fc';

update page_layout_fields set `order` = 16 where id = '58ce6319-7617-6c45-a90e-ec77bd46201a';
update page_layout_fields set `order` = 17 where id = 'e18ee2d6-9268-2145-aa09-0fb47fc3aeab';
update page_layout_fields set `order` = 18 where id = 'adb24add-7e57-604a-8b43-9e56389389b6';
update page_layout_fields set `order` = 19 where id = '84263fe3-59a1-a04d-b370-4d5a6014b2ff';

update page_layout_fields set deleted = 1 where id = 'b64a7999-701c-7f44-aeeb-4e01cb08f2a7';
update page_layout_fields set deleted = 1 where id = '6f0d777b-4f73-d44f-a055-a385eedcf1a4';
update page_layout_fields set deleted = 1 where id = '5092679e-9d81-a740-9e17-13c1409fa226';
update page_layout_fields set deleted = 1 where id = '332c843b-ab69-ee49-a5f5-9b439085ef5f';
update page_layout_fields set deleted = 1 where id = 'edaf248b-f9bb-9c4f-8308-01114e9230f8';
update page_layout_fields set deleted = 1 where id = 'cd50798e-72f1-dd47-89da-7462cc70ecfe';
update page_layout_fields set deleted = 1 where id = 'da8e7528-64f5-0a4b-8b2a-79a23d54a9cf';
update page_layout_fields set deleted = 1 where id = '425458e2-b32e-f443-b56a-81e659e36f2c';
update page_layout_fields set deleted = 1 where id = '8240b42b-e3b7-1343-9bb9-73df2465c07d';
update page_layout_fields set deleted = 1 where id = '02a40b8d-ff7d-6446-910f-4948db52cc8a';
update page_layout_fields set deleted = 1 where id = 'f5968011-2fb7-d846-b032-dbd64d1c3d9f';
update page_layout_fields set `order` = 20 where id = '3bcaabee-d0a6-c146-b967-5036c301c36d';



-- 失效医生讲者修改审批拒绝
update page_layout_fields set deleted = 1 where id = '58db263d-21c8-fc4d-bbbb-ddcafb6e7689';
update page_layout_fields set deleted = 1 where id = 'b1a91285-2993-ec4d-8179-2359c5e5094e';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'dd3c9869-74b1-bc4c-9394-a69e9f4efe78';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '2beabfa1-7539-2d48-bf77-81c645cc1923';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '6563e6ef-5e20-d74c-9153-c6791197df11';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('933a99da-e37c-11ea-bc49-0215c63fce1a', '093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('933a9b53-e37c-11ea-bc49-0215c63fce1a', '093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('933a9bef-e37c-11ea-bc49-0215c63fce1a', '093a8815-14b6-d842-be9c-ed92bc382714', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set `order` = 7, is_mandatory = 1 where id = '4fae53f2-5558-f241-b13c-8d96b29e4886';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('933a9c8a-e37c-11ea-bc49-0215c63fce1a', '093a8815-14b6-d842-be9c-ed92bc382714', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('933a9d25-e37c-11ea-bc49-0215c63fce1a', '093a8815-14b6-d842-be9c-ed92bc382714', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = 'd1fa6837-5423-484f-8767-6f565cccb912';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = '5e8a7cea-ff8f-c448-90d6-309146ce6336';
update page_layout_fields set `order` = 12 where id = 'a3979c5f-452f-c945-8910-8568a7121c76';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = 'd94678c7-425f-834c-a3ed-b2fef61e30a3';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = '19046663-17a0-824e-b29a-0373f212b9ef';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = 'cdc519fe-d598-784d-866c-8ce3dbb2c3f3';

update page_layout_fields set `order` = 16 where id = '5306e0c6-da9e-704e-b7ea-d1ec49cfe959';
update page_layout_fields set `order` = 17 where id = '97fa9a32-b71e-bd44-83b4-60ce6ea2d7bc';
update page_layout_fields set `order` = 18 where id = '14b2491a-87d6-2c41-80b5-2e4acdc93b0a';
update page_layout_fields set `order` = 19 where id = 'b3e64d21-453d-494c-a402-40cdbd2b654b';

update page_layout_fields set deleted = 1 where id = '62058178-b32d-2346-9510-94c7c83164d5';
update page_layout_fields set deleted = 1 where id = '4e05c552-fd7f-9b4d-9cbc-d3e46676d067';
update page_layout_fields set deleted = 1 where id = 'eda91e7e-efac-3f4c-afcf-87ff5d6843a0';
update page_layout_fields set deleted = 1 where id = '064e0024-3acb-994f-8d4e-b0b3822b3f18';
update page_layout_fields set deleted = 1 where id = '0eee7bbb-f5e8-7541-a663-fdc64f0320ec';
update page_layout_fields set deleted = 1 where id = 'f9dd4d52-5ca6-e443-9d5c-571322ec7c7f';
update page_layout_fields set deleted = 1 where id = '9968ea39-f31e-a442-b953-79933f17bf95';
update page_layout_fields set deleted = 1 where id = '678c2d8c-41f1-084b-a281-df187fefdc69';
update page_layout_fields set deleted = 1 where id = 'da0daf7b-b7c0-1542-b04d-5437f0213add';
update page_layout_fields set deleted = 1 where id = 'aa9bae70-e7ad-ad4c-a2bb-a676c3ac7040';
update page_layout_fields set deleted = 1 where id = '5698ef19-6b21-3c42-9647-8baf832e76d5';
update page_layout_fields set `order` = 20 where id = 'c62f8cc2-1b79-ec4e-92ce-2b71ff698544';



-- 失效医生讲者修改审批通过
update page_layout_fields set deleted = 1 where id = '01fe59e3-ca19-7f42-8e57-213cf3e98323';
update page_layout_fields set deleted = 1 where id = 'babc8abf-730b-8f42-a68c-e281236da516';
update page_layout_fields set label = '姓名', `order` = 1, is_readonly = 1 where id = 'b0d1c48f-da85-f446-97c4-7c749033520b';
update page_layout_fields set object_field_id = '4fe6721f-dd0a-11ea-bc49-0215c63fce1a',display_mode='view' where id = '4f9b045d-65f4-de4b-9d26-0b0d5f3f73a1';
update page_layout_fields set `order` = 3, is_readonly = 1 where id = '60310ff3-5cf0-b54c-a20f-fc2e642dff59';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cdd57de-e380-11ea-bc49-0215c63fce1a', 'cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cdd5b1f-e380-11ea-bc49-0215c63fce1a', 'cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cdd5bb7-e380-11ea-bc49-0215c63fce1a', 'cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set `order` = 7, is_mandatory = 1 where id = '19b86cca-6992-074f-8c1a-d1216f7d332d';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cdd5c50-e380-11ea-bc49-0215c63fce1a', 'cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('0cdd5ce6-e380-11ea-bc49-0215c63fce1a', 'cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set `order` = 10 where id = '56c69204-67a2-3b46-aa4e-d12a98b2321a';
update page_layout_fields set `order` = 11,is_mandatory = 0 where id = 'e4e1e16e-f18c-cd4b-b6e3-7794a31f844b';
update page_layout_fields set `order` = 12 where id = 'db5afe18-95c1-2d4b-9fb2-65afe7ba2c16';
update page_layout_fields set `order` = 13, label = '身份证', is_readonly = 1 where id = '4bab8662-1b67-1249-8be1-fbcc4c8f43ea';
update page_layout_fields set `order` = 14, label = '银行账号', is_readonly = 1 where id = '8c4f71aa-9a58-f94c-98ce-cee2fd4431de';
update page_layout_fields set `order` = 15, label = '开户行', is_readonly = 1, object_field_id = '000a8461-9e86-4624-8ae1-2b1477710d79' where id = '0f8e467c-f6d6-1343-a692-2fdb5886e83a';

update page_layout_fields set `order` = 16 where id = '3eb14419-b056-3d44-82e3-f630f099e562';
update page_layout_fields set `order` = 17 where id = 'ac9a57af-f4b6-0546-937c-1ce84e305155';
update page_layout_fields set `order` = 18 where id = '2dab0d03-8f39-534a-8afd-b1c9a51accef';
update page_layout_fields set `order` = 19 where id = '6d3c0eef-4fb9-3449-a6b3-9296059e90a1';

update page_layout_fields set deleted = 1 where id = '508ac18e-ca77-de42-82e3-149d8440015f';
update page_layout_fields set deleted = 1 where id = '42e0712a-4979-2b41-bf06-4414d093bff4';
update page_layout_fields set deleted = 1 where id = 'b4fb929a-42ae-034e-b9a7-5a5c2c95828d';
update page_layout_fields set deleted = 1 where id = 'c2e5b68c-75e3-6041-8aa3-0b513df5c156';
update page_layout_fields set deleted = 1 where id = '6aa4ab8f-85b1-2540-97d0-ad0522d7587c';
update page_layout_fields set deleted = 1 where id = '8c3c8b1e-a16a-754a-bb2a-97c2eff39c26';
update page_layout_fields set deleted = 1 where id = 'c38d277e-3d30-8b47-91ef-79d0ab609113';
update page_layout_fields set deleted = 1 where id = 'c61f14be-b192-aa4a-98e9-f896d73f99f6';
update page_layout_fields set deleted = 1 where id = '32d8a6bc-4484-6641-8bda-2ac8ca44508f';
update page_layout_fields set deleted = 1 where id = 'b39aa632-9c72-224e-a9e4-913777bbe38e';
update page_layout_fields set deleted = 1 where id = '59bc5474-7e30-ee48-8836-1596ff6a5268';
update page_layout_fields set `order` = 20 where id = '1c9d964a-001d-ef48-b159-214f4d2f9481';


-- 主管失效医生讲者修改
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('07bdbc67-e382-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管失效医生讲者修改审批中
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('07bdbeb5-e382-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管失效医生讲者修改审批拒绝
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('07bdbf69-e382-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '093a8815-14b6-d842-be9c-ed92bc382714', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 主管失效医生讲者修改审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('07bdc01a-e382-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'cdf8d19d-231e-124d-80f1-6694be0d8543', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);


-- 失效医生讲者信息修改    地区经理、区域市场经理、产品经理、市场总监需要审批讲者DCR（查看审批中页面权限）
-- 地区经理	5a013aaa-b5c5-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf0e4-e38c-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 产品经理	b72453fc-efdb-11e9-b9aa-0298a739deb2
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf53f-e38c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 市场经理	a99fcd69-b5ff-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf60d-e38c-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);

-- 市场总监	b72453fc-efdb-11e9-b9aa-0298a739dec0
-- 市场总监失效医生讲者修改计划申请、审批中、审批拒绝、审批通过
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf6df-e38c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf7b7-e38c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf899-e38c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '093a8815-14b6-d842-be9c-ed92bc382714', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('42fcf981-e38c-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'cdf8d19d-231e-124d-80f1-6694be0d8543', '0', '1', NOW(), '1', NOW(), NULL, '1', NULL, NULL);



-- 电脑端：SFE、市场经理、产品经理
-- SFE
-- 失效医生讲者修改计划申请
update page_layout_fields set deleted = 1 where id = 'ad1b2d17-69d7-4437-b801-f9e06ecb9878';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3bea9-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = '55f6d960-6d9d-4592-b548-bc0f6df976c6';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c0bc-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c167-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c20d-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c2b1-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c358-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c406-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = '06a8b5f4-bff9-4547-a76f-46eb7989b8cb';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c4cd-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c57d-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = '875f7fb8-3295-4dca-aae1-b8b8747bcf2e';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c630-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c6e7-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('f2f3c79e-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('f2f3c85b-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('f2f3c916-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('f2f3c9d7-e39d-11ea-bc49-0215c63fce1a', 'cbbcda03-100b-4df2-b976-fc7ae907f377', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set deleted = 1 where id = '88afdcc3-4b3a-4306-8310-2b452501b156';
update page_layout_fields set deleted = 1 where id = 'd40417fb-5461-4f3c-876c-fbfb2a39c53c';
update page_layout_fields set deleted = 1 where id = '9389aaec-2859-4bb6-973c-ba04b08799a8';
update page_layout_fields set deleted = 1 where id = '03e19ea4-1343-4d45-9785-4d5f266ac9f3';
update page_layout_fields set `order` = 20 where id = '4a1c9503-52a1-439d-9c0e-885c197597b4';

update page_layout_fields set `order` = 24 where id = '325bcc7b-a8d3-48aa-b73b-aeeb35365463';
update page_layout_fields set `order` = 25 where id = 'dccdd679-6a1f-48a7-8327-77ed4c36e28f';


-- 失效医生讲者修改审批中、审批拒绝、审批通过
update page_layout_fields set deleted = 1 where id = 'fd5ff75f-0d59-4cb5-bea8-9ee351a95014';

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4796-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 3, object_field_id = 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where id = 'd811172f-0034-4843-acec-5a12d0a65507';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4996-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4a5d-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4b24-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4bec-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4cb6-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4d81-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
update page_layout_fields set `order` = 10 where id = 'afec26c8-a43f-4746-b2e0-d12a9caca6e0';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4e61-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b4f33-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

update page_layout_fields set label = '身份证', `order` = 13 where id = '48c7e9aa-f170-4eff-be46-ddadea96bb78';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b5004-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b50d8-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('193b51ae-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('193b5287-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('193b5361-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('193b5443-e39f-11ea-bc49-0215c63fce1a', '66bb4069-577f-4d21-9757-172ba081d74a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


update page_layout_fields set deleted = 1 where id = 'd258c61f-b3b8-4750-832a-92bb2b4c5331';
update page_layout_fields set deleted = 1 where id = '2ec10718-3fbc-4d96-b34d-413eb1d0903b';
update page_layout_fields set deleted = 1 where id = 'eb8c0f0c-1fe9-4202-be49-2bc8157927fa';
update page_layout_fields set deleted = 1 where id = '923def96-58b9-48d2-9021-400585befce6';
update page_layout_fields set `order` = 20 where id = '4a1c9503-52a1-439d-9c0e-885c197597b4';

update page_layout_fields set `order` = 24 where id = 'c9d012f0-7cb5-4edf-b7f5-b8de7e0d1a5a';
update page_layout_fields set `order` = 25 where id = '464f2286-7f53-4858-95c0-c436f5912de6';



-- 市场经理
-- 失效医生讲者修改计划申请
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('979aebbe-e3a0-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'edit_professional_speaker_draft_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('b322e0ae-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322e2df-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e37c-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322e414-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e4ac-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e543-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e5dd-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e695-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e73b-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e7de-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322e884-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e92b-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322e9d7-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322ea86-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322eb36-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322ec26-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322ecfa-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322edb2-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322ee6e-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('b322ef2b-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322efed-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'section', NULL, '数据变更对比', '24', '12', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b322f0b2-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', 'field', 'f6a786e1-bfa6-11e7-962c-c85b76d4d416', '差异信息', '25', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('b322f177-e3a0-11ea-bc49-0215c63fce1a', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('b322f2a0-e3a0-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 失效医生讲者修改审批中、审批拒绝、审批通过
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`) VALUES
('26744a6a-e3a1-11ea-bc49-0215c63fce1a', '4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'edit_professional_speaker_submit_l', '讲者DCR详情', 'custom', 'large', '0', '1', NOW(), '1', NOW(), NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('34f467df-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '姓名', '1', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f46977-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '4fe6721f-dd0a-11ea-bc49-0215c63fce1a', '讲者编码', '2', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46a02-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'a1f5ef04-be34-4f77-86dd-3c5f2dabfc82', '机构', '3', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f46a91-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'fd0820de-dad8-11ea-bc49-0215c63fce1a', '医院编码', '4', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46b3d-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'e6d834c0-55ea-4e42-b909-80416ac1e1e1', '关联医生', '5', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46bcb-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '3f9e4823-dbbc-11ea-bc49-0215c63fce1a', '目标医生级别', '6', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46c59-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '7', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46d04-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '52c0e0a6-ee3c-4a07-919b-52dfa632939e', '学会任职(学会和职务)', '8', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46d98-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '62f8c74d-02ed-4001-aac6-ab87b2a8e487', '发表文献', '9', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46e30-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '10', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f46ecd-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '11', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f46f6b-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '12', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f47008-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '身份证', '13', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f470a7-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行账号', '14', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f4714a-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '开户行', '15', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f4722c-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '16', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f472d4-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '17', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f4737f-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '修改时间', '18', '6', '0', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f4742e-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '19', '6', '0', '1', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL),
('34f474df-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '状态', '20', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f47594-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'section', NULL, '数据变更对比', '24', '12', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34f4764f-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', 'field', 'f6a786e1-bfa6-11e7-962c-c85b76d4d416', '差异信息', '25', '6', '1', '1', 'view', NULL, '0', '1', NOW(), '1', NOW(), '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `configurations`, `is_readonly`) VALUES
('34f47707-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '0', '0', '1', NOW(), '1', NOW(), 'a67d9bef-91fa-4345-852d-0826205a7131', NULL, '0'),
('34f47823-e3a1-11ea-bc49-0215c63fce1a', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '1', '0', '1', NOW(), '1', NOW(), '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', NULL, '1');

INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('34f478e2-e3a1-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('34f479a5-e3a1-11ea-bc49-0215c63fce1a', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 产品经理
-- 失效医生讲者修改计划申请
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('2fa78caa-e3a2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '979aebbe-e3a0-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');

-- 失效医生讲者修改审批通过、审批拒绝
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('2fa78f16-e3a2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null'),
('2fa78fd8-e3a2-11ea-bc49-0215c63fce1a', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '26744a6a-e3a1-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');
