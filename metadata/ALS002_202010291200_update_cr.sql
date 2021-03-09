-- 修改讲者详情页字段
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = '60ef6404-34ca-0441-b62d-aaf45a5483d9');
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = '3a536861-3fe2-9649-bac8-eccb9bc10164');
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = '27ba724a-83f2-e84c-a32f-08c6bec243cc');
UPDATE `page_layout_fields` SET `label` = '申请状态' WHERE (`id` = 'dcb655c7-dc63-6249-8c4f-42620e3e4fb3');
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = '7257bd95-e387-9d47-a0d1-cc4d47dfe830');
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = 'e7fc78c6-c4c3-de46-ba25-d3125dbbc934');
UPDATE `page_layout_fields` SET `is_readonly` = '0' WHERE (`id` = '07eb28fe-fcfa-654b-ada2-3abd554a4238');
UPDATE `page_layout_fields` SET `label` = '申请状态' WHERE (`id` = 'a1690062-8f3c-2343-8b42-a61f1cfb9c2c');
UPDATE `page_layout_fields` SET `label` = '申请状态' WHERE (`id` = '79d46c12-61eb-ff4f-9dcd-34eb380d6cd8');
UPDATE `page_layout_fields` SET `label` = '申请状态' WHERE (`id` = '9f6e2063-cbd6-d645-83bf-7c7a18fb1c78');
-- 启用text_2字段作为学会/供应商字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '1043e38b-3bb6-4304-acd4-298c9f485307');
UPDATE `object_fields` SET `name` = 'cs_event_logistic', `label` = '学会/供应商' WHERE (`id` = '2f5c65f1-c825-4298-8836-10e5bf16e557');
UPDATE `page_layout_fields` SET `object_field_id` = '2f5c65f1-c825-4298-8836-10e5bf16e557' WHERE (`id` = 'aad78417-eb76-11ea-bc49-0215c63fce1a');
-- 大区经理新增创建随访权限
UPDATE `role_to_object_permissions` SET `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '69946879-b173-4cd7-b2af-f538de9da79f');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('12ea151e-9bce-435c-a06a-bd0b281ce4ff', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '5d8eg1db-cb61-4f3e-b761-51fe15eadf2b', '0', '0', '1', '2020-10-10 13:15:37', '1', '2020-10-10 13:15:37');
UPDATE `role_to_object_permissions` SET `allow_create` = '1', `allow_update` = '1', `allow_delete` = '1' WHERE (`id` = '2c8b91e8-fc4f-11e9-b9aa-0298a739dec0');
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `tips`) VALUES ('21194429-d8f5-4248-8ee3-27f2b845577e', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '5d8eg1db-cb61-4f3e-b761-51fe15eadf2b', '1151g253-0252-4fdc-b7cf-718002d37fc0', '0', '1', '2020-10-10 13:15:37', '1', '2020-10-10 13:15:37', 'null');
-- 配置能被随访的角色
UPDATE `custom_settings` SET `value` = '[\"53de6f5e-1da3-11e6-b011-5cc5d4b57134\",\"b74845ad-b5fe-11ea-aab5-0215c63fce1a\"]' WHERE (`key` = 'coaching_allowed_coaching_roles');
-- 修改大区经理随访类型
UPDATE `role_to_object_record_types` SET `object_record_type_id` = '441d51b0-75a3-11e6-a00a-5cc5d4b51432' WHERE (`id` = 'c755377c-ab48-4504-9487-a1375220e848');