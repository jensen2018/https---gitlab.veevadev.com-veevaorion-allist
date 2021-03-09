-- 电脑端SFE讲者信息修改及附件上传

-- SFE修改讲者附件
update role_to_object_permissions set allow_update_attachment = 1 where id = 'ed28cc43-e28d-11e9-b9aa-0298a739dec0';

-- 生效讲者页面
-- 启用custom_field添加字段“是否全国顾问专家”，电脑端和微信端，仅SFE可编辑，其他仅查看
-- 启用boolean_2
update object_database_columns set used = 1 where id = '9ec6c40b-ff4b-4fe3-9815-1ce7ca40147e';
update object_fields set `name` = 'cs_is_national_advisory',label = '是否全国顾问专家', description = '是否全国顾问专家' where id = 'c8d20c35-afcc-4539-bf3a-1c915599ea3a';


-- 生效讲者页面可编辑
update page_layout_actions set deleted = 0 where id in (
'1774f498-34eb-4dd3-838d-dda28fc5eae9',
'384a2f5c-db88-448d-ac1a-34a71cb5f16e'
);

-- 调整SFE可修改讲者的字段
-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = 'b9d63318-5171-4b09-bcf9-27e551abbdf0' and deleted = 0 and `order` >7;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('4eca0bb3-e778-11ea-bc49-0215c63fce1a', 'b9d63318-5171-4b09-bcf9-27e551abbdf0', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

-- 允许编辑
update page_layout_fields set is_readonly = 0
where id in (
'3782069d-149f-4382-b13a-0253558f320e',
'a259ab6e-feb3-400a-85da-a6b4ef1bbe3c',
'e0863034-583b-4603-af6f-68e94e83f921',
'573fdddf-e050-11ea-bc49-0215c63fce1a',
'573fde88-e050-11ea-bc49-0215c63fce1a',
'4743769e-63ab-4343-9e7f-e7ceebcbe052',
'cde7231f-d63c-4c47-9ec3-c669c4e5b854',
'c8d118e0-e7e6-49a2-b5c0-fe190bb20f05',
'c9cfb95e-bf1f-41ba-8d62-3cb1726fcf38',
'906829d7-c4f8-44f4-9420-7b73c79beb66',
'12f69759-723a-4c7a-b255-8a861e7c1652'
);

-- 必填
update page_layout_fields set is_mandatory = 1
where id in (
'3782069d-149f-4382-b13a-0253558f320e',
'a259ab6e-feb3-400a-85da-a6b4ef1bbe3c',
'e0863034-583b-4603-af6f-68e94e83f921',
'4743769e-63ab-4343-9e7f-e7ceebcbe052',
'c8d118e0-e7e6-49a2-b5c0-fe190bb20f05',
'c9cfb95e-bf1f-41ba-8d62-3cb1726fcf38',
'906829d7-c4f8-44f4-9420-7b73c79beb66',
'12f69759-723a-4c7a-b255-8a861e7c1652'
);

-- 失效讲者页面
-- 生效讲者页面可编辑
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`, `configurations`, `label`) VALUES
('6964762f-e77d-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'bf699cd4-a26c-4b0d-a5d9-5ee633a9c61d', 'edit', '1', '0', '1', NOW(), '1', NOW(), NULL, '0', NULL, NULL, NULL),
('696478b5-e77d-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', '16f99040-65dc-4494-8d7f-9990b76418de', 'view', '1', '0', '1', NOW(), '1', NOW(), NULL, '0', NULL, NULL, NULL);

-- 调整SFE可修改讲者的字段
-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = 'e93247bf-e054-11ea-bc49-0215c63fce1a' and deleted = 0 and `order` >7 ;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('c5963f1d-e77d-11ea-bc49-0215c63fce1a', 'e93247bf-e054-11ea-bc49-0215c63fce1a', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

-- 允许编辑
update page_layout_fields set is_readonly = 0
where id in (
'8ee7e6b2-e055-11ea-bc49-0215c63fce1a',
'8ee7ea1e-e055-11ea-bc49-0215c63fce1a',
'8ee7eda7-e055-11ea-bc49-0215c63fce1a',
'8ee7eea1-e055-11ea-bc49-0215c63fce1a',
'8ee7efaf-e055-11ea-bc49-0215c63fce1a',
'8ee7f099-e055-11ea-bc49-0215c63fce1a',
'8ee7f188-e055-11ea-bc49-0215c63fce1a',
'8ee7f276-e055-11ea-bc49-0215c63fce1a',
'8ee7f36d-e055-11ea-bc49-0215c63fce1a',
'8ee7f460-e055-11ea-bc49-0215c63fce1a',
'8ee7f557-e055-11ea-bc49-0215c63fce1a'
);

-- 必填
update page_layout_fields set is_mandatory = 1
where id in (
'8ee7e6b2-e055-11ea-bc49-0215c63fce1a',
'8ee7ea1e-e055-11ea-bc49-0215c63fce1a',
'8ee7eda7-e055-11ea-bc49-0215c63fce1a',
'8ee7f099-e055-11ea-bc49-0215c63fce1a',
'8ee7f276-e055-11ea-bc49-0215c63fce1a',
'8ee7f36d-e055-11ea-bc49-0215c63fce1a',
'8ee7f460-e055-11ea-bc49-0215c63fce1a',
'8ee7f557-e055-11ea-bc49-0215c63fce1a'
);



-- 讲者详情添加“是否全国顾问专家”字段，其他角色仅查看
-- 微信端：代表、主管、SFE
-- 53de6f5e-1da3-11e6-b011-5cc5d4b57134
-- b74845ad-b5fe-11ea-aab5-0215c63fce1a
-- 53de9674-1da3-11e6-ac97-5cc5d4b57137
-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = '4d4783ac-0b26-bf4f-939d-5185b27fca85' and deleted = 0 and `order` >7;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9900f316-e782-11ea-bc49-0215c63fce1a', '4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = '48fa1e34-445d-494d-ba7f-747805a712eb' and deleted = 0 and `order` >7 ;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('9900f53d-e782-11ea-bc49-0215c63fce1a', '48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);


-- 电脑端：产品经理、市场总监
-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = '324574d9-e11a-11ea-bc49-0215c63fce1a' and deleted = 0 and `order` >7 ;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('aead755a-e783-11ea-bc49-0215c63fce1a', '324574d9-e11a-11ea-bc49-0215c63fce1a', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);

-- 调整字段顺序
update page_layout_fields set `order` = `order` + 1 where page_layout_id = '1a67ee6b-e11d-11ea-bc49-0215c63fce1a' and deleted = 0 and `order` >7 ;

-- 添加字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`) VALUES
('aead76c1-e783-11ea-bc49-0215c63fce1a', '1a67ee6b-e11d-11ea-bc49-0215c63fce1a', 'field', 'c8d20c35-afcc-4539-bf3a-1c915599ea3a', '是否全国顾问专家', '8', '6', '0', '0', 'both', NULL, '0', '1', NOW(), '1', NOW(), '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL);
