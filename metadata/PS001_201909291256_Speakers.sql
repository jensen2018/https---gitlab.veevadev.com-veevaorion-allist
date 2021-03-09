-- 代表授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('694c4e29-db82-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '930c4396-2c6e-44f0-b384-4d0f1b7e1c78', '8', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('337ab985-db83-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '1', '1', '0', '0', '1', '2019-09-20 11:43:02', '1', '2019-09-20 11:43:02', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('87786aeb-db83-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '184f84eb-8532-498c-8d16-b133e2ec08e6', '1', '1', '1', '0', '0', '1', '2019-09-20 06:44:29', '1', '2019-09-20 06:44:29', '0', '0', '0', '0');

UPDATE `custom_settings` SET `value`='\"all\"' WHERE `id`='32';

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('25b750e8-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3f20a889-7444-45a4-8738-0cddafb7080e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('501a8046-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('95b2fae1-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '67225045-d324-4b6a-81e6-b44b64ebd06a', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ba119846-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c8593501-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '009fb838-b997-4eba-b9ce-bf37794093bf', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('da4c7981-db88-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '04b4a611-4046-4a75-b4c3-09afc214940f', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');

INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `formula`, `sort_field`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6c2ad89f-deb0-11e9-b9aa-0298a739dec0', '02d88fe8-f8d3-43db-947c-a108aec8d895', 'cs_speaker_dcr_page_list_small', 'rls', 'custom', '讲者新增与维护', 'small', NULL, '83cba607-6959-4bb7-9928-6629f831821a', '1', '0', '1', '2019-09-20 10:33:29', '1', '2019-09-20 10:33:29');

insert page_list_fields select uuid(), '6c2ad89f-deb0-11e9-b9aa-0298a739dec0', object_field_id,label,`order`,width,allow_filter,allow_sort,is_default,configurations,deleted,
created_by,now(),modified_by,now(),null,null,null,null,null,null,null,null from page_list_fields where page_list_id='d3fbde08-32b7-4547-8e0d-3c79e6cdae67';

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('70603ac1-deb1-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '6c2ad89f-deb0-11e9-b9aa-0298a739dec0', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');

UPDATE `custom_settings` SET `value`='true' WHERE `id`='15';

-- dcr pagelayout  tab  aciton 与全角色授权
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('821cadab-7be7-374f-8ed2-6031f5e30777','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_draft_s', '新增非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('907d7a7b-e5f6-114e-a7af-a13b855a8853','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_sent_approval_s', '新增非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('061b3348-20e2-c84d-a115-2c8337a39a04','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_rejected_s', '新增非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('b61abaa1-da92-8d4c-882d-75da206a8078','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_approved_s', '新增非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('3ff99872-c49e-fb43-bb16-779eee8e643c','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_draft_s', '新增医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('4e7c669f-1a5a-8c43-9595-93f8c2429256','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_sent_approval_s', '新增医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('90b2d3e1-77c4-d141-a7fc-60693499dadc','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_rejected_s', '新增医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('def823dd-2766-284a-9610-b480d82c171c','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_approved_s', '新增医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('4f9edffa-48dd-bf49-9ff0-34c22266eff4','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_draft_s', '修改医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('acee9eb7-1296-4c4f-9334-802d33045062','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_sent_approval_s', '修改医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('50a398ca-f609-9449-bc39-cb0bbc132394','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_rejected_s', '修改医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('3db20274-a58e-7340-9de0-d451eb968781','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_approved_s', '修改医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('8c2fbe41-6531-2147-a15b-2a00c4c213c2','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_draft_s', '修改非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('57be7011-0cc9-7845-8ff2-2ac898cc9a0b','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_sent_approval_s', '修改非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('de908092-b5bc-c84c-b29d-d5c678df4d28','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_rejected_s', '修改非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_approved_s', '修改非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('e369df16-dff2-7d45-b0fc-a0d42fdb4146','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_draft_s', '修改失效医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('1a1187c0-61b7-2d43-a2c9-1876c5027f5f','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_sent_approval_s', '修改失效医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('093a8815-14b6-d842-be9c-ed92bc382714','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_rejected_s', '修改失效医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('cdf8d19d-231e-124d-80f1-6694be0d8543','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_approved_s', '修改失效医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('840e7b6c-bb5c-a84d-b0af-b9a418e67411','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_draft_s', '修改失效非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('106dff8a-d2a8-f846-a3f5-cb858a4fe528','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_sent_approval_s', '修改失效非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('be93eec1-f36d-764a-a788-c0d76f495946','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_rejected_s', '修改失效非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('600d4025-16fb-2b49-be9d-a6f337c6ee35','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_approved_s', '修改失效非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('1a72d236-c1d2-bd40-9160-cb636199c9fb','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_draft_l', '新增非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('4a1f54de-056b-de48-8816-b382b10dafce','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_sent_approval_l', '新增非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('ddd60496-2cef-bf4b-a894-810bad4ceb77','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_rejected_l', '新增非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('f741dde1-4384-2043-b5c9-339b2385b00b','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_add_speaker_approved_l', '新增非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('768e2b6b-6cf4-a942-bf01-09c40696b353','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_draft_l', '新增医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('567af9aa-189e-404f-b951-f9f90fee228c','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_sent_approval_l', '新增医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('a2942072-9497-6347-b282-c364f6c19046','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_rejected_l', '新增医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('4008707c-8718-bd4b-932e-fb3e059186b0','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_add_speaker_approved_l', '新增医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('b67a0ee0-92a3-424b-85b6-1fdef416449e','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_draft_l', '修改医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('528bad7b-0d77-2a4a-84c2-2d70b4323609','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_sent_approval_l', '修改医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('d4a07436-95ae-6c46-b6c8-ff0938892fac','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_rejected_l', '修改医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('b2231bc1-81b0-e94f-921c-651fd4b235c5','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_professional_edit_speaker_approved_l', '修改医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('d2ae0bf1-d036-3147-9a93-36112a5a67a2','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_draft_l', '修改非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('b73f7ecf-7581-3c47-b124-05a1dc3c2662','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_sent_approval_l', '修改非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('09e1f3f7-a46b-414a-b83f-522eb8097c10','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_rejected_l', '修改非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('9cb9ef3c-48c5-2b47-a402-10e2fe49018b','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_no_professional_edit_speaker_approved_l', '修改非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('8f128ca9-f180-9e43-b774-129b8c3b3539','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_draft_l', '修改失效医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('5b86b29d-9431-3743-91ae-4576f6a4334a','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_sent_approval_l', '修改失效医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('d8211b79-43c2-b74d-9a70-ede664c5cdf3','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_rejected_l', '修改失效医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('47286116-9817-f945-af69-8321029caf5d','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_professional_edit_speaker_approved_l', '修改失效医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('2c01cb50-3274-5d48-9b00-1478575c55df','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_draft_l', '修改失效非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('7202215f-9144-7745-8ad8-150f6319c9d2','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_sent_approval_l', '修改失效非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('5cd831e0-b318-434d-bd13-bd7e0bb86459','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_rejected_l', '修改失效非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('fe114e4d-6b9e-8247-982c-20cbf9c68a6d','4aa364b0-c209-4aa3-ac42-de3f85c94bad', 'cs_ineffective_no_professional_edit_speaker_approved_l', '修改失效非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('782a8a0a-ffb5-cd44-b1e0-422b5b99d616','821cadab-7be7-374f-8ed2-6031f5e30777', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47202caa-2936-9349-a7f2-34a13dfc5e47','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cac565ee-4312-194b-aa68-4048a0f7cc4e','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1479134-cbc0-ca44-a548-4c60213ab505','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a85b92d-e9c9-5948-b0f7-503aab39feb4','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2dfaee84-63d9-9a4c-8d96-b549a3617ae0','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('557acaba-9bec-a647-b900-03c4bf4534d3','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('092c8cf6-93af-fe4b-aac4-d2c07bf1e280','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87d5b781-ecc5-cf45-a60e-42f4eb9d706d','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c634a4f2-36e8-ab4b-b0c8-e7c3066e1359','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6594f534-e97f-1c4a-9efc-0dc3936d2e04','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1c6d9ca-dea8-8348-a70c-deef5f344e28','821cadab-7be7-374f-8ed2-6031f5e30777', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c218db8-16c6-3f40-89e3-4306b234a356','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('efd54ac0-11f1-5e4d-b945-232791647a5b','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f3be1deb-60e8-1945-bd30-10f3eb79dd2b','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc55f327-4806-9a48-a1c4-d2b63af22202','821cadab-7be7-374f-8ed2-6031f5e30777', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5d71e4c6-09cf-a443-a20f-c0b37d13e103','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('044fda07-bd40-4c4d-9951-84facaf53690','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aafe34da-a07f-d542-b71f-500751048884','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8561c6ee-8291-794b-9511-5473e5e891e3','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1f17907e-a054-2e44-b073-0eee3c51b76a','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f6e656ba-b45c-1844-b5c2-f512911566c9','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8243c782-415c-2b42-bfc4-53243e35cf4e','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70ad2b77-fe57-584b-a9bc-f2c10c1fe1a2','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b72a4095-cbf8-5d40-823a-ebab89734154','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b4944acd-031d-bd48-9730-929f7574f608','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('400ea633-74f4-6248-a113-809a53dd2c4e','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('93d31785-24fb-454e-aef2-9c757f5cab6d','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('124c4132-5ff3-714d-9336-0c613b0e36c3','821cadab-7be7-374f-8ed2-6031f5e30777', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('71cb139a-fce7-b040-97aa-6a95f813f15a','821cadab-7be7-374f-8ed2-6031f5e30777', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('35285572-fa79-8c42-b06a-5765c9acadec','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f41028b4-0e5e-2047-8c24-7d44b2686ee4','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dac4c5a5-8749-7245-a5fd-06650c66351f','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a9fd0fdf-8cb9-824d-b1cd-7f30ec814e46','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c7adca3d-44b7-624b-acda-52918bf18d41','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('72dada69-74d5-af4c-b49b-c46d6d5cb2bc','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e919d86e-2420-7c47-8d2e-e584978e57d6','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1523b7b-4bf9-ed48-8ece-154bf25aa8f5','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4d29fb8d-bbc1-6e4b-b5e1-3cbca21173bd','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5015c35-4540-7f4a-9d3a-63e9ce897802','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('adcc73f1-bc09-1c49-86b4-a4d724c18f3d','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cf3652c2-fecd-6f46-b45f-800e3e1229ca','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8d79e82-8b31-2745-a028-6e2170a4cd17','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('83099bbf-822d-2142-9d41-5881b6eca613','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8bb7f51d-726b-4344-aabf-358196bd147b','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e0832b2-0201-674c-89a5-b56e23074dd1','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76192870-5b8f-9042-bee7-dfdaeb1d2e8f','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a92e6c43-85f0-5748-a7f2-fc8861b30779','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c7b1dbb-a03c-6249-8f1c-ce89018a936c','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7146d44c-67fd-604e-818d-823639d04b98','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0a4f5a16-c72b-9448-afcc-fbd99d47b08b','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f2b144c-7b38-1746-bf3f-52bf1e75543c','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2d35e286-09d3-3441-8d7a-92ebe5f6248e','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47eab572-0d1a-fe41-b184-7ffe2d6dbb10','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c753615-92cd-5648-a2ad-aa9da0df952c','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('86cf20bb-a9e4-774b-abed-4226b9b02520','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4717122c-1063-194c-b765-238cff22ddb6','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('205a188a-913e-4846-bb0c-0be3f32c177e','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a55c3f5e-44cb-b943-8bbe-9de37555328a','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('69668a9d-c311-d44a-bd47-aa2d74d1679d','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('22859772-c7bb-854d-8b65-84aeb8c6d1ed','061b3348-20e2-c84d-a115-2c8337a39a04', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('689467dd-32c0-4341-a496-c0b87b18d351','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('38664b2a-14c2-8246-adfc-0ed167173807','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7412642b-5c13-5d44-99ee-c2c9da7f3c84','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bdd4d74e-3e4f-a944-a926-21f04ccec1b3','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a4147fc1-3beb-1e4b-b66b-5638b2ec2b30','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41d6e2bb-81bc-a24b-a676-639b9765a861','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('49459919-8282-d247-b825-be7d251b44df','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('124a94b1-ebae-7842-b7d0-c48ded47aa12','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('912532e5-7642-004e-830b-216bc1a0d520','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7fe67974-f75e-0c4c-aed1-2e87d4d560c1','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('720adc7b-8038-1045-a8be-0d9fe7490418','061b3348-20e2-c84d-a115-2c8337a39a04', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77f7ebd8-bbad-4546-a65f-c07795f74526','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9b77712e-4f25-f241-b2fa-96dff2b71267','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e8e55ae-80ea-c04e-bac7-c0d5ab771cd4','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd1727c4-b0da-c146-a8a9-7eebe6fa75c3','061b3348-20e2-c84d-a115-2c8337a39a04', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('93779f09-6982-b144-b78a-6ce99a1bd189','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13957255-4226-e340-bd52-b29ef1dca2a4','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('27443706-ec49-e14b-af87-05de8bad53db','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b30dea4-0d11-dc40-8e77-8db8acf55575','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b544ee9-ace4-1d45-b886-c9d9187f265b','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c74179f4-53af-b646-847d-1a44d3732fee','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dcdd74a0-ec4c-c345-8c58-41cf093d8b5c','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc339566-60d5-8b47-8541-5a02e4ecd3b6','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd13f8cd-c3cc-b347-862b-a280a7716aaf','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3f8ccdd2-f985-874b-82e3-cc6542a73730','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('744870e1-1a1e-a34c-9d21-397f9038180e','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f46f8be5-3e90-e34e-b6aa-359fa5d5dcd9','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a3fa4742-2612-cf4a-958f-94134fb5340b','061b3348-20e2-c84d-a115-2c8337a39a04', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2d7d4e3d-a012-634d-82e3-cf6c297cb65b','061b3348-20e2-c84d-a115-2c8337a39a04', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('2c93f9e4-d82a-0a48-9fef-f3a031c4430f','b61abaa1-da92-8d4c-882d-75da206a8078', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('163b8ba8-027d-5149-95a6-d2418a4e5dc0','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fe7bf1c-e372-bd4e-a4e1-33a786a01887','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0e738dd-49fd-6c49-bbbf-24147560665b','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b60eaa9b-d196-c04d-850f-621e3279030c','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b05ad5b-d3dc-fa47-b238-24c15860f1a1','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa09cf98-9c3d-3a46-9beb-1df9c117c6c0','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7142808e-0424-4a4e-bdce-8bdfb5fc5ff9','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb42fe52-cba1-124f-8f30-52dde3785f7d','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('57e81f1a-7cef-d14c-aef3-fd958cffff12','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74d129f7-73c5-4e4b-9d94-dc6316dfef33','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67d53a36-61aa-6a44-9bc4-eab1f9f15f99','b61abaa1-da92-8d4c-882d-75da206a8078', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4d7496f-5284-db4d-92e4-c133bc12a4ab','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aaef4c30-a287-1b4e-9b0c-bf1fb7d34a0b','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d0ff1a4-b7b6-4348-b2d6-58969996a69f','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('854639af-28ba-fb41-9734-65d6fbdf1fbb','b61abaa1-da92-8d4c-882d-75da206a8078', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6bbdd2ee-99eb-3f4b-9ac8-de65b8f1cc43','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe35b4a5-c9ae-2c45-8add-a3c75e22ada1','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6477a2e8-c6eb-0b44-9f2f-9975f00f91e1','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a15034a-239e-1147-b141-3bb942609d52','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89efe708-ae24-7c45-b15f-9d968dfc27f2','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a5b3327-3f95-5d4e-9378-ac1db5bde4e0','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('077d4039-b510-3144-aa13-4e3a72ffbc9e','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d31c52f6-0339-6f4a-9a9e-3e8dc646e032','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce1d35b5-0696-cc4f-acf6-1188abfaa0c6','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7b1e25d5-8275-c542-b64b-4b2f22229324','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('11ffa87b-e097-404f-b66a-769a2c6da5b0','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c6c9a8c7-accb-734f-9af8-1204477eaf7e','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ffab708e-69c2-3049-a3f7-b3796513aaac','b61abaa1-da92-8d4c-882d-75da206a8078', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('cca47a3d-ecc3-b848-837c-4d747edb4f83','b61abaa1-da92-8d4c-882d-75da206a8078', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('1c30b049-e7b2-7047-8abd-c9ab99da5c98','3ff99872-c49e-fb43-bb16-779eee8e643c', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a90020e0-1ec1-8c43-8311-3ff434913bb4','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f402b41e-a7a2-1e4d-a888-1683c7a1f72a','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aeb2b79a-2a78-0e4f-9125-91c10318a6e8','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('73cd281b-1f6c-1043-b789-c93cb75343f7','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('873d7bb1-d322-894b-b1c6-af004bef0c06','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f9ec735a-82b4-3b49-966a-6af772801f3a','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc7b0a11-ecee-914c-a62f-94111d487ff6','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('554c3aa9-fee8-f24c-a733-ced87922383e','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c903096-d5e6-5c40-ad34-0a58a054fb7a','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ad2ee624-f6fa-fd47-8e2b-acb057875081','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('34a64999-dafb-6b4b-a6de-a179aa51d2e5','3ff99872-c49e-fb43-bb16-779eee8e643c', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('daa8d655-ea01-0146-8af0-c7923cfbc579','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c19dc346-31f7-e24a-a413-eda810cc37ed','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('075b4490-b4b5-0e41-9215-ea2656eccb54','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ed5d5de-0b43-5746-aa1a-e74184da46f0','3ff99872-c49e-fb43-bb16-779eee8e643c', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3802de6-e5ee-784d-ad11-ef05569e8d45','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e500d302-e917-4445-afab-828ca3947797','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1a53f7d7-c7e4-bd4a-b40c-cf31c79e7c5d','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('20bd934f-30ab-ee40-b0fb-30b45fa82fa9','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0d96200f-3af5-4542-b41a-833ef9fd75be','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('93a34f2c-a808-cc40-8ba0-c8a51e1a6ecd','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e9f5203-2079-3747-8d74-31ef1679c12b','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f1ac706-2d26-644b-ab46-d6d44fe7f16b','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8c64b73-210f-8b46-bf1b-9fcde5219a5c','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('086d7807-3c5d-ac40-b566-e10577b501b9','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('81464e22-d0e0-1a4c-b618-76fb0b6fa957','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('01b2d281-799d-994a-a481-63c35bd303a9','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2eae08d7-7b8d-0b4d-88b9-fa6691f7f3b5','3ff99872-c49e-fb43-bb16-779eee8e643c', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('74c66811-5513-6e45-a512-6144cc98c97e','3ff99872-c49e-fb43-bb16-779eee8e643c', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('461d6862-4f75-1f4a-8c73-f654e86bfb1f','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5af5ea5c-b5ca-7b4a-8bfc-d0ac7e6b8db3','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb44acef-01f7-b445-91c4-554f61f531e8','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d9093de9-1eb2-bc4e-b37e-f190a73085e7','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('75be47b0-4189-1e4c-9f44-4dc0d72d9cbe','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('681bcfc7-81b2-4b4e-acac-0702c90f3351','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05ffc8fb-853c-da48-ada3-05ba5b37d2b6','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ba315e5f-03d4-0346-87ef-61afb3e9d8bf','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('66ef6bc6-cadf-be45-a885-59625b50356a','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fcbc462d-7254-354d-8418-2091a8479094','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('257616c0-13a4-b645-81e4-f9e92b32d1a8','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('781baa5f-e892-2d48-a201-fcf0829e8d72','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5bbec33f-d2c4-614d-9fba-2b6c8febebe9','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3e90c0be-262f-ea46-9869-b0b7a74aa6a1','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd8a94f1-6d9f-7d40-b002-312929b25708','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6890882d-4ca2-8c42-9a61-fd545e327422','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dad1a105-b6f5-1f45-8539-05c70aa44869','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8f9550e3-6bb2-bb4f-bc51-fb5f378bc920','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e24d24e-32c0-8b45-9366-462a83b34dcc','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c9f14b1-eb05-0c44-814e-8ad3b6b1f092','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7b5ef53-dae3-b543-94b1-cfd4a6a5d1fb','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('30cc1337-4d43-d34a-a2b2-74a6f0f5e9c3','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('701dd8cc-1870-094e-b2ae-9b584ed7d3b5','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a42c6442-e00d-934c-8160-e293930a320a','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e65989e-2caf-2842-921a-f580ed804edd','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f852b0a0-fbc7-834d-9230-a7aa9df11bca','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('38cc54d3-162b-2942-a07a-e1a0ef361ceb','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a10b9d41-ba0f-c541-9390-b98c6a3eb3b3','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('78692358-12db-cb41-b3ad-f512d2372305','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('11118b7a-338a-c94f-a355-4d2772f86c8f','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('b113c13e-be57-d44c-821f-63f915d2e378','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('29d5ae50-050f-9b4d-8406-1a9823fb3746','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('755aabcd-f1c9-d84c-b141-c91198fabc24','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b60a8ec-47dc-7e41-a01d-7c972c32e91c','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2bb673f0-698b-f94d-920e-2b9a81c48534','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('78e77c55-bc23-4446-b9c6-66c1b27c16f9','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bddaf111-abab-e241-ac01-a34a70a1788d','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('91ea82ff-b1a9-aa49-949b-7bf587b90801','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4c79b968-874a-334f-a148-2b1b042b8c14','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('707cc7e2-b080-6b4e-b6df-f4d9e77de9ae','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c481138b-4db8-564d-9763-d7ad33c41760','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46637518-a0e7-8843-9ee2-969442a2250c','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5319c423-9ea0-7742-a11b-9dec47267965','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01da5bc0-9de6-b14e-a658-921e26b49e93','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('65d237b9-3bd2-164d-bb46-9f525370ba76','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc6ea8ec-6905-c748-af25-28de81c1bf44','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9112f0d3-4add-6341-aa03-fa4fa2d5f1cf','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fcbd4b05-c6c5-f547-83f1-2c483db37284','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94956ca2-2aae-6d41-a388-f21b1ec82045','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9d45fa0b-d306-8d49-b612-86f0d30690cc','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('50123ab3-d71b-d742-9526-4817ca0cd55b','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b8293e9-20cf-4b4c-b9bf-d4170405b568','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6f645ac8-bde1-0241-9f9e-d78a704fc2cb','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd71d433-b61b-664c-81a0-01c3da7a66ee','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1122e94e-2f42-0f4a-ade3-643bda7b9e57','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a471457c-2a9d-0c4d-8485-73ae0564f744','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6089b742-ae9c-854c-8f76-3beab77534ba','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b4cc4a0b-2912-b04e-9651-3b5c62078965','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b5a1cad1-83d4-1248-9e25-409e01e85f41','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0c4bf006-053d-5149-8ad9-975df6e29c16','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('89218247-fe20-9044-a3e9-2f3d262af3d3','def823dd-2766-284a-9610-b480d82c171c', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a06af9e-f59b-034a-9418-44acf8645d99','def823dd-2766-284a-9610-b480d82c171c', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bbadc0a2-08f2-ed43-abf7-dbf8a3745108','def823dd-2766-284a-9610-b480d82c171c', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e2149347-4869-2945-a6d9-bc402fd7e1a4','def823dd-2766-284a-9610-b480d82c171c', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28313b6b-6251-624c-aa03-5c59dc1c1439','def823dd-2766-284a-9610-b480d82c171c', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('684fed21-0ff3-4347-91c8-967db8431aa5','def823dd-2766-284a-9610-b480d82c171c', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0c7de1a5-1f84-3244-89ad-cc65f50a33c7','def823dd-2766-284a-9610-b480d82c171c', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02762fbe-28d9-384b-a787-e0730e32c42b','def823dd-2766-284a-9610-b480d82c171c', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db82af62-4816-d145-95cb-b3bab96dd6d0','def823dd-2766-284a-9610-b480d82c171c', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e890a66f-f38f-8d4e-bf5c-17c258c3058a','def823dd-2766-284a-9610-b480d82c171c', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('426adf61-4773-eb40-a4c2-896be5114608','def823dd-2766-284a-9610-b480d82c171c', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('714c6e7f-be5c-3b48-8618-b291e9402519','def823dd-2766-284a-9610-b480d82c171c', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fcf58791-9b50-6e4c-8430-5ff785317a28','def823dd-2766-284a-9610-b480d82c171c', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9d79031b-cdff-474f-8ffb-66bf325e19da','def823dd-2766-284a-9610-b480d82c171c', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2520241a-b449-d348-9eab-c8ea18e4c4c8','def823dd-2766-284a-9610-b480d82c171c', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('81654fac-9bdf-264d-b968-a49959ce7ce3','def823dd-2766-284a-9610-b480d82c171c', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6aa283c7-0add-1c4b-85aa-d79776195d17','def823dd-2766-284a-9610-b480d82c171c', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8ff1ddfe-a8b9-6b42-9a54-d139dc85c1d4','def823dd-2766-284a-9610-b480d82c171c', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('745a239f-8936-ef4e-b356-47c7acb8b397','def823dd-2766-284a-9610-b480d82c171c', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f5d5e57d-5f77-034f-98a1-da0ed4e13919','def823dd-2766-284a-9610-b480d82c171c', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d5123ed-d11f-7146-9f60-1a5818840409','def823dd-2766-284a-9610-b480d82c171c', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e282b47-a6dc-1748-b602-38f714a2c9fd','def823dd-2766-284a-9610-b480d82c171c', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1020781c-297d-e94a-8f22-0766c42d33aa','def823dd-2766-284a-9610-b480d82c171c', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0752eff2-ecc0-e040-94a8-b3bf214f5da1','def823dd-2766-284a-9610-b480d82c171c', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e7f0a77-6e3f-6446-945c-c629ec7f291d','def823dd-2766-284a-9610-b480d82c171c', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9c56aa88-f511-324f-85b2-3e742eb9d57f','def823dd-2766-284a-9610-b480d82c171c', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a67390dd-912b-f042-a5d8-a4cab1f2ca61','def823dd-2766-284a-9610-b480d82c171c', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8329e3ed-96db-a840-b9e8-210d86b4acd6','def823dd-2766-284a-9610-b480d82c171c', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3135fddb-b767-8544-a517-140d9f861397','def823dd-2766-284a-9610-b480d82c171c', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fe4b31f2-3a98-bb40-8b85-1a9fc60e7960','def823dd-2766-284a-9610-b480d82c171c', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('4a1c7a5c-6503-2e42-8198-0b651b5034ac','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5f326b79-3224-6747-bbaf-e11136a7aa84','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1bdce90c-c549-094d-a1f0-b51a67f4d5ec','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dcb655c7-dc63-6249-8c4f-42620e3e4fb3','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be6983b3-80ee-e94c-a3c8-7008b07f5dcd','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b9ac203-0d63-054f-aaa9-57efa3695153','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68586f56-28e6-5348-8b74-9439ed9cf595','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2ca3b246-5bbe-134b-beac-d7793d824d89','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d5662ea-6817-7146-9c9f-b86555a2fea1','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c211697c-c4da-2e46-ac8f-dcec9f563897','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8240698d-d026-c04d-807c-f7806dae4163','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0d5c9525-2c05-a94c-95fc-205343d6b56c','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60ef6404-34ca-0441-b62d-aaf45a5483d9','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('27ba724a-83f2-e84c-a32f-08c6bec243cc','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a536861-3fe2-9649-bac8-eccb9bc10164','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d7210c29-1187-3549-973e-814e4c66728b','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d2cd0ea5-fa58-114c-bc8b-d49162a9438d','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5a06403-cfaa-9545-b897-899d14b6792a','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6ef45072-a5ff-3446-b8d9-e71e919587df','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f5a4c774-e3a5-9c40-9765-ee94be0c8657','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d3bd4b27-f02a-074e-a437-e1f6bde01bb9','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e70a20cb-3180-b742-b91e-6d2f7301e083','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f8485f2f-3dc1-8444-ae85-1f21ddc8ca9d','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('69590acc-f750-554b-b83b-3449e49ec399','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7273483a-99e6-8e42-ab23-2fe9c7c2e0c5','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('16fbed0a-5fc2-534a-8768-ddeeb9f4b5eb','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9cff88ac-434e-af4e-80c3-b67651e37389','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1b32fbef-32d2-1244-9ed0-85851c4e75d9','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('19fa9331-5bde-5147-952e-42be4dc105ff','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8e56fac4-31a8-8049-9170-f925bb292bd7','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('47740fce-f8a1-8042-8b13-643a301f8203','acee9eb7-1296-4c4f-9334-802d33045062', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21095e82-a259-ae4e-aff6-cf9933d2a561','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1cf3a909-2c28-5a40-b233-1778aec8a31b','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79d46c12-61eb-ff4f-9dcd-34eb380d6cd8','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('388a936c-0a94-3e4b-8b79-24131b0d865f','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd828305-86f8-db43-bbf9-f53a089129af','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76c16174-2d2e-004c-8a53-bf4d60ef7bea','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b61bf7ee-a607-3a4f-af13-c6392fab1564','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3d0ddd89-7195-9642-9b5b-f888b719b7d4','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b68bf91b-a609-6441-814f-2ec44c0f27c7','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0af58c35-2e32-6e47-82ea-d495cb3af7ff','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85ad1a7f-5b9a-0640-8a4f-9f1b5a8923f3','acee9eb7-1296-4c4f-9334-802d33045062', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6a610922-3c89-b04e-b9c5-61776e92e840','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9152efa2-3374-914f-8089-4d2d384b20b8','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('72d0e44f-172e-5747-ab7c-b68bdc9310f7','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b872f5c7-265a-f44c-a73c-4a5d75c8efcf','acee9eb7-1296-4c4f-9334-802d33045062', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('25b78804-9765-4d40-95c7-5b7638910271','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc34cccc-3404-144f-886d-6b9264955334','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('45cd0e3c-cf74-f04e-8816-670d99e21945','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f2d59ab4-b93a-cc49-9fca-44dc00ea954c','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5d15fa31-63c9-0744-850a-06b7f55848bc','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3f657add-348c-a24a-a078-e452c9d83846','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b41cd6e2-ec06-404a-9b62-b2dfac932ca6','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('079dc2ea-275d-d743-9d3d-40edbab4796d','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d5e0bfc-8d0d-9c4b-9bf7-e67660f92881','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c593f35b-7021-c240-a79f-0f96f98e7756','acee9eb7-1296-4c4f-9334-802d33045062', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d38c7887-e214-f048-9180-807f7c1a4980','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('258418dd-b788-2b49-b25e-4377ae0cae65','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6306aedc-b48c-5040-b921-82f431403340','acee9eb7-1296-4c4f-9334-802d33045062', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('783cadf3-0275-0f4d-b1bf-e97d1ad62d3d','acee9eb7-1296-4c4f-9334-802d33045062', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('eff62843-bb4d-9b4e-843e-2f2005ba7e63','50a398ca-f609-9449-bc39-cb0bbc132394', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('febf76ea-28b4-074e-84ab-237dcaad04f2','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('29837747-7b8c-7045-bab6-c09cc9a8060b','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1690062-8f3c-2343-8b42-a61f1cfb9c2c','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dadedce9-f3a7-a940-b986-7da57878bf70','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22a1cc47-63a1-5d40-8fc8-51717f43b70b','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f2ab224c-dc2f-5248-955a-57414a38b1b7','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db94caf8-294c-9b4b-a3e2-efd33c610109','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0abf9c4a-6519-414c-8047-ac5808f65174','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff5391f5-2517-3b48-92b3-efa647351da9','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1d8a88e-90ef-6449-9d95-204cb7d0d963','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be26d6ce-daba-cd4d-8ba4-e8f21f1ad9af','50a398ca-f609-9449-bc39-cb0bbc132394', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7257bd95-e387-9d47-a0d1-cc4d47dfe830','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07eb28fe-fcfa-654b-ada2-3abd554a4238','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7fc78c6-c4c3-de46-ba25-d3125dbbc934','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9998af67-1685-d844-a181-085c746d8280','50a398ca-f609-9449-bc39-cb0bbc132394', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('38a3d152-8dfd-6847-9022-87ae90a87c77','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eba50180-321a-8949-b3f4-47da682e1f2f','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7b97ce61-fcec-0b48-aa7e-8c93dc9a668f','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cee6df5e-8216-b24b-b645-a0ce60a1e663','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c4d54700-927f-4f4e-9fd1-8b57d6f29dcd','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87eded59-fbdf-7742-9d33-6f4c30bb7b8a','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('223de84a-8c3b-6e45-89c2-4a8c696052f3','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7aa513b8-8030-054f-90b6-fab24bbdda86','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e38c01da-4097-7a46-8105-75b762db8ec5','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('18493b70-38b8-ef42-b5ec-103f34d3fea1','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d8efbc34-529b-e845-a3ef-2139cf3ae6fb','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ea19c860-dc29-724e-911d-18be8e410eac','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8e50c3d8-5e4f-ac47-8720-edcb10f034dd','50a398ca-f609-9449-bc39-cb0bbc132394', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4a241566-5f3c-bc40-a067-33ccf9704dc7','50a398ca-f609-9449-bc39-cb0bbc132394', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('e109f945-fe83-5749-a82e-61fc46ec0cca','3db20274-a58e-7340-9de0-d451eb968781', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('49c5f309-880c-df4a-a07c-bc6b64b4202e','3db20274-a58e-7340-9de0-d451eb968781', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('deb7b3d9-34d4-7d45-b2ed-7fd4e0440b61','3db20274-a58e-7340-9de0-d451eb968781', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9f6e2063-cbd6-d645-83bf-7c7a18fb1c78','3db20274-a58e-7340-9de0-d451eb968781', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc612aa5-fa15-ed4b-ac97-b79f999bdd7b','3db20274-a58e-7340-9de0-d451eb968781', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('39c0e1bd-e9ce-f34f-860e-814f7991c732','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7fe63c99-8549-e44e-a73c-b14dc56104ab','3db20274-a58e-7340-9de0-d451eb968781', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8ad91989-7b69-cf47-83b4-ad974a00965f','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e0cff38-fd8c-0e42-a894-21b0dfce1bd2','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d215918e-6bc7-484f-ac32-b548aec32536','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('057c16a2-58cd-2844-a510-b02fca440e62','3db20274-a58e-7340-9de0-d451eb968781', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('217441b0-8305-b241-b8c0-cf27be029238','3db20274-a58e-7340-9de0-d451eb968781', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c03d9647-b4a0-374f-b18b-e389198497d3','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21308aa6-7308-5644-b954-7772a7ec22c1','3db20274-a58e-7340-9de0-d451eb968781', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1734696-b7ea-4f40-860e-af8740a026d8','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60a7c619-7e6e-9248-a796-7167f1fbac86','3db20274-a58e-7340-9de0-d451eb968781', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4ec20ea5-99a3-f947-8a75-70fb32cdd1cb','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a56b18f-115e-1146-8363-8431bf07c24b','3db20274-a58e-7340-9de0-d451eb968781', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e171d0df-9779-ef42-a2da-cd5b7f757007','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15fe3c5c-a328-cb47-9b29-f4e25d89ccb7','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e29af08-1365-464b-ad08-562d7b2dcf82','3db20274-a58e-7340-9de0-d451eb968781', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14b6f5d9-34fd-9e48-9cd2-4e36ae25a0ed','3db20274-a58e-7340-9de0-d451eb968781', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eabb0629-8d99-cf41-859c-75827f79b5df','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c0788c49-87f4-734c-91e1-f30fcd6ee15d','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47369b88-0e0f-e147-8a91-a7ea1ecb614e','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('043ce3cf-26d0-2a40-ae12-11dacfd2201e','3db20274-a58e-7340-9de0-d451eb968781', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6c4cb6d2-143b-9f43-90b0-43d8959868fd','3db20274-a58e-7340-9de0-d451eb968781', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('58fe3f18-f4d7-fe4a-9239-3cc279a403af','3db20274-a58e-7340-9de0-d451eb968781', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('541cffb1-ebc9-e54b-818d-0f741dd0d4ae','3db20274-a58e-7340-9de0-d451eb968781', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fd004952-c869-0541-8fdf-9a94bd6685c6','3db20274-a58e-7340-9de0-d451eb968781', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('25050a86-feb1-424c-972f-525c5c2ed13b','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1b943f2-18c7-aa4e-a9d1-f6d6a5059f6e','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c65064a1-2984-4544-8863-7ace2b2a2133','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a91d234f-ba93-874e-8f04-77ae2e65e710','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4568fd4-e6a8-8e45-a431-7e26c2e40fdc','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('69a1dc08-eb38-d543-a0b6-3faa591ec499','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4995fae2-19ab-8b47-96fe-4bf2ce4dd85d','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8902931f-d3ec-be4e-bcd5-3f3ea8613d97','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f31af245-35eb-6a4b-8c29-3140bdda30c0','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6158cdbc-5b6e-c24d-890e-6a5d9c8309d0','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71e45b6c-c979-1b43-b662-2d6e0615a045','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c6ec07cc-4143-7045-ab47-2744c8fdf7ca','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54d878ff-e05f-6b49-8d90-fb707e259c48','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6b68dfcb-f827-c94c-8caf-17218ae1850f','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('917e50e2-87a6-4c45-827b-5e58cbcb523c','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3333f387-f2ff-cc48-ab53-6bfbb54c0447','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6807d47c-f020-9646-9016-de887c5b5a3d','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('548af746-fcf4-be42-bdef-88723ffb2e83','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9fb486de-8c16-1f4f-b31f-3190707a0d94','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('652039b7-8984-7147-a974-5c74769fcf75','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('953fc67e-a13e-6647-a872-f22f0b251e48','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a37a2f60-1ee9-ec44-9d94-6ec2fbf7868f','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('976560e7-db34-9a41-9d69-a0992c741bb6','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('204dd8f9-1f11-7a47-826c-08058817d04b','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58be6374-0ccd-b842-8d42-d43c7f89ce6f','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1049a7ba-d2e6-5f4f-b82d-7d101e9a2d51','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('085ca7b1-bf2a-2b4f-8f60-f74d9b1a5bd9','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d854e312-4077-f547-b4a6-6d56d0b8b398','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6f4bc8f1-3589-5e4e-a7a1-c7f6fc3cf534','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('81dbe4c8-2590-1441-9317-ffa4dc00ffde','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('356b2ba7-e9e9-f54e-a370-d8a9fac90eb3','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('48929e93-1f55-bb43-b482-9ee14591fcaf','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9982cd33-c7c1-4c41-a2d9-5df2d33e8717','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7ecebe98-7bb2-2b49-902d-2b9cba29baaf','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62e2186e-0db8-1046-9db1-144a7343d847','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3083986-26ca-314a-9e11-e33c1aecccc0','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e74d1fe8-a7c0-774b-9e08-d73ff81fc9f6','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('487bd6bd-be9a-954e-86e9-a17dc56cd96d','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d4c5306-9491-9046-9178-9d737a48c2a1','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2d92d0f1-d2bb-5f49-934d-1b7284c64e16','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ed9158e-c676-f241-a6c7-75673bf9bfe6','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ac34e6f2-ab2b-9b44-919e-7383d9a443d3','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('20826008-b947-0345-8af9-36e6fdbe3f03','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fde8981b-656d-c64e-a5b1-04e75137f99c','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46c3964c-e71e-6a41-968f-befc875171bd','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0c094c61-dffe-2741-b0ea-ba0a402b33be','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02e4ac6d-0d3e-a644-a841-1aadd387b5fa','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5096e12b-e314-8e43-bcb2-2610243ff220','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2d7e681e-ba44-1941-a3fb-fd63d02001ef','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7da6d662-c678-fc49-9702-7089ca819ebb','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46a4c76b-e455-3d4c-b25b-6e67cc244505','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88df5ffb-cea8-9149-af0d-c7a6a3d7a692','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11ff9ec8-a8c2-ed4a-a095-6e8a6f9a440c','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1f72691f-aa2c-eb49-9340-b5361e2a7435','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('883fa1b3-695f-a54f-a4c7-80e0f804e55f','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('349d5801-c8be-2a44-9671-881d2eaff110','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3454fc2e-9f62-814d-b27e-65d1db54b519','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('70d8bd48-0743-0947-9f48-5feed0225b2e','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('244089cc-27ac-a548-9c11-710671c70c39','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('68b05c6e-3533-1449-ad31-b8ba2b9c8261','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('29a1fa7f-4531-a649-ba98-6904f218459f','de908092-b5bc-c84c-b29d-d5c678df4d28', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4ce9621-379d-9d45-afa6-e0c2054e41ea','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff83e02f-07cf-a845-9e5d-8a828387d4d6','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16c900d4-e835-3549-aae7-bc61e6edeb46','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('def737ac-e782-2f44-b611-dc46158316d7','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1fa67a8-791f-9645-a633-29715a1de963','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc5e6884-e228-2c4e-8184-6e5aa325af37','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4198f73b-9c92-574a-800e-6b41112f016a','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf050b36-8f69-9241-b1fd-d623384137db','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1c2352c-2e43-b141-92c8-b96ca85c8dd2','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4acc1398-d505-c248-86a3-4125106a3bf0','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5bb15aaf-c1da-5d4e-8f3b-8c853a2a90c0','de908092-b5bc-c84c-b29d-d5c678df4d28', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('613a8c62-a127-7343-9209-e52b91c6c8bc','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d534bb89-d1a5-0047-8a72-1ebd1550eef9','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('51b293c8-cbc5-4a48-b6db-3b9b594ac4a4','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36a1ea57-558b-cf40-bcbf-53f93a930f29','de908092-b5bc-c84c-b29d-d5c678df4d28', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('573eaf42-8fe0-b349-a31e-3427992933a2','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('021715ee-05b5-3242-bf12-5499bfbfc25c','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6804994f-0ee0-5948-892d-f72880f1643e','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f584b972-1d9a-6c4e-838c-b2ff89864aac','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa49f8ab-5018-ea4d-b576-c9df7891cf2f','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d83af723-1912-d84f-963d-952a2949c7bd','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('975e2002-0b0e-bd4d-9dfc-fdcefdb209e6','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8471e77d-3646-dc46-a951-797ee772998b','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67f8e9d5-4ada-8847-91a7-75ae29b9241d','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('000c63ea-1f3a-0347-a892-5c330e380e72','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7afa4c4c-150d-ce41-ad05-c3d50a4bd79d','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7eecb754-9688-a042-b07a-6c5fd0ec5402','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('41b97bba-0e44-9f42-9c86-fc9c9f747a76','de908092-b5bc-c84c-b29d-d5c678df4d28', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2f0733f4-2fcd-944c-ac95-73ab1f38d77b','de908092-b5bc-c84c-b29d-d5c678df4d28', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('a053d8fa-8ef4-6b49-851c-029d15524a2f','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db1b9703-25f3-f143-ae1f-e002b34249f4','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('335e2adf-7401-c64b-9f1e-f91963759bef','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4c4fd96-eb82-e94b-a660-e2c8292c5503','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('18054e3d-8281-9844-afc4-03a290648095','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b6fcaafd-daec-b246-9d47-148149b42a4a','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('486669f6-34eb-6949-8822-8b9ac33f7ca1','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8990604b-985b-6f4c-9a63-32741af997a9','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cce6b228-0431-dd4c-a4d1-5047b1d9e9a9','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be9240d2-7ade-ad43-91ca-e08063824883','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca609122-c60e-474e-9c48-accdbf834a85','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88709fde-fcda-eb4e-97d5-ae0ca1515244','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ca52457-2e84-c041-9bfd-94418d8f41a8','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('210b6052-f808-e848-95b4-bcf5fe00e9f5','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7bf6e2d9-c9f8-b24a-9e65-76bccc9a60d2','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8adb197c-98b1-0c4b-9889-d939685cedb9','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c60bbb99-ecac-af4f-832d-79173b0f526e','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af71f17c-5798-d44b-95a8-fdce4fbda020','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89f5a1c7-76e0-2c45-9e2a-839c7966a8ab','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff52779a-5c5a-454c-bdfd-bfaadb4d8db0','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cfdc1363-a6cb-274e-9e25-c0cf9c1b8848','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8026f3d4-6eae-7047-ace3-8377f8753778','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('75a276fb-35e6-f548-89f4-4231d8535398','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7590ea4-343a-4e49-90aa-226c56972083','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5b35b45-d8ae-f14f-9ec7-97f79cf212de','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e9e5bf01-5a35-ee45-8bf5-7591a7372489','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2abdd04c-7f00-0844-a0f3-c185762294b5','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d50ed68d-f0ee-4445-9e89-51711f4a1a94','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6decb822-2a94-e54f-b7f8-f508ccb65f91','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ef5266f8-60a1-c742-9b15-0358a040b5e1','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('b2ab4375-3cc9-434c-b116-cdf830398180','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e6e4d69-7717-cb47-ac35-ff34aed480c1','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ff83360-c4f0-9f4b-b312-31a6812e23c2','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a21b353b-dd42-4643-990b-ba65fd5bae5e','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c1f8f542-c14b-4644-a264-135468f1acb9','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ffb6155-3bfc-0c47-88ec-8c76cf41ae43','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca98c847-d539-8c41-a769-173f3411d54e','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c1b885f-c42f-a342-ae7d-94bbe9afc418','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2af3a9b3-0aa6-fa47-9aea-14fc9ce1e8cd','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f8b3e15f-6fe8-1049-9040-19cfcfebeaef','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b39042bc-3241-ec42-93eb-90297f9a9b2f','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3469cf43-7b98-6140-a1e7-8bf8e706ac68','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1bedb601-2bc5-044e-b199-ecb9f7fe7078','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('553cc68a-1998-1848-bb9d-74838630f83b','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d424214a-46ca-0e42-b3d4-ea54705b22de','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c44b9929-84f3-024c-bc13-de2ba8cf3f3d','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1bd87cfa-a4a7-8948-9796-28890cde63ce','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3f5cf226-2cbc-4841-bd05-8fdb2fb72a10','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('55c8fbc2-f55d-3f4e-9398-ac97e9394716','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6255e4e-90cc-1949-b084-491b92f90a24','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df464b38-6d24-e94f-88f7-453ece2a84bd','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05d5625c-0f92-f447-b309-b41733cc9016','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb2f8936-05a1-fe40-8cf7-e500fbaef473','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47f9f6ee-4e03-6840-b1ea-fca8a586e8ec','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dba74672-043c-594c-bc8e-645a2f1a6804','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('58dbe4ff-7388-634a-835c-80ac3ffc57a0','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('95f6edff-924e-554c-b084-61a6264160bd','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1a11cc97-cda8-784b-8422-5927e24f80b2','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('99e501d6-922d-4243-9c9c-dcce1f2a34dc','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('dc58df45-9dbb-9648-bcc3-4b94d32cedb8','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('a332a6e3-2a68-6744-9911-d5c2d0d1a9f5','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0761aa2-ed77-4e4d-a897-2cbe951a4dc6','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f01918e-79ed-c349-8ce8-731ebd78e556','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3bcaabee-d0a6-c146-b967-5036c301c36d','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9cb266ba-3864-1742-a40f-f505d886a310','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b57c54c0-5f2f-6a4a-a958-d31798397485','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fabb48a6-fb1c-d04e-8aad-83f74f9db85e','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05c35c8a-e549-ce40-bda8-1444edafc0c6','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b64a7999-701c-7f44-aeeb-4e01cb08f2a7','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6f0d777b-4f73-d44f-a055-a385eedcf1a4','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5092679e-9d81-a740-9e17-13c1409fa226','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('332c843b-ab69-ee49-a5f5-9b439085ef5f','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('72275bc2-c288-cf4c-a43e-17ff434c5930','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb54f596-8162-204c-b24c-4cc1c1b041fc','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87303c7d-50f2-9048-b913-66fe54881108','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('edaf248b-f9bb-9c4f-8308-01114e9230f8','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd50798e-72f1-dd47-89da-7462cc70ecfe','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da8e7528-64f5-0a4b-8b2a-79a23d54a9cf','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8190e537-2652-014d-8db4-b642c7c8db45','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0f24a4d8-1399-734e-8ba3-01e33f743ec0','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('425458e2-b32e-f443-b56a-81e659e36f2c','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8240b42b-e3b7-1343-9bb9-73df2465c07d','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02a40b8d-ff7d-6446-910f-4948db52cc8a','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f5968011-2fb7-d846-b032-dbd64d1c3d9f','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e18ee2d6-9268-2145-aa09-0fb47fc3aeab','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('58ce6319-7617-6c45-a90e-ec77bd46201a','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('84263fe3-59a1-a04d-b370-4d5a6014b2ff','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('adb24add-7e57-604a-8b43-9e56389389b6','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2c3d4a9d-8e6f-3d42-b754-56229a76bbb6','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('15815f1e-1b47-c045-b9e1-e6b5fc568923','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('58db263d-21c8-fc4d-bbbb-ddcafb6e7689','093a8815-14b6-d842-be9c-ed92bc382714', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b1a91285-2993-ec4d-8179-2359c5e5094e','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2beabfa1-7539-2d48-bf77-81c645cc1923','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c62f8cc2-1b79-ec4e-92ce-2b71ff698544','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd3c9869-74b1-bc4c-9394-a69e9f4efe78','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1fa6837-5423-484f-8767-6f565cccb912','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a3979c5f-452f-c945-8910-8568a7121c76','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6563e6ef-5e20-d74c-9153-c6791197df11','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('62058178-b32d-2346-9510-94c7c83164d5','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4e05c552-fd7f-9b4d-9cbc-d3e46676d067','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eda91e7e-efac-3f4c-afcf-87ff5d6843a0','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('064e0024-3acb-994f-8d4e-b0b3822b3f18','093a8815-14b6-d842-be9c-ed92bc382714', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d94678c7-425f-834c-a3ed-b2fef61e30a3','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cdc519fe-d598-784d-866c-8ce3dbb2c3f3','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19046663-17a0-824e-b29a-0373f212b9ef','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0eee7bbb-f5e8-7541-a663-fdc64f0320ec','093a8815-14b6-d842-be9c-ed92bc382714', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f9dd4d52-5ca6-e443-9d5c-571322ec7c7f','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9968ea39-f31e-a442-b953-79933f17bf95','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e8a7cea-ff8f-c448-90d6-309146ce6336','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4fae53f2-5558-f241-b13c-8d96b29e4886','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('678c2d8c-41f1-084b-a281-df187fefdc69','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da0daf7b-b7c0-1542-b04d-5437f0213add','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa9bae70-e7ad-ad4c-a2bb-a676c3ac7040','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5698ef19-6b21-3c42-9647-8baf832e76d5','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('97fa9a32-b71e-bd44-83b4-60ce6ea2d7bc','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5306e0c6-da9e-704e-b7ea-d1ec49cfe959','093a8815-14b6-d842-be9c-ed92bc382714', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b3e64d21-453d-494c-a402-40cdbd2b654b','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('14b2491a-87d6-2c41-80b5-2e4acdc93b0a','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e497b62d-0516-f34e-ba06-2a29eed264c9','093a8815-14b6-d842-be9c-ed92bc382714', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b87e169c-09c9-4c44-8026-eded8f8f0ce4','093a8815-14b6-d842-be9c-ed92bc382714', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('01fe59e3-ca19-7f42-8e57-213cf3e98323','cdf8d19d-231e-124d-80f1-6694be0d8543', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('babc8abf-730b-8f42-a68c-e281236da516','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f9b045d-65f4-de4b-9d26-0b0d5f3f73a1','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c9d964a-001d-ef48-b159-214f4d2f9481','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b0d1c48f-da85-f446-97c4-7c749033520b','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('56c69204-67a2-3b46-aa4e-d12a98b2321a','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db5afe18-95c1-2d4b-9fb2-65afe7ba2c16','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60310ff3-5cf0-b54c-a20f-fc2e642dff59','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('508ac18e-ca77-de42-82e3-149d8440015f','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('42e0712a-4979-2b41-bf06-4414d093bff4','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4fb929a-42ae-034e-b9a7-5a5c2c95828d','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c2e5b68c-75e3-6041-8aa3-0b513df5c156','cdf8d19d-231e-124d-80f1-6694be0d8543', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4bab8662-1b67-1249-8be1-fbcc4c8f43ea','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0f8e467c-f6d6-1343-a692-2fdb5886e83a','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c4f71aa-9a58-f94c-98ce-cee2fd4431de','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6aa4ab8f-85b1-2540-97d0-ad0522d7587c','cdf8d19d-231e-124d-80f1-6694be0d8543', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c3c8b1e-a16a-754a-bb2a-97c2eff39c26','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c38d277e-3d30-8b47-91ef-79d0ab609113','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e4e1e16e-f18c-cd4b-b6e3-7794a31f844b','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19b86cca-6992-074f-8c1a-d1216f7d332d','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c61f14be-b192-aa4a-98e9-f896d73f99f6','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32d8a6bc-4484-6641-8bda-2ac8ca44508f','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b39aa632-9c72-224e-a9e4-913777bbe38e','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59bc5474-7e30-ee48-8836-1596ff6a5268','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ac9a57af-f4b6-0546-937c-1ce84e305155','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3eb14419-b056-3d44-82e3-f630f099e562','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6d3c0eef-4fb9-3449-a6b3-9296059e90a1','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2dab0d03-8f39-534a-8afd-b1c9a51accef','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e467e052-8294-d84a-bd00-73c03159c7be','cdf8d19d-231e-124d-80f1-6694be0d8543', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a6fe3d04-3f6c-1143-b6bb-dea2b64f34fe','cdf8d19d-231e-124d-80f1-6694be0d8543', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('03741488-641c-114c-9630-e152bf76d74a','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b377bc9f-9d98-a248-9700-9d0ea93aaebc','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7b2bfaa2-4133-ca44-b471-a157789c5252','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68b88f74-d9fb-534c-99d4-5bcd49ab4ded','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('149d57b2-19b0-ac4f-9a35-20645ad8a9c8','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b3a1667-2b82-bb4c-9c9d-ac9311f814aa','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('38ad062a-87b3-4543-a861-41da48b2ac50','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2373af20-21c1-3d4e-a8bd-ce445b0a4bb9','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1190623e-e512-c948-ac84-e748a99c1b32','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7998f2bb-904a-0f4a-9cbc-6620abf7d2fa','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b2da4159-f68d-d84b-9cc9-0800c3f998b5','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5a561781-e829-474b-8961-b4888035e189','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09b7ed18-a372-1444-ad52-732d89874e34','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c94010f-23ba-4148-8e63-90eb91683d4f','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77011b75-b7f1-0b41-95ac-c484e2b8645f','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41334da1-c689-fe4c-9d24-c019c5e1aaf3','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a673e04c-9b5d-9547-973a-6661df1a9ca4','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3d388fbf-5481-4d4d-a2d6-b8418d8ffcf4','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6001ab75-897f-e143-ba49-2d743447dc2d','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('590640cb-13be-9649-ae70-3708a24dea1b','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c35b4ec1-d1af-164f-a4b5-5c288965a712','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa66a26f-cfb0-cb44-ab70-927e920a16ad','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5535f156-bbe9-af47-a9ff-5e1a96f77e7c','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4c2bb433-ec77-f546-ac2e-025dfcbe37dd','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee57b547-d404-a744-9dec-31a8fc964fcd','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('15db4c5f-e63d-ee4f-a47b-bf5cd2ea3c25','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('48d7a830-1004-3547-a240-ed5d75f77ad7','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8358f50b-ec1d-a147-8a94-8099d4754b10','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e4240f4a-ae7e-3f41-bb67-a171527a257b','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c82d80de-fd84-9d4d-b600-820a0f18fb5a','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('a60550c7-2e2d-2f48-a20a-2d9f491a3939','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ca8f876a-d8d4-3647-90f6-22ee6bff7e67','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('26fae397-e110-914d-adfc-0a9fa08cc152','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd728072-a364-bb4c-9ae3-556bb65f69c1','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3e0a4511-e7ab-3049-9156-081b933c1b3e','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb39cba7-e7e0-354f-b7ef-19f0dfc67cb1','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1831e0f9-6e1c-ba4e-a93b-83619d7b9ba4','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('12ed147f-bb88-0f4a-8010-ba090fd03ec5','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c5ec951d-1558-1941-9b6f-b6c3984b0609','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59c6ad13-553b-744a-acf5-10e5d7b59998','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d5f3e57-e358-9f44-8822-4f5a54f6c1e2','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aee5992a-0b8f-b745-b0ac-a16fe7f87427','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3fdfd4c-83b8-0540-8e34-f1c83a246542','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b1b46c77-98aa-934b-994e-b2c224bf07b0','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a181282-a7d4-ad45-8071-955f8e9cdbda','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc8e07dc-1f26-6844-b912-78a79ac2d353','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b4d3ce77-aeb9-d248-b544-1af04fd0edec','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d97a3e0f-d632-ef47-8429-bf4af2529a92','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('785cfe2a-0fc6-894f-9aa9-cb960bf1afc1','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f16ad20e-c5b4-3340-ab9f-17ac5cf28b0b','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1514ebe7-4d90-ab48-baa3-70ba5e1f3bb4','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd10682c-4b4a-0d41-a9e8-62c5bd0e5b32','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b571ff59-9c97-a845-85d3-841cc93b2501','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8bde8d7c-357c-3446-a166-ffe8698be2d0','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dff86190-57af-f44b-ba96-6fd8a6e9ed1a','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('55ff4c0d-1476-5541-826b-bea49b56e4ed','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('29fcfd90-bf94-884f-aaf1-2941a5098409','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5dd212b3-2f72-2445-8021-9686eafbbf41','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('42de3fa4-76b2-9245-b9c5-7b3a7f3b2b5b','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5e4e0eee-9342-b94e-83dc-31594e5b9b4b','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('25ada646-d0a5-7c4f-aabc-a38c883fdc85','be93eec1-f36d-764a-a788-c0d76f495946', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33059ed1-b8e1-0e43-8ade-3781dbcadef3','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe448a72-a0ff-154d-a78d-e30aafe93cad','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6cea153f-3d92-0f42-88f5-a5bbaec550a2','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfa48756-b934-9345-808a-b5d41bb7f15f','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6dd9979f-51d7-c241-9d6c-4ccbd83e3fee','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3dab03ed-0db1-1c49-a318-b1afe1405dd3','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f0ca5ea1-315e-7742-b3e0-4383206ce013','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5b285e9-256c-6649-9c68-6649054901cc','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85a5fba3-c00e-9248-b02e-7c64f63db500','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95e293fa-a00d-b048-8840-c3ac5f6565b8','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('25a150fe-2bb4-7e44-a5aa-e561f861be37','be93eec1-f36d-764a-a788-c0d76f495946', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05f15034-b403-5f44-8ed1-ef6560e53b8d','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('842b9f85-aea8-644f-98ad-6d4131d7752a','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df22aaf2-f727-734c-97d5-513da50897d2','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4c9c53b8-1b37-8249-81c9-5c54f7a756d3','be93eec1-f36d-764a-a788-c0d76f495946', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67e50b33-8604-f44b-a5a7-a13e1b4c6c29','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be414361-d6d8-1c4d-8469-8335cb254f98','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('abf45a0a-bed1-ae47-9881-845941fe715c','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dabc4318-cc1f-1d48-a90a-ca978a15fa9e','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('86129aba-c84c-614d-b8f3-f8e0198c1348','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14ec5230-c075-e742-b448-d5dc97ee8f1b','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88fc937c-853b-0a4a-a387-21713a29223f','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03964832-2167-2040-aa2e-38394f0609ef','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('00543288-53dd-8e42-b8ac-9b3384392127','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7b180889-836e-0148-a904-8330f9d35b49','be93eec1-f36d-764a-a788-c0d76f495946', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('01fcfbdd-672c-7847-bf03-4912c2e84572','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('03136465-440a-124d-849c-0251443ef97d','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1180e91e-3403-044d-84d8-442853ef46eb','be93eec1-f36d-764a-a788-c0d76f495946', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('5386cd8b-cb64-6f48-92e4-dff15a57eadb','be93eec1-f36d-764a-a788-c0d76f495946', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('02a68557-7a0c-0c4d-9c88-dca9e23b9453','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d7d2c595-b2b1-c042-8b28-6811700933c8','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16e61551-ffeb-bc48-aa4a-e3974aea7304','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71cbe835-9971-d34c-a6ae-96ead578a4a3','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e810cc3-415f-454b-8d4d-c40353b0fd2c','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cee1501e-f699-cf4d-abe4-445f5e06114b','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb04ab72-aa5c-aa4c-ad9d-62f41f31e356','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b48cff60-66f6-7c4b-b79b-46e24ddd0905','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ccce7a3f-12a2-fd4b-9d91-0a02763b1d59','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33615a21-5f62-a94b-b57d-98114cf36634','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f18fe9fb-bdc3-784e-b4b3-c1edaf5f0ef6','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7f2ba68b-cdf6-b042-b021-e5f732df5f8f','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96be0f06-d9b0-864f-83fc-45f134a7196d','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7a9dd2c2-6f9e-6d40-b95c-afeebb3f3bde','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('75b0e7b7-70d3-fc4e-aadc-4f8451d0bfa3','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('143b47a7-5b2b-9147-b6fd-d522f1adf5ed','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd73cbc9-3631-1f4a-941c-fe7dc0c0b810','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e9d6b45-d943-6244-baf7-129d6a339ad0','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('924e1706-fe1f-194c-a7e3-69ad202241e9','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54a9c358-f6ce-4246-ba9b-dc6e484b8f78','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e09be03f-7f71-2d4a-8aa9-3c7fcf382cff','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15adbc7e-73a9-e941-bc8f-181d38170ff3','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6ddb56d-a635-2548-b433-35a8e5babbd5','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54dd0c02-db4d-6846-8ef1-86ffa3a49c08','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1893209a-82de-0e43-b6e5-85fde9a10d74','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1b1eab59-b609-dc4d-98bb-e771328ca91a','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('47623c58-072c-4847-8654-32f9a059e0f7','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7ba4fe1c-8dfd-054a-9497-772d5ca469f5','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2deea8f0-17ed-d447-b9bf-dba7a55897af','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('cce0072c-8463-2541-a23f-1ca4d09a5e2c','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('da58aeea-f04d-6d4d-be03-999a8479ec19','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a58fd983-df1e-d040-9500-0275ba1308fe','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13789f29-647e-fd47-b785-38b5d3351899','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd199381-6020-d741-ae58-6a143a72731f','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24bf7995-82ad-f943-bb95-37ddde63797c','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('198c510e-3efa-9a49-b681-f452fd8e31ef','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4556abfc-1e03-ba43-a50a-5c056f9d32a5','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f93ce5ab-2002-8947-b511-e5fcf973bf11','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a7c4039-1176-2e4c-9386-0566011449d8','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b019904-38d3-2a46-b427-8e1cf45a7e1b','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a86cc179-4f7d-5f4f-8eca-e7b1bfdebe50','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0bac72ed-9328-444b-96fc-b25156cc3d64','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01bfe444-0537-4845-bd9b-a67956a3069d','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3bd23eef-e5e9-9845-9360-166c9fdeea48','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be7d4275-e9bd-7e48-bd33-6d661557d7c7','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('121816e3-c581-5c40-ada2-597898eabdad','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7723162b-4cff-f84e-a9d9-4f1899d2edfb','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a3a38db7-e85c-d642-948c-ac9810ed774b','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('080584c2-66a2-204d-8bd2-93e2072e586e','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c427a7e9-c4fb-6344-8e5b-c9fbc3aed562','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9395cc4a-042b-ad4f-82f7-cb4a44f7cac5','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60f169f1-e159-ea4f-8fce-a5cb254b1d0e','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c79bbfcf-7097-2e41-9396-fed4cce74e58','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('767f8bb9-db9a-0945-b3bb-26f6e742233a','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f129b71b-2b36-d94e-b329-c236bb097915','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d5f5f30f-0916-7345-8cec-18e1bd5f11e9','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7ace72d4-45ee-6d4e-bf05-868e9886b922','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4999c42d-7807-b346-8dd3-433e6c2084e7','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('44daaf40-9585-8c49-bf94-d92e7ec7fb8a','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('591b20fe-823d-1749-b14b-8085c6afdebb','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('553e19ea-0051-da41-9ef1-c10451df3308','4a1f54de-056b-de48-8816-b382b10dafce', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21b74540-d030-e243-9ebc-3187176f3930','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('53740d7a-73e7-754b-a7c1-165679fcc39b','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aeebb301-ea99-1b44-ac3e-079b41cd84e0','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('91b5dcd6-a1e5-4c42-a1d0-b0bb1736043b','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79a8f750-6e93-bf47-8480-e6d24dbed487','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22d532a2-1e27-274d-a38a-c98d28c5b11a','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5484b69-eb43-0247-88ed-5a2b27fef5d1','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('525cb226-2d79-5247-83da-589e28852291','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('936a7b45-565b-c647-ad15-b4a7d2e984c1','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80c685b1-2a49-5c4d-9789-c255ef738bac','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d93b2aec-b459-5d41-849c-6f6db1cc8f2b','4a1f54de-056b-de48-8816-b382b10dafce', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('448753af-a63c-c144-aeda-3e2b2978524e','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec760ca4-419b-8f4c-8f96-d840d8a6a4f7','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a11418f-5624-9148-84ab-c63aeb5c6824','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e4536af-1a80-f14d-9674-5e15a696b6f8','4a1f54de-056b-de48-8816-b382b10dafce', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59a64158-7e8e-cb4b-a7f7-dae36739e66a','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('31b37005-4e01-4547-9240-9e55a1d1ddd2','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80ef1801-db85-304d-8d98-0c67f3df9828','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b5a6e6a-d54c-6b40-b268-f944a13ed52d','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9a1ca6df-c3c9-f74d-8e27-71d69c74af7d','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('abda450b-0d7e-8a4c-87ae-3ebcfe92de3c','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('de17fe1a-8ced-b048-a74b-75b3861b6827','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8be9378d-8c62-104f-a25b-41ed9f8f47ba','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1df20bdf-cce9-fe49-9860-59b7b3406203','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('484ad2ae-28a8-0e44-8ea4-00356ce7aa18','4a1f54de-056b-de48-8816-b382b10dafce', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('404ef56d-a656-d140-b3ee-fcaa1c05d039','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('13b8f84b-3632-aa48-8082-63a34a64fdf8','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('73bc2125-2498-b84c-81cf-192a8f9867f4','4a1f54de-056b-de48-8816-b382b10dafce', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('52234246-9313-c642-bdaf-c7b44a43cb04','4a1f54de-056b-de48-8816-b382b10dafce', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('a73b4a1f-fbdf-fb4f-993f-bcb2863bfc15','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('753ca4d0-fab7-2a4e-b1d5-96b9bc5c22df','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ac145f8-c754-8a49-b73a-d6b69f559f42','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('84a1d792-4adb-444b-b3c3-dd45052f944b','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21e9cdec-b44f-2343-8acf-cd152f5eed21','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95fc8408-3eac-2946-a979-f5d827edf716','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('794179e3-9e5e-d84c-a0dd-cdfbe9250a57','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e51c134-cab4-3244-89dd-aeeed9b36a28','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da806c68-69a7-a348-898f-126d7bd73858','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a685b93d-b622-af4a-a0ae-57fb78156d83','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('efe2812d-3eab-e340-b71d-e7db436510f1','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b751f6e6-1f1a-f54f-909e-1c36956ba854','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d54eb4ba-d8f7-d546-a7c2-2410233429c5','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a19dec21-0b9b-cd47-a798-4c69c6c03be1','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f5a969c0-89ed-5149-9623-ae265c913103','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7cb3dfcc-aa7f-5648-9158-26a69ee846cc','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('319837df-bc07-5544-8847-e9d7f49517dc','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6cbdc82-3368-2f42-b0f3-767012b1d8d8','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('522caa01-5ba4-a244-a9bb-f907364ef076','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('459c4083-1be1-c246-8e20-122c547a0f6f','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8642e95e-576c-c64f-8cab-9fc5f2275049','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('48ca42b1-87f6-a543-913a-bb65068b5c7b','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77ce1519-bfd4-6548-9995-8627dfab8fbd','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('712f6a41-d4f1-5944-8fef-ff908477931e','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('54d604cc-88af-6841-9d7d-1cd3f154f75c','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('62fc77da-b68b-224d-8ddc-825a0b050d8e','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c7bd194d-dde5-6849-9f98-10edc7aebd3d','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8f2b1c59-c45e-9340-b4f8-17c5597fa875','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2bd69b87-c342-d144-9c55-03596da8d46f','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e9176212-aa99-a146-8710-faa1c3bf93e0','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('755416d5-325e-d345-a2ba-42b1ef77ebe3','f741dde1-4384-2043-b5c9-339b2385b00b', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60bc3899-0952-1a4d-8e8e-1c65e1e1dd19','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d8175ba3-a1b7-ed44-814c-f40f286b1f9a','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61df4981-883e-0f45-a568-1e77b0068822','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('27cfc1ad-73a6-054e-9ae5-99d15e58dfb2','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60959acb-2a6a-eb46-bfcf-f5e070967db5','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c70c8375-257b-e044-9338-c571ab7a159d','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2b180aaf-4c61-4348-8204-342e2d0576af','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4eeeaabd-22dd-4947-a250-ae7dd7de562b','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c86f70c-276f-224d-8199-09611f9386e9','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c70f14c-e63f-f74d-87ad-21c94272b55b','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('184f7716-9b90-a540-a37a-559c4e40086e','f741dde1-4384-2043-b5c9-339b2385b00b', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b9558ee-dff3-4d49-8d0f-c321fecf0fcf','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0657222c-ecda-b74b-a0b8-5cf4477de045','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('98672f8d-97fd-1e4d-85d2-585af9e0629e','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9be75a89-c690-564d-b7a4-5d2af1740718','f741dde1-4384-2043-b5c9-339b2385b00b', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b2450c0b-e94f-2446-b1b4-e1e8564a401c','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f0c8cb78-a3c3-614d-87c0-94a9f7c0274d','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96e6863e-1a88-6c47-ba83-efe9a37e9aab','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e85497d-614e-154e-a873-e1abdd304b8b','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67d3945b-8913-6b47-a160-dd44474d334e','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dcffaebe-cb2e-7b4e-aa42-28872ebe6e53','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f2382641-ed46-e640-b5b2-92e8660fd7c6','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d8b77697-275e-c542-89c2-6c3e5b6b1fb7','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9abb356e-55a1-6b49-a283-698b96964941','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1250284e-0d41-814a-b8a8-ffdcdadf7de0','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('846f0743-d817-444a-bb2c-0128e4075700','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('640efdc8-4013-2149-b811-6fda7260a563','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a784ac21-f678-ab45-989f-9fa595610e66','f741dde1-4384-2043-b5c9-339b2385b00b', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('95192256-f867-1046-8cf5-a1c5f99ff7ec','f741dde1-4384-2043-b5c9-339b2385b00b', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('919d5520-85dc-394e-9523-81ed96f06466','768e2b6b-6cf4-a942-bf01-09c40696b353', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd3ccd90-d259-a64f-880d-f9386ffc65e3','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d5351525-d134-bc41-b0ea-60230fc17549','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03388639-31c9-3147-be20-04fdb31f7e90','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1d1c8ab-24b9-b149-9eb8-918596b54fa5','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa973c24-6ad7-d740-8940-0386ea2c2b8c','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03d4b8fb-a8e9-3540-a42b-1b40803222b1','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fc5d7a83-5e20-c245-a3e0-fed6e9c164d5','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3984e4dd-4474-c54e-a982-08e2c0804600','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1cc3a0da-0e4d-694d-8072-8bbf06c1631d','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6ff1205f-ffb7-7046-9675-21534a8de3cc','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6a0006a8-7b06-c242-a153-296b7d6ff052','768e2b6b-6cf4-a942-bf01-09c40696b353', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b6362bef-c7fe-164a-b338-b6a646f32f5d','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a78ff7bb-c79d-4b47-a950-449a42e846a9','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa4c2bb5-0d42-9149-a480-6c6c5cff8e42','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bccf65a5-ea54-ad47-bf21-cbec94229c90','768e2b6b-6cf4-a942-bf01-09c40696b353', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c3c1413-7cc2-ce4e-9f0d-20ddedf14f30','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da0e64be-4b0b-d040-9eea-83d70c4f6de2','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21517c8d-4093-1d41-999e-8ae611476e0a','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7768ff2f-4b2d-6a42-860f-362264c31092','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('70eae6ab-4b01-e742-b819-bd4075f65847','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee0d83d0-ff0d-d24d-84ef-914a65baa81d','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32b7376b-d0e7-e24c-8b8f-665b09c970f7','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c81e99e5-2556-0549-bd49-198e59691b2e','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4094a5da-0eb6-1a49-980d-9998d706f8fd','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c5e41a7d-0ac9-684c-85cd-55cca87d4ebc','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7c24f83a-5eec-794b-8fef-eac5fb9d8e65','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('bcebb91c-6e85-7d4c-88b7-a27ee9ca0f73','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('68d3d9be-def7-7a4a-ade1-3cbfd3126752','768e2b6b-6cf4-a942-bf01-09c40696b353', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('057d04d6-e6ab-9e4f-883e-8f0f20f3b7ee','768e2b6b-6cf4-a942-bf01-09c40696b353', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('36f1f290-986e-ca40-83fd-3f65b168c3e9','567af9aa-189e-404f-b951-f9f90fee228c', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('34347e4b-a3d4-1b42-baae-37c1b9c5c805','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('919efbaf-939e-994d-a8f1-1e78883b06df','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71b8cbfb-274b-4143-af73-7519f2f2e8f3','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b95f92dd-3c63-3b4a-acb7-e5eb706cb93c','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5d593f6-d53b-5542-a3d8-7de00f1ff8d0','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f91cd662-d6f4-904f-aea3-114b3519221b','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1856391d-74bf-4340-bf76-769656ce1341','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7142120-6512-1a4e-bc9d-5e5dcd6b12bc','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07b3042d-0332-f542-8a68-42cccb8e6588','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47c752ca-625d-704d-b036-52bff8852ec5','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a32289f9-99d8-c64c-bfae-222e8e364e2e','567af9aa-189e-404f-b951-f9f90fee228c', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cf65cfb7-e8b7-044c-9f5a-c2086581acdf','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb48a2e0-e7c0-4240-aeac-12c6e1d455fb','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5d62e1b-4578-cf4b-9503-81bc2a366712','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cf180ec1-12dd-c242-bbe7-2ff0905e500c','567af9aa-189e-404f-b951-f9f90fee228c', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f8ba137b-b319-a746-b9ed-b21302938d34','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b126327f-b441-b844-b0c8-a0b42e3df9b5','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d81ba430-a58d-0341-b8f6-7e4eae97f50c','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11e95744-0dd1-e441-bc97-df29672bb99c','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aeec9107-64fd-7c40-bc49-6a5ac93ca19c','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b829a984-d42c-5a4c-9bb5-3c643fd6cc4d','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58eb230f-ab17-a543-8a50-85976ea2a126','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('853610c5-34e2-c845-8f71-4fe1663b386f','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4e3c1958-e514-3743-82b6-87b03d63278a','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('18f87c26-3c05-4344-9a0e-7da2e2e2cc96','567af9aa-189e-404f-b951-f9f90fee228c', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8684a1b7-d3b5-6843-bee0-6a89a200eab3','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fcf43873-e490-b84b-b77a-6c19bf31925f','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4be30bff-f492-ad43-92dc-d8db5134fc5b','567af9aa-189e-404f-b951-f9f90fee228c', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d26ce058-d6f7-8f41-b882-136444103e4f','567af9aa-189e-404f-b951-f9f90fee228c', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('c4365d62-1e78-b54a-9512-44c2fe58071b','a2942072-9497-6347-b282-c364f6c19046', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('35e788d2-0d6f-2248-bc22-f4d4d1b8caf8','a2942072-9497-6347-b282-c364f6c19046', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('811a30ea-66f6-6747-945e-4a141abff242','a2942072-9497-6347-b282-c364f6c19046', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89ed26dc-27ea-7249-af67-a7b35a457311','a2942072-9497-6347-b282-c364f6c19046', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b3cc839-846b-ba42-96b5-84a4dd15f974','a2942072-9497-6347-b282-c364f6c19046', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('52f5132e-1016-cf4f-9fd6-7cece878cd0d','a2942072-9497-6347-b282-c364f6c19046', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5be8aa07-47a1-1d48-a720-69e3d4dedfb4','a2942072-9497-6347-b282-c364f6c19046', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b483b21a-9b28-e24e-b6df-377ca0ae6939','a2942072-9497-6347-b282-c364f6c19046', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e58428a9-8492-ad4d-9713-05418f69b22a','a2942072-9497-6347-b282-c364f6c19046', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a2105bed-c337-ee4e-9574-3210c7dcdeb4','a2942072-9497-6347-b282-c364f6c19046', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d97eadd6-63da-4b43-9f0e-fe30e75db54f','a2942072-9497-6347-b282-c364f6c19046', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('991ebc6f-3390-c04f-b32f-2e2e18ca0f6b','a2942072-9497-6347-b282-c364f6c19046', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09b9355e-f2fd-5d41-8511-5f7f166678c7','a2942072-9497-6347-b282-c364f6c19046', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('48cb6143-4182-4542-92ad-474df9c394ec','a2942072-9497-6347-b282-c364f6c19046', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2877a98c-1e16-404e-8392-8f7794b3ca29','a2942072-9497-6347-b282-c364f6c19046', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79e639bf-0c21-4343-9e7d-1d07270247fe','a2942072-9497-6347-b282-c364f6c19046', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10c1ce9b-844b-bc45-b5fb-417fb61cd952','a2942072-9497-6347-b282-c364f6c19046', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dfeaad21-242b-994f-aa9a-f1d6e40c56c8','a2942072-9497-6347-b282-c364f6c19046', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6dd087f5-6f6e-7043-858b-30f79b9dca51','a2942072-9497-6347-b282-c364f6c19046', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee9406b5-fbdc-584f-ad97-8e1068961a95','a2942072-9497-6347-b282-c364f6c19046', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5b7d9f4-5372-0942-8c0d-eedb00ca85ba','a2942072-9497-6347-b282-c364f6c19046', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9c83c0c0-247d-c644-a7c1-279862c40c6e','a2942072-9497-6347-b282-c364f6c19046', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c94c44ea-4109-0743-9856-f08fd29f5759','a2942072-9497-6347-b282-c364f6c19046', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6cf0261f-b0b0-cf45-a569-c8814c654906','a2942072-9497-6347-b282-c364f6c19046', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b2b3eae5-82a7-6e4f-81d6-4554346f77ec','a2942072-9497-6347-b282-c364f6c19046', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('79308e0c-496d-5b4f-bd3b-0061bf4a8b24','a2942072-9497-6347-b282-c364f6c19046', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d7676fa5-1852-0d42-975c-e82c24139292','a2942072-9497-6347-b282-c364f6c19046', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('4c665c3f-70c5-8a4f-86e2-0ab671482b24','a2942072-9497-6347-b282-c364f6c19046', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d2043926-939c-e14d-85d3-ed91e8779ed8','a2942072-9497-6347-b282-c364f6c19046', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('891fc6e9-3f16-a24b-89cb-6b9d36c66749','a2942072-9497-6347-b282-c364f6c19046', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('e43a04ab-7ff4-0640-9aa5-bc265a87c9f3','4008707c-8718-bd4b-932e-fb3e059186b0', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f415a5c5-0140-8048-849c-77b317463946','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('52a2bef5-1b8c-134c-b642-2df58ed3f129','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f610e036-8f06-7947-a720-ccce3c99bb03','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fbfb22b7-f1a5-3a42-b1d3-c5802c9e3895','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6ae1ee6-5098-2f43-9566-84817dd054c2','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('873b8fb0-fc7a-f04f-9d71-e7e4a8d069be','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95785216-9aa9-b84e-8a7a-25f9b63239ca','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61f5b996-0757-db4e-b5ff-b0669f2b201f','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c81d609-4962-5241-9c28-e50a632ee8bb','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d8faf5c-4a0e-db4f-ac8d-6b16f0bf8510','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4848e7fc-7be9-904b-8b33-144072d9f44f','4008707c-8718-bd4b-932e-fb3e059186b0', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('25341688-6a15-894d-8f21-b8ecd933d5b8','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61401d98-2190-cb4e-b8a9-2f40151e63a2','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17bee884-8b9e-e64c-8e01-457371f93a23','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('516c776a-1566-0249-ab33-ec37be9ef433','4008707c-8718-bd4b-932e-fb3e059186b0', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('643e33f3-ac36-fe4a-8444-7b4c57bd552d','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74ff1f95-d9fd-054a-ab0b-f71bcf42d9ec','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a96b75fb-9fe6-6c49-83e0-cea702e8ce8e','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b416b0fb-c7de-644c-b16d-739c4703eecd','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3f55ddd-688c-4941-9414-cdeaffb3a3b5','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('212b6ab3-798e-9646-8282-0c0eafa1436a','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ad93200-c3c5-1649-81c2-288f49b1a762','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2945d891-60f8-7442-8992-b16f003438aa','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6f08595a-5ea1-034c-9403-cec85a24fb0a','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9f2ba3fe-1859-fb48-b0e1-750481653d4c','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9a9a2b32-8b1e-4c40-b0ef-236737b8d5f2','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7a864916-dc95-6241-8955-07dde3718e9f','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('e9798e44-7662-4146-a1fc-1042bc9896f6','4008707c-8718-bd4b-932e-fb3e059186b0', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7cafd1d5-c963-2148-b093-c2680e3ba058','4008707c-8718-bd4b-932e-fb3e059186b0', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('f27e8a56-ae22-4548-bd32-aba1e9197a68','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('331d82fb-b1b6-7b48-a4cc-4fb51894da48','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8af5ac10-145d-1f4d-84c8-1fed0bbe0da3','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('56ac415e-33a0-5248-8d09-cc7ba62016f9','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1789b8d1-f534-4346-8d71-9906cdd5afc0','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af26f0d7-a992-5149-a64a-e7c24eef8e10','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8cd72db8-5d41-6943-94be-4a96d8b4ccfd','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2d1b8584-d300-474f-8135-d7824dadae61','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('770af2d1-973c-394e-8081-8cdddc5df42a','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76163fca-61bb-2945-96d6-652642091b04','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36c60525-88a7-c84b-a082-e7325ffb487b','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('37dbb007-f2ac-8c4f-88b0-169acff6ee1a','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3c09ac24-9a30-6c4c-a32e-6eeee71158cf','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('22c0da8e-2c96-6e47-aa9a-71c84a6562d7','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc028880-6583-bd4b-9ea3-a9d212bcf5fb','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('98cd0ecd-42c2-9e4b-b2b8-89f11a417af5','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0844eae8-78f8-b947-bbc5-40efebd9b5cd','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af714ac8-62f8-4d4c-be85-884f72b3f348','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aa196fc8-8c35-264f-8e17-5041abf8f0fb','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec4b13d0-54a6-b741-a8bc-c9d618b6421d','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2db22a62-24db-294c-84c2-778682fa6cb2','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6485c7bf-785e-7e40-9dce-e2bb3e9bdbca','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3ad4b679-0348-4041-8747-97942e3de031','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8fa6126-4c82-b948-b9fa-1b64c34009c1','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('872cdd48-3edc-fd40-9dca-ed7d3736d3d0','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d4abd781-d6a1-5c44-8968-9138a46d6266','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0474fd70-649f-294c-beb1-cb7cfd9e2a1c','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('cdcd6391-e153-b047-bca5-950a00d7f60e','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('25d3d6c6-87b8-f141-abf7-992dbd4eed33','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('333e66bf-5d95-d347-88ce-50872eac6f5e','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('154cc2b6-48e7-ab4b-a96b-b4ee5243f670','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('99f7fc28-714f-0448-a58d-dc0476130c22','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0e609380-8b03-ac49-b741-97a01aad75b0','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ac30fb90-6fc2-c045-90f6-49b38094a8a2','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('077994b4-f7c8-d547-9657-68e3efe7a3d2','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3f8ac51c-4962-3f4a-8370-059e7b63f49f','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8cf8833-c17b-c547-be14-4f22e1cf9340','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df3734d9-699b-d246-8844-ce1f63d7af29','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e6b5e44-8840-ca47-969d-33b148a6e713','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc36b88f-79a5-7c40-aa18-22dcb2a5a3b6','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d8cf305e-0971-c941-a6f3-c0c000b1902c','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fcf686de-09b0-f348-9a9e-94eb8428a448','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d1cfaa77-c790-7e4e-879f-53d2d800aada','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05acf2b3-634f-5345-bd49-87df5d72c002','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d925ac19-e341-a94e-8b70-083b1f598055','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15d03804-b7f7-8e4a-afb6-77925710ec58','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('92706bfd-7664-164f-9727-7e1985098939','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fd778a16-a0d6-c649-9126-4da205617536','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cbb07550-41a6-5b4a-91d4-a3cb850fbd5d','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb15b0e6-5529-e74e-9cad-27e8c16e3c9c','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('107460f1-9f1c-bd48-adf4-af5cb20b29ea','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eeef785e-3b6a-c94e-b6ed-906fe7a0c2c4','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6088443b-a3a5-cf42-be0b-af1b24670e83','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c2ba0323-81af-b644-87a3-aba5f66e81bf','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('30ff5bf0-4fb0-9d44-a9a7-bbe45bf3a2ce','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ca3ed97b-056c-0d48-b95b-ac286820ad55','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6c3be4e2-3ab8-4d47-9cc0-090845af2e6d','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ca0d592c-a3d7-ee4a-8d80-ece12b7e874a','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d35b7a63-a854-eb44-b61c-38f8cb3803a5','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c4750a41-a7a9-bf48-b59d-83f9105deef9','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('d141fb02-bbce-244c-90fd-2b6e2e1b342d','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4e021dc5-e0ac-4d4d-8371-0e54d8911070','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('72256015-4c5a-334b-901e-564673c7b263','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ef2cb747-d1e9-4f43-b3e6-23debb564db0','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cddeaa11-543b-0243-82f1-64c5f9f65592','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('52e1ee85-84f4-d643-90e0-75f2ec0aca59','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7a488a87-6ea4-3f4b-a74f-72bfc0637e0a','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6a02d161-7c90-104a-a788-4416ce196770','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee055de1-1b23-b145-b4da-2355af75f9fd','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce770f0f-01e0-7644-bc03-83331a7e478c','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d0dba0ca-40eb-3243-b76a-781695d85469','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02df396e-418a-2941-9f78-7018eab95e58','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c510b7bf-8454-cb4c-9e4b-6913527884e0','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f856569f-bc96-6f48-bdc3-5fee31d7f41e','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f7447043-081a-b648-9570-d39dd28397a8','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2a509023-3e07-9e43-b591-4e28df3964eb','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10bb0c27-4472-9e40-8421-0b28b86d9c44','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2874fe3a-bbd1-ed40-bd8f-3953f22d7b2b','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ab124042-1667-034a-b272-c4c5c511ed3b','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f93f682a-a472-2e48-952b-d4b4e26d309e','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c51b9618-de64-af42-9ab1-a420109012cf','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4ca1dde2-bfc5-bd48-8b77-6e9e22347acb','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5aa73a00-77fa-ab49-8d87-e159fe4b80c6','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8f36c123-5d47-7f4e-b0ea-98af714e9bd5','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('896f1281-c128-8341-9971-ecd98c8946ee','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('16a78ea5-6328-a449-a100-f34f6adaf21e','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('313d3a6e-6ed6-a04a-8fb0-7c299e2c854a','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d9c45536-f948-9343-9404-9c75ea31ba5b','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c787fa6a-6996-dd4b-aac6-9b77b8b0b7c7','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c98e53e5-1621-cb46-a3b7-271777eb7ee1','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('85971734-b323-5149-b808-f61d9f72cc77','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10c15a50-00a4-7c44-ae28-4d5486cb0897','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c84c5b7e-4476-c649-91e6-170105193b2e','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3b19e6af-2a04-1649-9a29-2be16f3b39e0','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b89783e3-15c8-8a45-a96b-89f6f9eba6e9','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5430030f-773b-1646-877c-09dc95a6257c','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c9256bb1-d1c2-7c46-a397-ee26cbf50922','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7c2473d6-6fa4-b145-8f92-7e909c343f92','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('06e6d8b7-4b2c-fb4f-a212-ea6e7346a50d','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24ee3edb-3c0e-2142-b75c-300909ef374b','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ce931279-965b-9e4b-b351-396688dfaab0','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e8429e8-86e9-064b-adca-9ccdfdf252d3','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('830e0d93-e301-9e48-840a-b4c0f7f4a84c','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee2fda25-484b-3141-a370-23975ea1fcd1','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8f26bb02-e5d8-3c45-8fe3-d6b31bb3ec70','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15988aff-977e-a042-9cad-341c0e652200','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('39787624-6780-9349-bcbc-ad8d504c74c2','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a115d574-8271-f947-8235-5f6d9eb38fa9','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0dbc56a1-41a9-8d4d-9c48-ee2d8d62fc5a','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28fda00b-9f40-bf41-805e-e83590f833f9','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d7a819d-cb8f-cb46-8de4-575ee4e5e254','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b1a6bf1-50e9-7f4e-99e1-aa3446810161','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c21dd317-6df9-524e-ac56-a4d51d623762','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47e80c75-a4fb-6840-92f9-95178c61e974','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5ec54d2-7385-c043-a228-5642f85b95cd','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('383a5017-1b7d-8547-92ff-493334acf709','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ae6c2144-ff9c-4a4b-9c4a-20520d28c15a','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('24562c1b-de57-0c44-b72a-c47263ac0400','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('98a12024-73c4-c446-8e3c-d352f4b14119','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d49f2857-2aa5-b747-90b7-21e633abf0f1','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('dbd3f2a9-fdd1-314b-9ba2-517e96579f9f','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f8bd21cf-01b7-aa49-a9ff-66d27f7aa0aa','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('73583fc6-2f2b-644a-be85-bfec91ed587a','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21b56e62-c362-7e42-a199-675c09a0c45d','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('36859661-05d8-434e-ab32-d1276893a309','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d79d6bec-3aae-4e48-9e62-1e88fe582e02','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('14f7f9fc-efdd-a647-8d13-17476f10db81','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('68b62fb2-8992-644a-9c98-7276b20e0404','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('13579750-4690-8d41-8826-39816f4d2abe','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('996ee4d0-573a-9a48-8806-5970a817ada1','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9cb6ffa1-7959-2a4c-9a19-41f7646e4740','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dfa73ded-5f41-e24e-aa6e-9123630dee3e','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10a819c3-2087-a24a-88a3-a2f836e251f3','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('adfde721-35f9-d343-9728-85d6dcd18034','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0d7a1e50-1279-8843-8012-7887ddb395f8','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0bc83e49-5144-014f-81c8-0b93925eb88e','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a3604b3a-ecd6-bc43-a5b9-629fe1c0fda3','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71785c78-6938-0f45-be5f-a78a2ac00ce8','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('db37bcb3-3ad3-f94c-adba-a74ab096d3ca','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1830688-0c3f-d54c-a15f-b6199533654c','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10654f2b-dedc-8547-8106-b7413d2cc897','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d8cfa152-6531-1a4b-8986-8a89564dce6e','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24e88b0e-a15b-744c-97ec-f5db0f2781cf','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('279c7345-fb83-444c-9285-888a990c854d','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ef925289-a246-1441-b1f8-f1bef79b0f1f','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('08ba7a4b-919c-f242-a113-5892e9a66a7f','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('74f19c3e-72a6-6a44-8020-ae51f0a340b3','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d7a219e5-4305-ae43-952e-c339a4807200','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c5cd3fc7-9527-7941-9b4f-1fd0f5bade7c','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('827cd0fb-9bcf-d440-ba91-041e266cdec8','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('66b784c8-0892-ba47-8499-4f7389bb1c37','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fa2e90bb-dea2-d149-80c2-f3b3ca976bb0','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ed504e9-197c-0e41-96d9-02b09b5d8769','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fbfcc39a-d5c0-a64c-a207-ecc35a34a518','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e01a9ff5-c02d-9f4a-8dca-496fecc5f238','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3085183f-fc28-cd40-a7ce-656a9e85d4d5','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59ea5496-95f3-2748-ae73-5255232aaf54','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0cc3ede8-69bd-5546-9624-ff5e393f1a86','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ab784fd-4f72-1741-a250-4e6abb1e37ee','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1fd3d4ef-fa2b-1343-9a67-8da85e4eeb68','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb39e0c5-8376-9f4d-a315-9959b956024c','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfc05a14-8038-6647-833a-816831d6c867','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e630fee-1f98-784f-84c6-d5470d97699f','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('047f1933-6fed-464c-8d86-44e70457d05c','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fce3aef5-6df6-0a43-9502-2f2abc42e134','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d66c502b-803b-c041-8d38-62de63f0a1c7','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('171ce730-78fb-c04a-9d4c-4763d9e80f5e','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('45a4ef4f-2a30-294a-8af9-5f88265a6bce','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47f62337-39a4-0b4b-b594-0d7d7ab767a4','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58e4fd4e-bbe4-2442-a7ac-0168762d55a9','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e25b15f-27e0-1f4a-91f6-df70a0f09112','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('49f8f918-96d5-7d49-91a3-fd125848ce8f','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9f056fd5-ce7c-0541-a0d5-136df5e2c7a6','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a49a1cb3-142c-d945-bd27-f4b68c1fdcc4','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ee123bb-4abe-2d46-b9d1-569b65e18643','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0b9b1349-f3fa-334d-a7f5-e2357b51fa7e','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('efc36cca-ed85-184b-92a9-313cf1fbd48a','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6083ef59-e5c8-9847-a254-3e60bb1baa51','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7f5c95ad-b666-da44-9e64-bcba924be263','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('af639859-5f00-6844-8a14-d642cb41b94f','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('834fcd52-6c39-ab46-bd73-2cf8fb0c4f63','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5f5b550-e0d4-f549-925e-23033e7842e5','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a090be92-c5f8-d943-88d8-4ab883f94e19','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e792db4a-5c2b-114f-8fea-2fca1e0b3403','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c812153-50eb-1a43-b97e-a57f61291b91','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96c303bb-6199-684d-8dba-aed773539263','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('65f9e0da-c59f-0747-85e0-24712c526d1c','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cd2c1274-7f56-c947-8b88-61cbcf966cfd','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('880d9157-b677-384a-bb1b-e1c330ccd8ab','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf02880b-9eee-b840-a791-01cf4f424478','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('46ed90d2-dcae-7f43-82c2-f22dd0d55270','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b057943-1a10-9747-98e1-de5d80a57c50','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fd617e6-62b8-6246-924f-1dd676183adc','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('83284918-5b57-744b-844e-4e9d09679897','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3b6d6cd2-2548-e64b-a254-bf3c846024dd','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('828c3842-762a-bf44-8244-6ae37f3e9bc9','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('32c7fd84-a655-c843-b6f5-2ff4eafc119e','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02930edc-1847-b644-83b3-86fe29fd332c','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a12da423-3fba-784d-a05b-b42c2af91fe4','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd32a8ad-e281-2445-b44b-4503c9873381','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f26ca3f0-0022-a849-903d-d55c1ed444c8','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e4e7366a-8ee0-1141-9814-7f0b479e656d','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('198eb396-7de7-1e44-b208-3b9bafc113b6','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c26a4fc-78c8-6242-9ab4-6ffc6b5af3e7','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('420ad9ac-74e2-1949-90af-9205650fc7e5','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('52638bea-7e1a-5940-a464-86579442c3c9','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0c8c65d0-128c-de4f-a29b-16ba245836a3','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('99f5b3fe-3c1d-6141-b621-abf487cbab56','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9c6fbe38-cfd0-034b-9d0e-abaeb4eef0cc','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('10f25235-16e8-e148-b2f0-2b0642e01bb1','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('cd379bdb-bd15-804f-9547-501bc1010ccb','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('10f636c7-e2d4-fc4e-b006-5dba16caba1d','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c2d94e78-10b2-4b45-bffd-a4a530f09f39','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('740cf650-4404-be4b-984c-1e5ee6605d58','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ba6c52c-c881-5d41-8d14-379fc00e4740','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3e9b4ab1-c438-ac4a-bfd9-7d14b50d750c','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('90c57c58-28d6-cf48-b57c-89042ac78653','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('66436b7d-b22b-be4e-a3c3-d97b1645942c','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('07f91a11-f8a6-c146-b56c-630fa6673dc1','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a797b05f-df3e-ff41-b872-b9292d813486','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8dd673c5-971e-194b-982a-de05b7779a4e','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c5cdf2be-3433-ae4c-a65f-b923dd3a47e5','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5550bd9d-e85e-0b48-b5e8-36982e33fc17','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58b148d7-04a2-5742-963f-175a3d2d4eb8','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c309c66f-0bc8-784d-aff4-0061b05bfffa','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e5af906-cc0b-c34f-b9dd-650781427e31','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('74181568-ae9a-074e-a67b-2ec9cccd17bb','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3fff8b6-cb18-f54a-aa90-af0bb8eacbb2','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1abdc254-e4b1-1342-b0fc-17823debed53','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da6a31a9-c9e8-5e40-9b98-aec7d6c01098','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9bc9a9f-e178-f34d-9b33-2c5c0fb729cf','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9e2b9b27-4e7d-7641-824f-53f495ae4959','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79f761ed-cbf9-3941-aee4-23b82ebfbf22','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8b84e52-e46c-a34e-9d6b-8fdc5c3643b6','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('511ff1a3-f6f4-d44a-b59f-2def5794cf4a','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('86800fbc-ec7d-cf45-964e-1a5c8a8486ec','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('bc5dc6b7-bf30-7047-adac-8068e26185f1','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3419e33e-7119-c44e-bba8-3a259a06a321','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2278aa2b-ed7d-0048-8367-1f26a66f2f4f','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('37e8e732-dcc6-4c41-ab79-02ab95b25b0f','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('d9feda85-2a41-1141-a9de-9fa85528be6f','8f128ca9-f180-9e43-b774-129b8c3b3539', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('51c9381e-6118-6d45-9953-1fcc74c0a3cc','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5fac924-a883-ec4f-b36e-9de003b4dd79','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2853b663-39e8-4340-9539-4aa63d7d0830','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('091a5534-55e1-ee49-b62e-afe964ed7bb3','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9acf2367-444d-9d4b-8e8a-e83bafea9626','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('be9d328c-b1eb-c441-bd53-77fe21fd7a51','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c74e6aa5-c5f4-7042-9fc4-29a440ebfe4f','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e50a462-8b72-5544-a77a-affde526ae9d','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ac18062d-a1a7-7849-b1d7-fe98d3d128e5','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8e607cab-88fb-d746-b327-554ba5424f0f','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4076a721-d841-fc4b-a91b-b6c70210330a','8f128ca9-f180-9e43-b774-129b8c3b3539', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f41b25c6-a5a7-d048-975f-a3f2579f571e','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e851e5f0-88e8-a94b-bf0d-890b9bf6e0fa','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09a8b9fe-53fb-3a48-bfe6-b46a84c086ad','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a111a6b8-f615-a74f-9312-49af5bd611ac','8f128ca9-f180-9e43-b774-129b8c3b3539', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f90be32f-6105-3c41-9159-e1f07239c8a2','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19281f87-329d-eb4f-a264-07209acfa163','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ffc95ac5-d895-7f44-98d1-ad4a91a4444e','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9d94e514-ee3a-c047-bc93-7215dd5ab69f','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ec2acc8-8b79-2f41-b4a9-39783de9d0f6','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('18b4b3f5-638c-b04c-b0dc-2adde9e12401','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f120b235-4c3d-0448-abba-f95259994094','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfae8867-2dcc-8447-966a-ceda1251e121','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ea756aba-e5b4-494e-941d-6418d7c8cdb8','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3dd62f55-3159-d64c-8b62-b80b1d7026e4','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('662cfd20-8dcd-c243-bc80-6f86d661e461','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2eac4dca-ff40-eb4d-b2b0-d5a7cdac7f5a','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('90cbd0af-54a1-e441-9f8c-164d0d87254a','8f128ca9-f180-9e43-b774-129b8c3b3539', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('64a5fc8b-2197-7242-b31e-e732f3f384cb','8f128ca9-f180-9e43-b774-129b8c3b3539', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('5787688e-88a7-d347-8af0-689767dd52e6','5b86b29d-9431-3743-91ae-4576f6a4334a', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fdc88367-d5fc-564a-8f6d-e9979367cfbb','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c21f198-8cca-2442-bc16-733262d60a4d','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('89e03ce7-a969-8e42-a216-2263b55c5ce6','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('892973c9-74ab-ec4e-9e4e-2d89bba3333f','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7943b8e6-1617-3948-84bd-43399ef7d520','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1d2e8eb-411a-f14e-8c7b-fb8658dc5b25','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6cf23c88-5250-9c4d-9769-a775aaa937fa','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8b264dd-14fe-a243-afc3-a9e5b1f5c780','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b9fe2b70-36dd-3b41-bf60-9553ed67a8e8','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16fd907d-a475-0a43-b448-d93375d9b6ca','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec2262c3-b546-7742-9d24-349f85f9c92a','5b86b29d-9431-3743-91ae-4576f6a4334a', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('185feaef-614e-df4f-ad2d-1730e7138a68','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d2fdb50-cca2-934e-8870-9d93e01c2e1c','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c35ab1bc-868c-534d-9e88-b490c5338f24','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('346176af-3703-2541-a419-92ff2d37a078','5b86b29d-9431-3743-91ae-4576f6a4334a', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f73ca7f7-986c-8d49-85b2-2ffa3f83f4c8','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('82871fdc-cad5-de4e-bc17-841151230408','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33ba552b-c0b8-904c-b967-cf2581ca8440','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('41d82d7c-02e0-414d-8e67-bae348953dfb','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6c97b4f-f86e-f044-aa03-aa3c7ee2e492','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3b98b99b-aa2a-ce4e-a91e-45c145126b82','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8b796737-3e70-d740-b1ff-23f798818f1a','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('537c84bf-221b-bd48-b783-dd1b9cb5d199','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9742a826-f1f7-134c-8473-b42c17b8deb1','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0cb2e205-ecea-1348-99aa-167f7cd35364','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1ced9cf4-a88a-b048-88b7-e72c874d14ab','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7821bb70-d361-1d48-a400-d3176d48140f','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('40f2076a-eb99-9349-ad8d-feb78bf8ad2b','5b86b29d-9431-3743-91ae-4576f6a4334a', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('bbcbe920-6b0a-c84c-8c17-4a544c85759e','5b86b29d-9431-3743-91ae-4576f6a4334a', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('3eb60e40-e621-f44a-a7ed-e6f25431c475','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c5e7e808-a793-2e4c-90a7-e4c9071d85a9','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d9f6c51-f15e-3d40-9ad6-b34616535cd5','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2b2b8839-ecae-984b-82a8-2396d808404e','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('514696e7-8a95-294b-b35f-cc7eb90e9261','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6bf8402b-af4c-ac4a-ac9d-c47954994609','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c1233d43-4314-4043-aae5-c5aa77915d25','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4f1f91ab-e1e4-2445-8c80-47f39748ea17','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c80e7ffa-06d8-1747-baf8-6cc3dcc35093','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b6e8c5c0-fa33-b14e-bd5d-8dbce46c0cda','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fb424ca-605f-4345-a986-34e2e3e81d48','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f4a99c45-d832-684b-8296-6425581fc396','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('39928072-b2f3-2c46-a762-5248b07582c6','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5b3ff24e-3ef9-f04d-a7c7-e28e5f336b7b','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fafd62b8-e2ba-8d4d-b543-2dfbb30e534e','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('399925b2-ec07-664f-9553-235d58b1cb32','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('221aa7d5-ea36-e149-bd69-613f032bbd1b','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee9c9260-4c59-5c44-9968-8257ffb64b96','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a321e495-0503-7948-8085-04b9439b0a2f','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc410693-aa03-2d48-81cf-5d3f121ba3ec','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d44ddc32-52c5-6240-9621-534f44c29989','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6fe9de00-a376-894a-8e00-9b9242997e0e','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5edae20-2f4e-6e45-bae8-1d2814cb6118','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('705570db-8d0f-874e-969b-853cdd518555','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f30041d1-42c8-6045-9f21-3ba236c5fe49','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1cba5b0e-dc3b-154c-a167-16b370577a85','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b9d39428-68c0-0a45-8564-a3aba183e7e6','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d18e649c-70ce-cc4e-83bc-0bc2ec99e27d','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7a655f8c-cf22-d04a-8b19-304574b84e76','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('cfa21e3b-081e-e345-bd53-25fbd102518b','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('74f2bcce-054b-9b4d-af21-ceaac7e58fdc','47286116-9817-f945-af69-8321029caf5d', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('edd6d379-b377-5f47-abaa-5ff504f3a933','47286116-9817-f945-af69-8321029caf5d', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('449e95eb-d342-4544-ab30-e09e3e1e0cdf','47286116-9817-f945-af69-8321029caf5d', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3ff30f8b-4679-3e48-91c0-9ad5350435ad','47286116-9817-f945-af69-8321029caf5d', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('baa2a616-a056-0d42-b1a1-04ad4fea6bb2','47286116-9817-f945-af69-8321029caf5d', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d240b6c1-c94b-1349-a8eb-17263df3294f','47286116-9817-f945-af69-8321029caf5d', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d2e274fa-a327-d04b-88da-80211f9e5b46','47286116-9817-f945-af69-8321029caf5d', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19281281-8ffb-1940-8554-721fcd33cdcb','47286116-9817-f945-af69-8321029caf5d', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('25386fad-7314-fc4e-a8b8-d44b56322a03','47286116-9817-f945-af69-8321029caf5d', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f69174d5-18a3-eb4a-b036-51da6512caed','47286116-9817-f945-af69-8321029caf5d', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd1407b1-8fee-0042-8837-98371cbaf356','47286116-9817-f945-af69-8321029caf5d', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80bcffcd-717b-b541-a722-3ee713006447','47286116-9817-f945-af69-8321029caf5d', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a9ff0ec-35b0-b347-bae2-2d4d883061f1','47286116-9817-f945-af69-8321029caf5d', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f1ea4c08-b35d-3144-88ec-f6bc23a4dfd0','47286116-9817-f945-af69-8321029caf5d', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21baf6eb-ce19-434c-a094-9401c9d6ba38','47286116-9817-f945-af69-8321029caf5d', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('58726322-8213-4f47-91f4-593d710b9d6e','47286116-9817-f945-af69-8321029caf5d', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5e259201-dffc-e447-b413-78afb9068d28','47286116-9817-f945-af69-8321029caf5d', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05565312-543b-e04c-83ac-bbfa964af468','47286116-9817-f945-af69-8321029caf5d', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a26a615-c387-8d41-b1ab-532429517c3b','47286116-9817-f945-af69-8321029caf5d', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77588237-b425-194c-9b1f-4e56cd7fe4dd','47286116-9817-f945-af69-8321029caf5d', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('30b6bf49-71b7-1c40-8216-7a12eac75b59','47286116-9817-f945-af69-8321029caf5d', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0fb4dcd9-327e-5d46-92e0-cf1b21432a2c','47286116-9817-f945-af69-8321029caf5d', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2439780b-3bd4-0445-b199-cd1a324c6a7c','47286116-9817-f945-af69-8321029caf5d', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('88a4e83b-366b-5d4f-97c8-6787c2a87534','47286116-9817-f945-af69-8321029caf5d', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d659e331-daea-2e45-947a-121ec4208955','47286116-9817-f945-af69-8321029caf5d', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6502a54c-f583-0941-b59e-b784cfd6383d','47286116-9817-f945-af69-8321029caf5d', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0986ae5e-579f-4a40-ac1f-b925d83069e0','47286116-9817-f945-af69-8321029caf5d', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('51e7c6dc-33b6-924b-8134-792216d1f8fd','47286116-9817-f945-af69-8321029caf5d', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('80ddfac9-4223-b943-a446-e1ad588b75bc','47286116-9817-f945-af69-8321029caf5d', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('2819f609-6eaa-ec40-9e69-38ae41d060f3','47286116-9817-f945-af69-8321029caf5d', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('414e960a-0d99-8e4f-b132-fffeb13904b9','2c01cb50-3274-5d48-9b00-1478575c55df', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a87531c-2dc8-9a41-9823-546bebdb6b3d','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb64271b-7788-b94b-a53f-b5f8f0936973','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8152390b-b289-ae4d-8ca5-a128c4a9ac0f','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b6e23bd-0e0f-3343-b5e5-f5384397b558','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95a8870b-6d8a-c143-b0d0-a0a2b4d1135e','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('021b9d05-984b-004e-85d8-9499623b581a','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8861db67-aa6d-1743-b430-a58fa099adc9','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59722d7d-8303-8648-8494-32b48e95a679','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03568c9e-62f3-3442-98cb-cbc63e7ad2e2','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('12cf8ec1-f623-fc4c-871e-8df9a3b7bd47','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8952bd44-ca49-7b49-9e03-05ec0e48f79d','2c01cb50-3274-5d48-9b00-1478575c55df', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b3e4f547-8b00-5a4e-aca8-4e294d1581e7','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('04de99c6-1c9a-154d-861e-21da14ade3c0','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d19d981a-28b1-4d4f-9b2a-aed0d2c67b3b','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9bbe0d56-e0a8-6847-b512-89321d779183','2c01cb50-3274-5d48-9b00-1478575c55df', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3bcc2e00-7a9c-8840-b22f-9178c64e9feb','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9485528c-cb47-1b46-8b9e-eba609d06bb6','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb58dcd4-42c8-c144-aaac-018428f56e26','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4d0b1778-8620-fb42-b918-6fbff79f6be4','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5cc19e5d-0c6a-704b-b71b-0910435021e9','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('920b19ef-964b-3e4b-94af-60a99e0ec9d8','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c960fea-bc5e-9b41-b155-af4ea4b1c32e','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1ec6a864-7734-fc4e-b9bc-0d431c8a8df7','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('410a63bf-3755-6043-87a4-54e15bb072d4','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('8d4464cf-a251-0641-877c-d053f550e94f','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('573ff05f-5d50-b442-95f7-cf9dd000dc1a','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('65efc1f5-0260-6540-b72f-d896226db9f2','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7babaa19-9421-9f44-a684-33d23f2c3ab7','2c01cb50-3274-5d48-9b00-1478575c55df', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('a8a2c6e8-413b-4542-946c-b86eeb67a43a','2c01cb50-3274-5d48-9b00-1478575c55df', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('5ca36590-9a97-294e-a595-956d7ceb8d2d','7202215f-9144-7745-8ad8-150f6319c9d2', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('910103e4-7e96-2343-97e6-f2d967a2259b','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e32898ea-f6a6-5f46-8e5e-68c17cc93a99','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('522a3d2d-7335-4645-9315-f2aa8641694e','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('730f4c57-64e5-0a42-ad37-d39265c9aeb2','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fbe6f48a-c70a-ac4e-9062-b7af74979de7','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d180f9b-cf06-fb4f-8bba-4750c56b9069','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ec11bc5a-f871-ea4d-8d29-77d210887d57','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0b639bc2-22bc-cc46-9e0a-a866ec67bf9e','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8486f0c-17be-f844-bd24-b47f103a7d05','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('76dc2eb7-a49a-764b-9e64-af07f7b19ac9','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('041c53c3-3214-9b42-a4ad-cf45c0906ebb','7202215f-9144-7745-8ad8-150f6319c9d2', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e0800987-25af-0a47-a232-ca3a65e8c582','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a6c77048-6e91-8c4b-97c9-a1f0eef8d4e4','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('427a4051-3d4b-db41-b37e-0ec9e4471e0a','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfc45ba1-ead6-0642-b0e8-ab5ef0b0cf2b','7202215f-9144-7745-8ad8-150f6319c9d2', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ba5cadf4-13a9-7e46-9ee0-6eae9ff35611','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ad3d5e84-89e8-ef44-8c70-aac0df17edee','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('34aaa134-d402-f046-9d61-6fc60cc8080e','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('95df1fbb-4e46-df4e-a95b-5c2d6d437e46','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('550d284f-5fad-ad46-8e71-69c840fc4a59','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1384f0e7-7194-804a-8ec1-805fedd9b703','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67f80df1-195d-0944-90d0-c337f8a82638','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6409b370-be13-6a4a-82b5-4312151a74e5','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bd03303b-1314-0b4b-a092-cc5114c1fee1','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('19244a92-4ea5-fd41-a6d8-0dec831964b9','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('64236ede-53a6-1a4d-b830-50eb9c25c51d','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d03f3f94-49e5-fd4c-97d2-2b302a387734','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('326c5c7b-2d0a-8847-bc77-1b57c3c7a195','7202215f-9144-7745-8ad8-150f6319c9d2', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b278182a-a392-0f48-8539-1bb1f73ba224','7202215f-9144-7745-8ad8-150f6319c9d2', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('068606a5-8c91-214e-8771-35a481165dae','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7fac4c2-7a4a-a54f-ac65-44fe2113c1a8','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e61ffabd-00dd-eb45-9134-d280b3ceabf0','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c949ceeb-15b9-2042-975d-68d5b8cc01bd','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('53c59943-f24e-6842-b0d7-244012fb7adf','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('17745388-33a6-bf47-ac0f-943d768f9f35','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d3309dd-f3e0-1c48-87ee-db43353b733e','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b73931ba-ff7b-744f-a580-4bac9d42f509','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2481b8d5-187b-184f-8a50-a2f38785b69d','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('402416b7-541f-544f-98a2-7aa9bea7114e','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('56bac358-5816-7f46-a35d-2bd38b894027','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('91ebb4b4-05bc-874d-993c-1997b42e56f0','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('968b94dd-4220-a94b-bb4b-39f376025ed1','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8fd3091-e8cd-cb45-b1ec-e0a3de78b7c5','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('430e43db-1176-4a47-954a-c1ae79c5d4d9','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('af5c1540-4697-9247-9b2f-a2708279f577','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5dbf1b42-0c3e-e849-b8de-60234104225e','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8612f16f-6809-4547-a6b7-28f34aad0c20','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d0df68e-85c3-374a-a26c-f59cce5f8851','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1df9d9cd-bcf4-e744-89b1-065e5a921d34','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('645556e4-6b41-a24d-8c7b-217d1a17c6b4','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2f6599c5-f91e-7a4e-8dfd-336d2494bcb8','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cb9d810a-e8d8-104f-bf4b-64ce4eac3f1f','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fcfc5407-6d42-044b-b9fa-b0bba46c48e9','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('90175e0b-42a7-f846-be16-e6dd8c4064c8','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('50703fe5-470f-6649-a282-ea083e95e4fe','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6b8a1ba4-fb1d-7e4a-997b-e3ce2826334a','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('28140ed2-1869-754d-af56-bddb73976f3f','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('570a24ef-4cb9-6841-9abd-1e84b80b59c0','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c84cfabb-e6f0-5942-a97c-edd2a4551d08','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('6136df8d-0c99-8243-bf8a-f88b7f4b42e5','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('974d1b4e-8072-3b48-b061-7abd853db610','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7cbd839c-d8fa-2444-b403-72cc8d8b86eb','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b127001a-457f-3643-bcd6-b99802e0bee1','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d13bc360-6152-fa4f-92ce-a63525cc69b2','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9dbc5fa4-7cbb-1344-99c9-a8bf68ef6ed3','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('16eb828c-bd33-c94f-9bf8-648027f592cf','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e5a23ba7-bea7-8c4b-a42a-e0845bdea270','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11860c38-ff25-674d-a5b1-0d81be32f442','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d0434753-baf5-1f49-8973-235ab69c0e86','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('cc09776e-b721-5249-81f6-b58ad04d4b71','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('60b6e80a-93ec-ef49-ae94-a7842c342f96','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5aacc2d8-c394-cb4f-b7d8-8e9e99c4942e','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('96fb6623-9006-cc46-be70-0ed8b9867977','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ea3cc852-d9b6-ec47-be9a-80d5b500358e','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d32d42e0-a846-4e45-a486-2efc64838ec7','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3aa806b3-7f27-8947-8fc3-c4965501c5e6','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('061a77ef-5c22-4e48-9abd-085fb1b04309','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1777ee87-e139-1b4d-86fc-f19eaa2fcb2a','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ed70d0c9-073a-0044-9ab2-f22f926c57a3','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7e14d2cf-f5d4-1a45-8642-8df152aef56a','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d63ec6d2-371a-0a4a-be3d-e839c44646bf','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f65b26f4-9fcd-494e-bb07-41e148317fcd','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2671b91a-d77e-bf41-86fd-051e2fdc213e','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('602bddf8-6bf2-114a-b159-571998838bad','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('be4fe914-8165-4b4e-999f-ce15b51218f1','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('1177bac1-6e50-b347-8e05-7c906d833ea8','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('dec7ed71-91b4-c04b-8a36-4b010b819180','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('ad5ee815-0507-584d-8936-a2fd049744d1','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'section', NULL, '差异', '28', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3e6a816b-5eba-1f4b-adf4-06be4e85395a','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'field', '1d9c9905-87f6-4c76-a344-d350c4a3378d', '差异字段', '29', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('26e7fcf4-3b1f-9d40-a237-07515a1f71f5','821cadab-7be7-374f-8ed2-6031f5e30777', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('7a27494e-74df-4c46-b8d7-0333bd388164','821cadab-7be7-374f-8ed2-6031f5e30777', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('40917b3d-dfe0-1446-8db0-d2feb39bfb2a','907d7a7b-e5f6-114e-a7af-a13b855a8853', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('dc183cd8-b696-7a4a-b3a6-e32082c32b09','907d7a7b-e5f6-114e-a7af-a13b855a8853', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f8e7ef23-0a36-a14c-b180-51858401c4ab','061b3348-20e2-c84d-a115-2c8337a39a04', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('05c29ceb-27d1-fe4b-9ab1-3911c85f070e','061b3348-20e2-c84d-a115-2c8337a39a04', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d64d74eb-2e61-e443-b5ef-0b2e396d9fce','b61abaa1-da92-8d4c-882d-75da206a8078', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('692ff185-7cf6-a549-b653-b60275d23b23','b61abaa1-da92-8d4c-882d-75da206a8078', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c5432ce8-e5a8-574c-8d93-eb69cfa0de6f','3ff99872-c49e-fb43-bb16-779eee8e643c', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('f2521b81-d611-184d-b54c-379f5fda6411','3ff99872-c49e-fb43-bb16-779eee8e643c', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('46a0a53f-462c-6644-aae0-31227d26d70d','4e7c669f-1a5a-8c43-9595-93f8c2429256', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('f1c92183-76b3-bc4a-ac2d-4f174c6618a3','4e7c669f-1a5a-8c43-9595-93f8c2429256', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('15d78792-7266-0c44-ae08-a70f6887a882','90b2d3e1-77c4-d141-a7fc-60693499dadc', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('e92b5ea5-a399-7c44-a0c8-e79851c203a2','90b2d3e1-77c4-d141-a7fc-60693499dadc', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('905dbbf4-08b1-0449-9212-a58bca95de93','def823dd-2766-284a-9610-b480d82c171c', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('2130141e-f7a1-bb4c-8d42-8538ed82b567','def823dd-2766-284a-9610-b480d82c171c', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d084e55b-360c-e74c-bd32-ef258249b4ac','4f9edffa-48dd-bf49-9ff0-34c22266eff4', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('091bf8e3-33f2-1944-92ad-c28635178193','4f9edffa-48dd-bf49-9ff0-34c22266eff4', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4054b6e6-8257-9146-a354-24bc1ec6e8a6','acee9eb7-1296-4c4f-9334-802d33045062', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('566fba35-735f-774b-bfad-392bf06b0c3b','acee9eb7-1296-4c4f-9334-802d33045062', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('231e9854-ccc4-df45-a715-eadd34ddc4d0','50a398ca-f609-9449-bc39-cb0bbc132394', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('f91d6a03-4055-cb42-9d1e-12e8d5803ac3','50a398ca-f609-9449-bc39-cb0bbc132394', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9086db95-7e10-5a41-a349-b98b68d576ae','3db20274-a58e-7340-9de0-d451eb968781', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('d9cf326c-6a31-e74c-82ec-8f66c17e1673','3db20274-a58e-7340-9de0-d451eb968781', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3ccb3515-170e-6f4b-a2a1-aed6dfcd0d83','8c2fbe41-6531-2147-a15b-2a00c4c213c2', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('62977ab5-8b6c-1948-9697-3966830c1c8c','8c2fbe41-6531-2147-a15b-2a00c4c213c2', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('96bc3882-6d3b-2947-9c6f-861c19ebbac0','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('b4e148e9-ea42-e544-9055-f7c14bc76e3e','57be7011-0cc9-7845-8ff2-2ac898cc9a0b', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('e9fa00df-949a-054e-a652-785d77f435bc','de908092-b5bc-c84c-b29d-d5c678df4d28', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('2c3a9cdc-c6fe-2e4b-933a-e1b1f9620ba9','de908092-b5bc-c84c-b29d-d5c678df4d28', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8b04a858-f419-6447-85a6-6af5701a9e54','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('a6db977c-2da7-8b4d-a426-529ba0f61ee0','c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a73e57f8-df6e-3743-b1d3-2280b091303e','e369df16-dff2-7d45-b0fc-a0d42fdb4146', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('86ad636d-3d8d-014f-96b6-0071c3d3a04e','e369df16-dff2-7d45-b0fc-a0d42fdb4146', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a7240a9c-8892-394a-a48c-2645f410949d','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('d3352538-d2f7-1e4b-9a94-1eed9746b5ed','1a1187c0-61b7-2d43-a2c9-1876c5027f5f', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('1d7add70-c716-7743-8b87-b1447b4d1702','093a8815-14b6-d842-be9c-ed92bc382714', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('dd48cf2e-7832-df4d-a90b-1223c6a25fca','093a8815-14b6-d842-be9c-ed92bc382714', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d61e14ca-cd1b-ae4d-87f6-6cfb9a767451','cdf8d19d-231e-124d-80f1-6694be0d8543', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('fef7e9ea-b58b-6e4a-9c00-ddd5d84619b8','cdf8d19d-231e-124d-80f1-6694be0d8543', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0e472dd2-f194-ef4c-aaee-fd78fdf5b4f1','840e7b6c-bb5c-a84d-b0af-b9a418e67411', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('35211ad9-706f-3c4b-abd7-9e05fac68d33','840e7b6c-bb5c-a84d-b0af-b9a418e67411', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f8f68774-0f84-394b-9015-b71f8ca3e1f3','106dff8a-d2a8-f846-a3f5-cb858a4fe528', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('f86c31fa-e6bf-2f42-bce5-726de19ff906','106dff8a-d2a8-f846-a3f5-cb858a4fe528', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('31a6e8a7-5f43-3343-8a2d-8238e9827cda','be93eec1-f36d-764a-a788-c0d76f495946', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('281af91b-19f8-be4b-a267-6800ff6e1d98','be93eec1-f36d-764a-a788-c0d76f495946', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('fc7d5a1b-0b03-fc47-9a35-f46b78be8f64','600d4025-16fb-2b49-be9d-a6f337c6ee35', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('fa100bbf-95e8-7343-8981-e7d63390ba70','600d4025-16fb-2b49-be9d-a6f337c6ee35', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('91cabcac-d335-ee44-8631-769f615760a6','1a72d236-c1d2-bd40-9160-cb636199c9fb', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('e466777e-a706-2f4a-90d7-a3ea25f0614c','1a72d236-c1d2-bd40-9160-cb636199c9fb', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a11631aa-e956-9449-aa35-cb92b1d5b0db','4a1f54de-056b-de48-8816-b382b10dafce', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('3345f3c5-3224-e847-a06a-b5aeda7708be','4a1f54de-056b-de48-8816-b382b10dafce', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('3048dd0e-bd1a-8e46-9288-2bcc2931d0bd','ddd60496-2cef-bf4b-a894-810bad4ceb77', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('28a5cf7c-207d-6643-a883-5ae9e4110b58','ddd60496-2cef-bf4b-a894-810bad4ceb77', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f8b27b97-b0bc-2344-b15a-9b89fea8115b','f741dde1-4384-2043-b5c9-339b2385b00b', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('79f7621b-a6f1-144e-a870-855011f62cd3','f741dde1-4384-2043-b5c9-339b2385b00b', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8bd68f94-a43a-8246-b64c-d479839ed7e2','768e2b6b-6cf4-a942-bf01-09c40696b353', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('6ed1e382-4e08-0944-bb5d-c86dfce5e0b0','768e2b6b-6cf4-a942-bf01-09c40696b353', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('43136234-f8a3-d04f-8fb5-7bf6ef130443','567af9aa-189e-404f-b951-f9f90fee228c', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('d4667942-6db9-104a-95e7-fc62202a4da4','567af9aa-189e-404f-b951-f9f90fee228c', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('afb937e4-eed9-8a41-a880-d92d1492fbb9','a2942072-9497-6347-b282-c364f6c19046', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('7400553e-1a42-3445-8a94-9bb9dfc14ca9','a2942072-9497-6347-b282-c364f6c19046', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('ad3bc965-65e0-7e41-a9c9-a17caa89211f','4008707c-8718-bd4b-932e-fb3e059186b0', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('5767c519-70d6-5547-9dff-f36b1f84913b','4008707c-8718-bd4b-932e-fb3e059186b0', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7ee447aa-4654-dc43-81bc-78cdc29811f9','b67a0ee0-92a3-424b-85b6-1fdef416449e', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('ef7e36f8-09d5-3b4b-9f79-f690921dbb77','b67a0ee0-92a3-424b-85b6-1fdef416449e', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('f393b0fd-7491-e447-a0a2-868495371797','528bad7b-0d77-2a4a-84c2-2d70b4323609', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('539ba56b-000f-0545-aefe-0b763320d062','528bad7b-0d77-2a4a-84c2-2d70b4323609', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4fc0bb6c-fe34-ab45-b9d3-b77b850d5a62','d4a07436-95ae-6c46-b6c8-ff0938892fac', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('0e866a11-8918-064f-bb4e-3e46c5ab3ab1','d4a07436-95ae-6c46-b6c8-ff0938892fac', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('94520a74-18b1-6941-b263-bcba259988af','b2231bc1-81b0-e94f-921c-651fd4b235c5', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('ed317adc-11e7-7f46-b094-2f57d7399bf0','b2231bc1-81b0-e94f-921c-651fd4b235c5', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0d160b70-d133-6d46-85c5-ffa9ff8a5a11','d2ae0bf1-d036-3147-9a93-36112a5a67a2', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('c02da64d-47c6-2940-b0df-8acd6f1fc061','d2ae0bf1-d036-3147-9a93-36112a5a67a2', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('5866c9f1-879b-3547-8de4-55ff09538c5e','b73f7ecf-7581-3c47-b124-05a1dc3c2662', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('4040697c-f787-324c-974f-bdc5d52725ec','b73f7ecf-7581-3c47-b124-05a1dc3c2662', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('00cf1b8d-f93a-7949-a8e1-cf7eec9b6027','09e1f3f7-a46b-414a-b83f-522eb8097c10', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('8bf93b26-7c0a-f14d-bee0-56d6178e5760','09e1f3f7-a46b-414a-b83f-522eb8097c10', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a158f663-119d-e544-a386-39ca0c13b95c','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('08163595-c7f9-924a-a7c1-c36bcef1aeab','9cb9ef3c-48c5-2b47-a402-10e2fe49018b', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d5ff9e7e-16b4-fa4a-8e13-ba73963b8904','8f128ca9-f180-9e43-b774-129b8c3b3539', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('0a21e54e-b6b6-414c-bce4-7ac8ff1df465','8f128ca9-f180-9e43-b774-129b8c3b3539', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('cba3b666-b456-e14b-afc7-6e6fc5ddcf9a','5b86b29d-9431-3743-91ae-4576f6a4334a', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('2a4f78b0-f05b-fd4f-a2ec-d24c63c60b87','5b86b29d-9431-3743-91ae-4576f6a4334a', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('95fc66ea-1095-8f47-8ab6-1bdb8831d091','d8211b79-43c2-b74d-9a70-ede664c5cdf3', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('491a4329-301b-524d-85a9-e3c901a45c95','d8211b79-43c2-b74d-9a70-ede664c5cdf3', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('abba4ac1-46ef-6944-9e44-a41e77fdae7f','47286116-9817-f945-af69-8321029caf5d', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('5202be01-ea9d-0545-9d1d-fa7b72a29890','47286116-9817-f945-af69-8321029caf5d', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('918d127e-9df0-4146-a673-227e3a4176de','2c01cb50-3274-5d48-9b00-1478575c55df', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('718a34ad-1dd8-414f-859b-6301bd0f7dba','2c01cb50-3274-5d48-9b00-1478575c55df', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('0ffe7c1e-eee5-3a40-b234-f1459dbeadef','7202215f-9144-7745-8ad8-150f6319c9d2', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('4ba6430c-0cbb-6b4c-acad-ecd002c02b10','7202215f-9144-7745-8ad8-150f6319c9d2', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('217d72b8-df29-fd49-b371-b05fce15aa4a','5cd831e0-b318-434d-bd13-bd7e0bb86459', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('328cafef-a33d-d941-9234-5403d9eaea40','5cd831e0-b318-434d-bd13-bd7e0bb86459', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('37b0f2f9-489a-834e-af1a-19ba9896dc80','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', '2b4ec2d0-181c-4588-bfaa-42a5b51568d7', '1', NULL, '0',  '0', '1', NOW(), '1', NOW()),
('344d14fe-81c6-e044-b05e-e4b36c87ac83','fe114e4d-6b9e-8247-982c-20cbf9c68a6d', 'a67d9bef-91fa-4345-852d-0826205a7131', '2', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT IGNORE INTO `page_layout_actions` (`id`,`page_layout_id`,`object_action_id`,`display_mode`,`order`,`deleted`,`created_by`,`created_on`,`modified_by`,`modified_on`) VALUES 
('43006902-edbd-824c-bb7e-5ef80c71e809','821cadab-7be7-374f-8ed2-6031f5e30777', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('6f37ddaf-f04c-5b4b-8e87-a656c6043352','821cadab-7be7-374f-8ed2-6031f5e30777', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('554a9091-d0c9-9640-bec1-2911d216f262','821cadab-7be7-374f-8ed2-6031f5e30777', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('35a6df40-5e60-e545-9f2b-7062a9a39e87','821cadab-7be7-374f-8ed2-6031f5e30777', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('59bad2d1-99c7-3d40-bb3b-bcdcb0851b4d','061b3348-20e2-c84d-a115-2c8337a39a04', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('0918abc0-e07f-b94c-95cf-ca191a1abf4e','061b3348-20e2-c84d-a115-2c8337a39a04', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('591f137d-9f4c-0446-957b-83a8f325e036','061b3348-20e2-c84d-a115-2c8337a39a04', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('0f57f131-2220-984d-8d78-78fc2704634f','061b3348-20e2-c84d-a115-2c8337a39a04', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('5f5d51b4-cfb6-8941-a3f2-08f189b2e2b4','3ff99872-c49e-fb43-bb16-779eee8e643c', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('09071687-08d0-9243-a315-25e625be4703','3ff99872-c49e-fb43-bb16-779eee8e643c', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('5d3b8faa-7916-6e46-a9af-e6e041934a99','3ff99872-c49e-fb43-bb16-779eee8e643c', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('25359278-9931-4840-a352-b0aacfc66c0c','3ff99872-c49e-fb43-bb16-779eee8e643c', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('dc4efce9-6f57-a24e-a488-d0bf2ba04b30','90b2d3e1-77c4-d141-a7fc-60693499dadc', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('ca75623b-7e2d-b442-99fa-31f37234c852','90b2d3e1-77c4-d141-a7fc-60693499dadc', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('1dcd36cb-0e27-a34d-88ec-e603b7e6b250','90b2d3e1-77c4-d141-a7fc-60693499dadc', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('d2a6b0e6-11b2-0041-9193-3d52f2a1dc48','90b2d3e1-77c4-d141-a7fc-60693499dadc', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('bd6e1bfa-7b60-684c-a4f0-fe054d93b67b','4f9edffa-48dd-bf49-9ff0-34c22266eff4', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('07461f11-e01e-9944-ad63-1f6764faf93d','4f9edffa-48dd-bf49-9ff0-34c22266eff4', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('ee38a57e-4194-9d4b-9c9e-1f771388fc9f','4f9edffa-48dd-bf49-9ff0-34c22266eff4', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('1031a21f-563b-b347-bbc0-9f3026b6bb1c','4f9edffa-48dd-bf49-9ff0-34c22266eff4', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('f72f97d7-276f-2f4a-9f41-2a3135f45d13','50a398ca-f609-9449-bc39-cb0bbc132394', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('243973a7-86c6-4245-8942-8d80262307ea','50a398ca-f609-9449-bc39-cb0bbc132394', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('6b57cf03-b1ec-304f-82a2-316ac009b744','50a398ca-f609-9449-bc39-cb0bbc132394', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('ab5774e0-572a-af4e-a063-1cf08cd8b695','50a398ca-f609-9449-bc39-cb0bbc132394', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('c1ac238c-fad9-1c46-9b06-4a32a10daf9b','8c2fbe41-6531-2147-a15b-2a00c4c213c2', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('68afedc1-e4a3-4d4e-86a4-b7acfd169f7b','8c2fbe41-6531-2147-a15b-2a00c4c213c2', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('060bafd3-7306-2b44-8896-be3d542bd602','8c2fbe41-6531-2147-a15b-2a00c4c213c2', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('9b7eff03-6905-c74e-a926-f6279136fb17','8c2fbe41-6531-2147-a15b-2a00c4c213c2', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('3dc9a2b9-3281-e64c-b8ab-0bbaf60260e8','de908092-b5bc-c84c-b29d-d5c678df4d28', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('7b7d5b26-7f13-bb4d-a255-6bdf971405a5','de908092-b5bc-c84c-b29d-d5c678df4d28', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('07abbaac-a693-de42-8244-e3994ef300fb','de908092-b5bc-c84c-b29d-d5c678df4d28', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('a9f680ec-3455-af4b-affd-7a0f68fce532','de908092-b5bc-c84c-b29d-d5c678df4d28', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('19b88b9b-7781-2d4e-99f4-fe732b0cafc3','e369df16-dff2-7d45-b0fc-a0d42fdb4146', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('04156e3d-f5ba-3a48-a9f1-285d1e666011','e369df16-dff2-7d45-b0fc-a0d42fdb4146', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('20238e0c-973b-b24f-a7c2-f6588282d90f','e369df16-dff2-7d45-b0fc-a0d42fdb4146', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('8b82599a-8ee8-1e41-b5e1-577751c5b5d5','e369df16-dff2-7d45-b0fc-a0d42fdb4146', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('ec7369bc-8c0b-564b-81fa-d639f13a18ed','093a8815-14b6-d842-be9c-ed92bc382714', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('9e3799bb-52f0-5447-8599-8c9978c1a691','093a8815-14b6-d842-be9c-ed92bc382714', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('1da6ce5a-4f9b-2342-82cd-d436a8fce12f','093a8815-14b6-d842-be9c-ed92bc382714', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('e90ac1fe-e0c0-3c42-87a3-61e97472e189','093a8815-14b6-d842-be9c-ed92bc382714', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('149d43f7-9558-c741-a114-e43620975cbb','840e7b6c-bb5c-a84d-b0af-b9a418e67411', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('0bc7d745-353e-af4b-880a-432e39a6f3d7','840e7b6c-bb5c-a84d-b0af-b9a418e67411', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('26dd7e26-f083-f94b-90c3-c61dca288820','840e7b6c-bb5c-a84d-b0af-b9a418e67411', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('8e170aa1-f83c-3447-957b-12c0f0883a2f','840e7b6c-bb5c-a84d-b0af-b9a418e67411', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW()),
('435eb8d6-eb76-f84d-ac14-371b84587c22','be93eec1-f36d-764a-a788-c0d76f495946', '70cbcf4e-b4a3-11e7-b71e-02d2a924e5ba', 'view', '2',  '0', '1', NOW(), '1', NOW()),
('e302a2c3-c8aa-444e-ac3a-366936bb3618','be93eec1-f36d-764a-a788-c0d76f495946', '66056700-c056-11e7-8bf9-c85b76d4d416', 'view', '1',  '0', '1', NOW(), '1', NOW()),
('ac8f415e-cfcf-b84c-9987-a9511c26c082','be93eec1-f36d-764a-a788-c0d76f495946', '70c801f2-b4a3-11e7-b71e-02d2a924e5ba', 'edit', '1',  '0', '1', NOW(), '1', NOW()),
('18817da9-1b40-cd48-95da-93859562ae45','be93eec1-f36d-764a-a788-c0d76f495946', '70ccb5bc-b4a3-11e7-b71e-02d2a924e5ba', 'view', '3',  '0', '1', NOW(), '1', NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('b92c43d8-94f7-2f4e-8360-9d01ddfef5a1','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3f20a889-7444-45a4-8738-0cddafb7080e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '821cadab-7be7-374f-8ed2-6031f5e30777', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1b5aa549-15fa-a94a-8f67-07a343edb8bd','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3f20a889-7444-45a4-8738-0cddafb7080e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '907d7a7b-e5f6-114e-a7af-a13b855a8853', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c2a841d0-b9af-274f-a723-d3c41ac643ee','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3f20a889-7444-45a4-8738-0cddafb7080e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '061b3348-20e2-c84d-a115-2c8337a39a04', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('8996d89a-d886-8e4c-9299-def47a3fa4a7','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3f20a889-7444-45a4-8738-0cddafb7080e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'b61abaa1-da92-8d4c-882d-75da206a8078', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0e5de1c4-3dd3-074d-aa11-f9eb1191fd99','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cde77ba2-e438-9e41-b323-412839950a15','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('82585542-3ddb-8c4c-941e-9833fc372d65','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9c5385c3-750d-ae4e-a808-b3d122d4eba8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a1ecd247-f2e1-3b42-b32e-ecbcd73758e2','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1655df6b-75dd-b749-8bc1-991b2fc7ec0f','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e71b6c07-2bfb-6441-8574-757aa64aea1d','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ebae46e1-d3e1-2844-a243-337341d2312a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('26030dff-64fd-1e44-bb20-2c648c7cb0f0','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '8c2fbe41-6531-2147-a15b-2a00c4c213c2', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3e26945c-b6f4-cc4b-b1c8-70e0e0da0a72','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '57be7011-0cc9-7845-8ff2-2ac898cc9a0b', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0bd07cbc-816a-7745-a5a4-67675d4912b2','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'de908092-b5bc-c84c-b29d-d5c678df4d28', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('1cac2334-7eef-264b-98f0-be8e6fc8310f','53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3355fd37-a8fa-1446-89fe-039f62d9345e','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('15bb0681-1ede-ca40-96e6-5304aa35f8c7','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6d403510-d49b-1e46-9a20-4cabca5db06a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '093a8815-14b6-d842-be9c-ed92bc382714', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('07187ed2-dd07-f240-9967-9ed61f628658','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'cdf8d19d-231e-124d-80f1-6694be0d8543', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7601d897-d083-1d4c-8b14-ba01bf7b1e95','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '04b4a611-4046-4a75-b4c3-09afc214940f', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '840e7b6c-bb5c-a84d-b0af-b9a418e67411', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6b3b7e7b-f447-1a42-9714-7bb9f3b3c0cf','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '04b4a611-4046-4a75-b4c3-09afc214940f', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '106dff8a-d2a8-f846-a3f5-cb858a4fe528', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('363545f8-c752-0943-affd-bfecf0dc137d','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '04b4a611-4046-4a75-b4c3-09afc214940f', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'be93eec1-f36d-764a-a788-c0d76f495946', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5dfbe513-f50a-8042-9ef1-ce56ea320be1','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '04b4a611-4046-4a75-b4c3-09afc214940f', 'c81215ea-8a94-4552-98a8-16e6907fd328', '600d4025-16fb-2b49-be9d-a6f337c6ee35', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a0a4d1da-3382-2146-b5b1-a378386c0048','53de9670-1da3-11e6-961c-5cc5d4b57135', '3f20a889-7444-45a4-8738-0cddafb7080e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '821cadab-7be7-374f-8ed2-6031f5e30777', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e39952f5-c318-8646-9ecc-8054d71103ef','53de9670-1da3-11e6-961c-5cc5d4b57135', '3f20a889-7444-45a4-8738-0cddafb7080e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '907d7a7b-e5f6-114e-a7af-a13b855a8853', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('bf29b157-1ae8-7148-a22f-e7c88ba4d8de','53de9670-1da3-11e6-961c-5cc5d4b57135', '3f20a889-7444-45a4-8738-0cddafb7080e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '061b3348-20e2-c84d-a115-2c8337a39a04', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5d4daab1-a6dc-2145-9f5d-6f8d1bf711f2','53de9670-1da3-11e6-961c-5cc5d4b57135', '3f20a889-7444-45a4-8738-0cddafb7080e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'b61abaa1-da92-8d4c-882d-75da206a8078', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('916d1ac3-66aa-384e-abc5-105008391b08','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('67b8633f-1a1c-6248-86d9-72f2f1ead494','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('024bd6d3-9a9d-b047-8921-ae92bd13f1fd','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('68b50907-7acd-6c44-b2d4-c470b7c04a55','53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('96da8084-0730-ac46-b0c4-ffdf3cbb51f4','53de9670-1da3-11e6-961c-5cc5d4b57135', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('992d025b-e14d-6542-92ab-b0ee45098917','53de9670-1da3-11e6-961c-5cc5d4b57135', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('63d5b8af-90c3-6b4b-a345-1d3e614ba89b','53de9670-1da3-11e6-961c-5cc5d4b57135', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7bc13a5e-ad6d-0346-a6cb-743ad83408b1','53de9670-1da3-11e6-961c-5cc5d4b57135', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ccdbdbff-b66a-2845-bc79-e2f4ad6b436b','53de9670-1da3-11e6-961c-5cc5d4b57135', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '8c2fbe41-6531-2147-a15b-2a00c4c213c2', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('739f12b6-f44c-de40-9437-63b3ec827049','53de9670-1da3-11e6-961c-5cc5d4b57135', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '57be7011-0cc9-7845-8ff2-2ac898cc9a0b', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b2a08e7c-ab5f-ab4b-beab-f20b9db48037','53de9670-1da3-11e6-961c-5cc5d4b57135', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'de908092-b5bc-c84c-b29d-d5c678df4d28', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('370324bb-2c69-bc4f-b138-9c78a237208a','53de9670-1da3-11e6-961c-5cc5d4b57135', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ac2c9f9a-77be-3446-8166-8bb9a8646da6','53de9670-1da3-11e6-961c-5cc5d4b57135', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('088d493c-4405-f546-b820-bb9e9bac6ddd','53de9670-1da3-11e6-961c-5cc5d4b57135', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e22940d4-0ff2-f54f-825f-98821d5cea33','53de9670-1da3-11e6-961c-5cc5d4b57135', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '093a8815-14b6-d842-be9c-ed92bc382714', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('036f2a83-d33a-3a4f-b687-ff14ea7261f2','53de9670-1da3-11e6-961c-5cc5d4b57135', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'cdf8d19d-231e-124d-80f1-6694be0d8543', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a74c0265-74c1-1c42-beda-54345e78e371','53de9670-1da3-11e6-961c-5cc5d4b57135', '04b4a611-4046-4a75-b4c3-09afc214940f', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '840e7b6c-bb5c-a84d-b0af-b9a418e67411', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('be439e35-399f-c54f-8bf9-8886a9f3b604','53de9670-1da3-11e6-961c-5cc5d4b57135', '04b4a611-4046-4a75-b4c3-09afc214940f', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '106dff8a-d2a8-f846-a3f5-cb858a4fe528', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('110ddb22-bfbb-414a-9035-0d69fb85b9ac','53de9670-1da3-11e6-961c-5cc5d4b57135', '04b4a611-4046-4a75-b4c3-09afc214940f', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'be93eec1-f36d-764a-a788-c0d76f495946', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6285e46f-e1be-4c49-8944-679c9fe2f7d5','53de9670-1da3-11e6-961c-5cc5d4b57135', '04b4a611-4046-4a75-b4c3-09afc214940f', 'c81215ea-8a94-4552-98a8-16e6907fd328', '600d4025-16fb-2b49-be9d-a6f337c6ee35', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('7785a131-ae8e-2749-83d3-0a009cdb8591','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3f20a889-7444-45a4-8738-0cddafb7080e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '821cadab-7be7-374f-8ed2-6031f5e30777', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('47b021c2-170b-a34b-86f5-0f6f01edbadd','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3f20a889-7444-45a4-8738-0cddafb7080e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '907d7a7b-e5f6-114e-a7af-a13b855a8853', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('36756811-6039-de43-aea4-8adc4909fd10','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3f20a889-7444-45a4-8738-0cddafb7080e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '061b3348-20e2-c84d-a115-2c8337a39a04', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('03e530e2-9b6d-6547-a69f-0b0e0f498b8e','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3f20a889-7444-45a4-8738-0cddafb7080e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'b61abaa1-da92-8d4c-882d-75da206a8078', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5286385a-d8da-9441-b33c-3fb730c2c626','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '3ff99872-c49e-fb43-bb16-779eee8e643c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ee4c1e0c-0840-7548-ad56-2a85cac50677','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '4e7c669f-1a5a-8c43-9595-93f8c2429256', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6ea34d49-5b5c-0c4b-9020-b5a06935b403','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '90b2d3e1-77c4-d141-a7fc-60693499dadc', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('45545ec6-299c-414b-82a8-08d39aec76d9','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'def823dd-2766-284a-9610-b480d82c171c', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c051d45c-7e8f-a24f-b4a6-c9ca95977d12','53de9671-1da3-11e6-93fb-5cc5d4b57136', '67225045-d324-4b6a-81e6-b44b64ebd06a', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '4f9edffa-48dd-bf49-9ff0-34c22266eff4', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0bb4e703-57af-7342-a8d4-2f240090fd22','53de9671-1da3-11e6-93fb-5cc5d4b57136', '67225045-d324-4b6a-81e6-b44b64ebd06a', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', 'acee9eb7-1296-4c4f-9334-802d33045062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f34a8c00-be1c-3c43-ab9b-f09a30c3dc19','53de9671-1da3-11e6-93fb-5cc5d4b57136', '67225045-d324-4b6a-81e6-b44b64ebd06a', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '50a398ca-f609-9449-bc39-cb0bbc132394', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('232d492c-ba0b-be42-b8cc-132c45f9e4ab','53de9671-1da3-11e6-93fb-5cc5d4b57136', '67225045-d324-4b6a-81e6-b44b64ebd06a', 'c81215ea-8a94-4552-98a8-16e6907fd328', '3db20274-a58e-7340-9de0-d451eb968781', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a9b5fa0b-865e-df48-8a2c-3003f7240106','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '8c2fbe41-6531-2147-a15b-2a00c4c213c2', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2497cc11-7ac7-8a43-adb2-0e25cd971068','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '57be7011-0cc9-7845-8ff2-2ac898cc9a0b', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a17b5fcc-26c5-e740-b59a-9d12d06d6756','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'de908092-b5bc-c84c-b29d-d5c678df4d28', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('c3d7e9f4-068e-1846-ad68-b3368e34f90c','53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'c0b1349f-d9eb-af4c-97d9-ec3b2aa6ac49', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ea2e4464-3dce-7842-bb28-50bf3ed1f963','53de9671-1da3-11e6-93fb-5cc5d4b57136', '009fb838-b997-4eba-b9ce-bf37794093bf', '3f0957c0-bee3-11e7-877d-c85b76d4d416', 'e369df16-dff2-7d45-b0fc-a0d42fdb4146', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0cd9e09-734e-1e45-babf-a60f0b1ab473','53de9671-1da3-11e6-93fb-5cc5d4b57136', '009fb838-b997-4eba-b9ce-bf37794093bf', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '1a1187c0-61b7-2d43-a2c9-1876c5027f5f', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('17953094-8745-eb4d-b587-84e3de382c3a','53de9671-1da3-11e6-93fb-5cc5d4b57136', '009fb838-b997-4eba-b9ce-bf37794093bf', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', '093a8815-14b6-d842-be9c-ed92bc382714', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('95a01ec5-a3a6-9444-84a7-138a8f1b869c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '009fb838-b997-4eba-b9ce-bf37794093bf', 'c81215ea-8a94-4552-98a8-16e6907fd328', 'cdf8d19d-231e-124d-80f1-6694be0d8543', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('7a3b3ca0-8868-2648-99ea-63f4bece12a7','53de9671-1da3-11e6-93fb-5cc5d4b57136', '04b4a611-4046-4a75-b4c3-09afc214940f', '3f0957c0-bee3-11e7-877d-c85b76d4d416', '840e7b6c-bb5c-a84d-b0af-b9a418e67411', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('04f65903-8ca5-704a-8614-3fb40af3b58f','53de9671-1da3-11e6-93fb-5cc5d4b57136', '04b4a611-4046-4a75-b4c3-09afc214940f', '89d5d284-f3b0-4ceb-868a-9173eb3ebaf4', '106dff8a-d2a8-f846-a3f5-cb858a4fe528', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0557c4c-d68b-5948-9f0b-37d077277f4c','53de9671-1da3-11e6-93fb-5cc5d4b57136', '04b4a611-4046-4a75-b4c3-09afc214940f', '76a603c8-a21f-4d97-b277-2a1636ad0dcd', 'be93eec1-f36d-764a-a788-c0d76f495946', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('adbb4756-e4fd-764d-bc7f-7664aa797722','53de9671-1da3-11e6-93fb-5cc5d4b57136', '04b4a611-4046-4a75-b4c3-09afc214940f', 'c81215ea-8a94-4552-98a8-16e6907fd328', '600d4025-16fb-2b49-be9d-a6f337c6ee35', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

-- speaker
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('145988a7-1ac5-cf4a-b0ce-4679b007e062','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_no_professional_speaker_s', '非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('4d4783ac-0b26-bf4f-939d-5185b27fca85','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_professional_speaker_s', '医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('48fa1e34-445d-494d-ba7f-747805a712eb','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_ineffective_professional_speaker_s', '失效医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('e789c88f-35da-b34b-a779-90c9f23468f5','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_ineffective_no_professional_speaker_s', '失效非医生讲者详情', 'custom', 'small',  '0', '1', NOW(), '1', NOW()),
('be684b7e-4fc4-024b-adbf-c915fb45bfbb','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_no_professional_speaker_l', '非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('1da84ec4-d523-6042-ad75-d1695864d844','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_professional_speaker_l', '医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('31e7cf04-d59c-e34d-9ca8-921438f3945e','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_ineffective_professional_speaker_l', '失效医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW()),
('1a135227-e4cd-a745-ac7f-0fe3d5bf2d84','05472308-90bb-43d1-a1c5-33b9f9c62ed3', 'cs_ineffective_no_professional_speaker_l', '失效非医生讲者详情', 'custom', 'large',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('236804d2-855d-334e-82c3-93deaa4d9019','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bb8f620d-6311-1f48-8f20-d34cdb9aae22','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b7e4dc5f-30e1-d946-bf66-8f60a83b687b','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e1df141f-a26b-8544-8cc9-248765c197d2','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0054f7f4-38c0-264a-88cd-28737599ab00','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e12b769c-7466-0246-a3fd-f63802642fdb','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b38a45cc-f805-1947-bde4-621c57c2669a','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5689fef5-40b3-9542-866c-1946815b80eb','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e288bf65-bafc-de4b-866e-be75fc765494','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0ab2b4c9-a5bc-cb4c-8314-e7bb10dd95ae','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03ada585-4742-744e-84b5-5ca3e0c5f804','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4d9bdd10-0b60-2e40-87d3-df45aa05498c','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d57abcba-13fa-9b4c-a688-979ee747408e','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01355272-6286-6446-9dc8-21ad3cf6f8ea','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('34e7f535-71f0-b246-82bb-adc8eb995737','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a36a832-f4f3-4144-9960-1531809ac349','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8cf47540-a7f9-2545-88fc-0ddf1985b915','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7ebd4c56-3475-d542-bf32-a249ca7944de','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f41d7214-9ee5-e240-9652-9ee6c7b108e4','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('31f4d194-b661-464b-83be-de568a4236e3','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7379b931-06c9-1240-a088-0f318d03c9ae','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('85be9e8e-7d4c-674a-9fe3-307eca69e568','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1c13516b-1ce3-0741-9c13-8c2ac6bba798','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f07e3cd6-7a73-3d4f-a003-0fe76221f7de','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb497617-8dba-d844-bcbd-9db33482dfd5','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('9360b57a-9477-d741-951f-1252059c4f79','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('aa5cdf42-bffe-e242-9673-6b1836e8d10f','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6865e555-c116-2644-93fb-577d4bc86b2a','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('dbf0b22f-cf6e-0846-aa02-18a53fc32ad4','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('33cb15b8-34d7-4e46-b4bd-beee8f3eb91e','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('94345eed-ccf0-7f41-9181-67a074a27032','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c34131c4-429e-0946-be97-3d5903816da3','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5056b113-b829-1f46-b68a-65d1767c0e7b','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bc8112b8-c8d4-7f40-bdb9-b08013879de1','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e321533-8030-b748-98f5-3cbcf33d6394','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b58ef04-b478-f748-a401-a671dec3c96e','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2c9c693f-09f8-114c-b265-81ffc8b95141','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('11bc93b8-a9d3-1641-aaef-0bfb34cce43b','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('47fb9ac8-9d58-364d-8001-5e08cd1db212','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e8bf10d0-e246-a349-9907-01673f21776c','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7876b1a1-2685-8a43-b134-8221be1965c4','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('eb7f43e2-5f63-f84d-a04a-f5f5d47646e6','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('372d9124-f882-554d-83a0-5fbf1ea6e0e8','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('61aa2ba9-4f6f-5d44-8f74-048fbd391d1e','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7562976b-36b0-3a48-9cf5-23e5447e3c7b','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c658b0d-3550-6642-bff5-8a1dbff78153','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01ddf5ef-2114-a44c-835b-c952b6c5ba21','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('31e1d11e-8702-2547-a07f-6e578c1243d2','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1e3164d9-f0cf-554a-8bbf-03c84417f418','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d7f78dbf-2d9a-7e49-8d82-7519c54a3caa','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8c1a7b0a-b569-1a49-95fc-c0fd5259f2ac','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('24592e92-b0bb-5949-a686-6df12dbc2c4a','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a71fdadb-ab5c-2f4e-ab65-44b6269f1637','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0c3e3418-3082-f54c-b73a-6d4df8aa4494','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('aa3379cb-9136-da41-85ce-8bd156ac9083','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b0610c98-05b0-3441-b2cc-1f0d1a0ed288','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('e2a35cd9-efeb-3744-b3e9-8707021da08e','48fa1e34-445d-494d-ba7f-747805a712eb', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1b25d747-3600-e84c-93f7-5c6b721f4d3e','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c7f572ff-6f8c-7b47-b9b1-ff5099e0703f','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0110bb5d-94e2-fd4d-b26f-cc2107a3aee7','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f27ebf94-93fe-2948-bc4e-92b2d8b23c96','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7151fa72-04ef-ba48-ad80-464305992b2e','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e2e7e7b-0652-a344-b163-a79e88115ee1','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8054b1ef-ca0e-1a4c-ae04-6c3988f472fe','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('546dbcc8-7388-244e-8a1f-1ca1bcde9cf2','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ee38f1b9-f06c-6c43-a711-0bf62ad19e67','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c2332ba2-6f5b-6140-961d-f80ac0afd6eb','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1381da93-ff5f-3143-b179-1f060c55a2a4','48fa1e34-445d-494d-ba7f-747805a712eb', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a791d64c-763c-154d-bf4a-fba688c8eaf8','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bfb7f1dd-6928-3244-a439-83fb1e8177cb','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fefca4d6-747a-ba46-9f20-f4712177f3ef','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3cc80df9-3399-db40-8a2d-622a0afeabbf','48fa1e34-445d-494d-ba7f-747805a712eb', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('02210400-da5f-5a4c-bf2c-d24307fa1b14','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d717bc8e-f8bf-bd4f-a5f5-0d7802c6c92c','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7c19d7bc-ae06-1e4a-9da3-efcda8bbb255','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4b58787d-21f7-634f-a375-152076bf1c35','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('01a2026e-46bb-9949-8159-47c388021d06','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9ffa003a-f30a-214d-9a32-e20605aabb36','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bab19e2f-cd6f-584a-939c-8b48ede82e7a','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2d8bd1c2-5110-9d48-9afa-993b6e32151d','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c8e24f49-c893-3a42-b125-069bd95e86bd','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fa576762-3a77-fd47-a00f-c0fc72b44f2b','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7900ff69-94ea-5445-add3-cb7fdd2c6f0b','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d08d4539-566d-3f44-900d-41b3f13bd9cc','48fa1e34-445d-494d-ba7f-747805a712eb', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('13e674cc-d615-ca46-93c1-628c60ece85f','e789c88f-35da-b34b-a779-90c9f23468f5', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b6b49c13-4560-4d4c-958c-57c8b60ec7bb','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2630907f-6f0e-0e4d-88c6-1706b7468468','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f559a729-9660-5241-8cb3-4f947e3b754a','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3a36cc20-1f04-dd47-a3f7-0564fc1a184c','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('279871a4-ceec-5f4f-adf2-1d7c03e85c26','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1a7020c7-dcc5-9541-954a-46323b92a066','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('19e86d19-52b1-0042-a63a-450cd4364060','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('da01373a-ef87-8744-ab5a-a94e42d77482','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5f49a02e-07f9-0d44-a8c9-7e6f70c444cd','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e6de966d-11aa-c14b-b9ff-c017e3d5128b','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9b5f8fc8-ad50-c349-adae-1f0b5248aba1','e789c88f-35da-b34b-a779-90c9f23468f5', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3818077b-58fb-4548-ad10-9c4567b17f8a','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80ca19e8-198a-1a4c-8afa-14512c99aebd','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('df4e97d4-54fb-c947-843f-7b67e5d4ec4b','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9eb763c1-60cd-294a-bced-ba94cd6dc366','e789c88f-35da-b34b-a779-90c9f23468f5', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6e757f52-5587-174b-8413-815b3a4be587','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5bf94ebd-5a68-c246-aef4-a8db169292ba','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8a2fe11b-4334-e447-8a54-ff9b68629d5b','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a1c92108-c0fc-6c40-8733-53c26c18f5cd','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('08460562-6fcf-4443-86eb-c31e7ce0f6fc','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('03c1219c-a3e2-c44c-a995-f2bfdf8883a6','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('29fb6432-aed5-7f4d-841b-ff4b9926936e','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('71d9b8de-4e4e-124d-aff4-c071e60f603e','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0aa32efb-e0aa-f644-b96c-42797105192d','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fe6df7d9-ca00-f244-ab43-f35d6725f84d','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('3de50f6d-12e1-3a4a-8ffd-73a035cb0958','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('fd972223-1dfd-a747-ad9b-31c76d1084bf','e789c88f-35da-b34b-a779-90c9f23468f5', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('2df9a306-ff55-a344-9604-6b59b4ea25d1','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a6e71e20-2e10-5247-9138-eea9ad1a7342','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2fc1849c-b63d-9748-b262-a35766437a52','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e39edcdd-ae5e-9e4b-9cd2-227268a7dda7','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('966654f7-f199-7148-865f-9b1266d139c2','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e71709b-afb6-954f-b72b-b46d274c3c2f','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6d1ebb4c-8157-1b49-ade7-e449d0cf12b5','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('938d3a92-853c-1140-8c74-82ce40c56ed2','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('52fe66b5-432d-3748-ad7b-801a3846f9a3','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fb9b50a7-42ba-1341-a48a-46e705715b81','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('398e5620-b5fb-524e-97c8-3681ce6ea324','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3556e939-f02c-a142-a2b1-b93b5b2591a7','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1d59ba17-c804-7849-87c7-6eab7526f407','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3bae54da-fbf7-584f-a44e-33f5cf7cc1df','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bf928a4a-2430-0946-995d-e4023aab1430','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('1bf5c449-38f2-ed4c-a430-e05a8dbafef3','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b835826a-e019-ac44-a72c-9197b8b79ae6','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('f69de7c8-01e1-fb48-aba2-90b58b3dd4b3','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b5fd6e8e-f09f-8d49-9237-bce2154358f1','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e7acb219-b40d-3f44-89ad-18d83edf4967','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c1ac0309-c57c-da44-ae27-95d35ccea7a8','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b7b2ba8f-b89a-4a46-90f8-ee2dca0d601e','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('43a18295-839f-5843-8d8a-58d3e9ba52cb','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7fe91eca-800f-864b-ad2f-65e8806adda0','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('757f6787-1dd2-7743-9fa8-b172e01e3dc8','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('b72f7c92-180a-114f-87b5-aa9380726132','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('efdcb52f-0107-cd4d-8971-ad814b800c46','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('d90db1e6-eea0-d443-885e-8b99da2a9fb6','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('7ebd549b-a005-3048-8f3f-4f724b2ba304','1da84ec4-d523-6042-ad75-d1695864d844', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('45129b2b-320a-9946-8a48-0fb508d470ec','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ccfc41a-a69c-5643-88ad-201e632e4276','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('79cd28fd-80eb-2146-89e4-4e9cf0facb4b','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('182d09d0-234a-6748-8f8a-312d55ed7472','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2b15d67a-0787-e54e-a7b6-a7bf2dfba164','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('51620e7d-37c1-a448-b88f-056d1224463b','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ccf5e3d7-0b00-4840-ac5e-4325ac6d4980','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('67a16272-f584-6a4f-ac15-1e688720b7ce','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('90c417de-9459-8546-a817-aefcec7f08a4','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8808d042-5237-804a-b3a0-642d5291d174','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('995eb825-3610-d14d-ae5d-4dc8c6efc659','1da84ec4-d523-6042-ad75-d1695864d844', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7d6dc63f-bb11-f544-bf68-5a53a2c666a4','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('091ab7ee-1546-394f-9574-14f4e4999fc1','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('198b83ce-7d4a-2a47-bcaa-1fd6fd018234','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('87d0711d-3d0a-dc42-86c5-98269dc603f8','1da84ec4-d523-6042-ad75-d1695864d844', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77eb2bcb-e5a1-a840-b5b4-8ee976c1fb71','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('bba194df-7db2-5d48-a45b-b2d431e86178','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a312c36-fdc3-824b-9317-9e94ed053b9a','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('63f8e899-3a01-a940-b598-5e42a945f218','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e02d7100-e3bd-be44-8c38-dc74be087b3d','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('59c09e90-24b6-9244-bcc6-0394220ac3fc','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5ac3b28e-0a1a-b146-87cb-597366d96d3b','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('685e73ac-ef3e-e24d-b700-321b4913abbb','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3077f66-4cbe-5644-91e9-b4e223f40fc7','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f83df2b3-7e43-fe49-aefe-6f240d9ed0ba','1da84ec4-d523-6042-ad75-d1695864d844', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('7b72e626-def8-1c4d-8757-f9c07fb37264','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('be177813-8007-654a-89e2-88c097c0853e','1da84ec4-d523-6042-ad75-d1695864d844', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('c2337834-25d8-694a-b06a-a818b313efce','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('77db3e15-5f6a-9540-847e-070c5bc20728','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('306c7762-5097-8748-90d1-4de92f2fc801','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('9472540d-1804-9443-bbcd-e6187ce844a8','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('249ff7be-60cb-8847-8804-b0a72bcde2b5','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dce7e62a-bbe1-5943-8d7b-0f06ba5c71ac','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b14cc406-dbb7-3b42-af5d-50567ce9c949','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4903c94f-d32b-a448-b28d-68fcb68b6138','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('8d33a64f-db5a-0143-8d27-c0f18ff91d66','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('b8d57e14-7c00-7441-ac9f-4452724498ae','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('129214e7-d9de-1e4b-9184-a19f9f40bcbc','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3597e737-e902-4541-8883-6ed300c4fa3e','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('81b236d3-f938-8a4a-89b6-e40e617f3ce6','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2780ba53-d742-6e48-a229-b8cb27594eeb','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('a249a42a-1b92-be40-9c8c-16d4a6126ba8','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('80484849-8ddc-8c49-84c3-0580b711611f','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('38117323-ae98-3342-996d-514c06eee52e','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('5c3afe33-7e4c-ed4a-8d8a-92e7616feffa','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('051891e8-c2f9-314b-a735-bf4b18fe7f07','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('fe3cae4f-fe4e-0141-a56c-ff2dc77473a5','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('3551334d-e380-924c-ba8e-7d8d317f6725','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0574c526-ef47-8e40-ad45-4f22a8646503','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('7236d340-4d30-9547-910c-eeafd224f2e1','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ba56c3d1-ae92-3643-ae10-d9b96e1e1583','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e3d2d9d5-7cc6-1d47-89c9-f0c594245ef8','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('875cb6e4-6154-8f4f-8dcd-9987f2424bcb','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('338f1cc3-3272-fa43-85c8-9302fd3855c8','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('f07c2c86-0297-5043-a1d1-f63ebcfbdcab','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES 
('52dc3dc9-6907-be42-a6a1-84be934cec37','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'section', NULL, '基础信息', '0', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('de792c6a-5294-7342-aa48-d24191a3d844','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '88e04e58-9992-4d66-a5c7-ebcf0c6e7847', '讲者类型', '1', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dc1a0530-d65a-354e-abb1-b867ca568758','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '3845a476-36a1-4b09-abab-a6b274892dca', '讲者编码', '2', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6f33769b-eb7b-de43-b3bf-421cb2352425','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '49548750-798d-4fa7-8db9-50ce12a8efca', '讲者状态', '3', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d6b9ac27-6331-8647-b3cb-ca769d967980','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '5eebc0e0-d81b-4aae-96f0-67efadda4d78', '讲者姓名', '4', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('28447261-eddc-3a4c-9fed-66cc2b50824f','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'db307501-7428-44ec-88f6-a9cf9d8828e3', '讲者级别', '5', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e160465-ab4c-be4e-a086-e1a55c41a26f','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '9579dcc7-70ac-4af8-b030-4422587ada73', '讲者性别', '6', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('ff5cd58a-5716-6547-86bd-4c4ca7a7714f','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'e2bff32c-94af-4b5b-97de-0807cbc003f7', '机构', '7', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('4a1f4568-dfd7-6c43-93a0-d20246cc5d23','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'f3d9c0f8-3bb9-41fa-bdcd-7dc51ea9b80c', '联系电话', '8', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('0744b07e-2d61-6644-aca7-24a782e18e1e','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '邮箱', '9', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('09b43abd-ccad-9541-8580-7505f4bad027','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '4875dd09-2df5-4095-87c8-b6f3c7f1dfc9', '关联产品', '10', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6c05036f-5d36-ee41-9058-942af425342b','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'section', NULL, '银行信息', '11', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('d933b4c7-2be2-9541-8573-6d6184b704d7','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '12', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6270901e-c792-6349-8e28-03c49b094775','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '13', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('21392d42-cf78-554a-8f39-563159ab09eb','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '14', '6', '1', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('05b12b6a-4434-bb46-ad33-eedb8c3c37cc','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'section', NULL, '其他信息', '15', '6', '0', '1', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('dd09fa23-6c7b-ef4c-9824-739c4a6a5a97','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '16', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('aca77e02-4e59-da47-b872-27c04ef50a23','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '17', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('2e2129c0-24e5-6342-8c28-85f9a6991eba','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '18', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('c0d70f13-e042-1d4a-9cce-272510585121','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '19', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('15c8b857-005b-4841-8940-3d4cd7396305','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '20', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('39cdd28a-69d7-214b-86bd-25315d6ecba0','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '21', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('e27f079f-6997-434c-b0a3-58fb8cb41321','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '22', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('196fe581-7443-7741-852a-626b1d2e323e','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '23', '6', '0', '0', 'both', '0',  '1', NOW(), '1', NOW(), '0'),
('6711c4f3-0e38-9448-9795-4574a97183d7','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '24', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('0c9708b4-9469-354d-81e7-0ace3dc386f1','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '25', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('c6bf45e0-39f9-ab42-adac-c33f45b1cb3b','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '26', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0'),
('6d33ee25-8761-a648-8083-7d1aa2bd5201','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'field', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '27', '6', '0', '0', 'view', '0',  '1', NOW(), '1', NOW(), '0');

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('2cc40489-2486-fa48-8e02-4fe5237373d9','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '145988a7-1ac5-cf4a-b0ce-4679b007e062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f375e794-8f70-d94b-99ad-c0bf745844ac','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('6ffb53e2-a2e3-f548-8849-44bb5be3f67a','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('140dbd5d-6f8c-e042-8bb3-aa5bd92e56f4','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', 'e789c88f-35da-b34b-a779-90c9f23468f5', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('39d53575-00d6-0141-b216-0013dc80589c','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a2d9a881-1546-fe41-8a20-1fd58a1071be','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '1da84ec4-d523-6042-ad75-d1695864d844', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5fa22bfd-c78f-5e47-ae5b-ea4a91540df4','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '31e7cf04-d59c-e34d-9ca8-921438f3945e', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('9846e73e-8f20-f74c-8eef-0f40439ad7a5','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('4a394d87-f47c-7849-a30b-9560f873d345','53de9670-1da3-11e6-961c-5cc5d4b57135', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '145988a7-1ac5-cf4a-b0ce-4679b007e062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f1c3da2a-acd7-c84f-a331-38190e50488f','53de9670-1da3-11e6-961c-5cc5d4b57135', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('84059f2a-229b-054e-ba91-1dc8b8db3209','53de9670-1da3-11e6-961c-5cc5d4b57135', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4d8e468e-cbfd-e347-891c-61f2c6a79cd0','53de9670-1da3-11e6-961c-5cc5d4b57135', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', 'e789c88f-35da-b34b-a779-90c9f23468f5', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f7a30472-18d6-0440-a943-e0ad285b3713','53de9670-1da3-11e6-961c-5cc5d4b57135', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('4d4bd572-dea9-e44e-b198-2a586c36d380','53de9670-1da3-11e6-961c-5cc5d4b57135', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '1da84ec4-d523-6042-ad75-d1695864d844', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('99afcbc5-65af-2a4e-a899-b7f56da7cb6c','53de9670-1da3-11e6-961c-5cc5d4b57135', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '31e7cf04-d59c-e34d-9ca8-921438f3945e', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e4f508fc-92ba-a146-8dae-1de7753a7e77','53de9670-1da3-11e6-961c-5cc5d4b57135', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('00cd63dd-0f6b-4f42-b73b-2092a3370a6e','53de9671-1da3-11e6-93fb-5cc5d4b57136', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '145988a7-1ac5-cf4a-b0ce-4679b007e062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ade94870-d938-8d42-9ac0-8ec6116b11b1','53de9671-1da3-11e6-93fb-5cc5d4b57136', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('32985606-e1f3-8143-8912-dbbdf301ad12','53de9671-1da3-11e6-93fb-5cc5d4b57136', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('802143da-b91e-ae4b-ba6d-a7b7c1a599db','53de9671-1da3-11e6-93fb-5cc5d4b57136', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', 'e789c88f-35da-b34b-a779-90c9f23468f5', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a6dc37a5-289f-1945-bfd4-e1f37d366e0a','53de9671-1da3-11e6-93fb-5cc5d4b57136', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('324f72fc-fe3b-c342-b3c6-15059a013403','53de9671-1da3-11e6-93fb-5cc5d4b57136', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '1da84ec4-d523-6042-ad75-d1695864d844', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('77bc3640-8094-5444-b715-11e11a971eaf','53de9671-1da3-11e6-93fb-5cc5d4b57136', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '31e7cf04-d59c-e34d-9ca8-921438f3945e', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d620fc85-656d-d847-9635-ee67e29ff81d','53de9671-1da3-11e6-93fb-5cc5d4b57136', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('c3b7b5ae-c11a-6e43-bf20-bfdb7bf2841f','53de9674-1da3-11e6-ac97-5cc5d4b57138', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '145988a7-1ac5-cf4a-b0ce-4679b007e062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0a06027-b8b4-e644-b561-4deac7890bd1','53de9674-1da3-11e6-ac97-5cc5d4b57138', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('faa84459-c9e4-7840-b4d4-a8286e4f6c3d','53de9674-1da3-11e6-ac97-5cc5d4b57138', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('95323838-e9c0-9745-837c-593a65017b5e','53de9674-1da3-11e6-ac97-5cc5d4b57138', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', 'e789c88f-35da-b34b-a779-90c9f23468f5', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e4ef1ccb-74a7-ea4c-97ca-06d88f435b00','53de9674-1da3-11e6-ac97-5cc5d4b57138', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2e0de380-2c16-b848-81a0-b6a7b2834ae2','53de9674-1da3-11e6-ac97-5cc5d4b57138', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '1da84ec4-d523-6042-ad75-d1695864d844', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('22771144-44e0-1c4b-a2e5-c76ea01eb8e9','53de9674-1da3-11e6-ac97-5cc5d4b57138', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '31e7cf04-d59c-e34d-9ca8-921438f3945e', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b135f0a0-c66b-8249-a81f-432ca976d173','53de9674-1da3-11e6-ac97-5cc5d4b57138', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('6ded8627-c931-2a4c-84d0-c27762f9299a','53de9674-1da3-11e6-ac97-5cc5d4b57137', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '145988a7-1ac5-cf4a-b0ce-4679b007e062', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('66c47ab0-1719-5e41-9772-29bc657fc2f4','53de9674-1da3-11e6-ac97-5cc5d4b57137', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '4d4783ac-0b26-bf4f-939d-5185b27fca85', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2e16219a-c7d1-a940-94f4-ab4356268906','53de9674-1da3-11e6-ac97-5cc5d4b57137', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '48fa1e34-445d-494d-ba7f-747805a712eb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e7651e53-3a86-9649-be6b-36370b6dd94e','53de9674-1da3-11e6-ac97-5cc5d4b57137', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', 'e789c88f-35da-b34b-a779-90c9f23468f5', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('26ace0ea-7890-3841-a69f-03d46eb1cd1e','53de9674-1da3-11e6-ac97-5cc5d4b57137', '4478021f-b114-4446-89e9-44b38d32f4bf', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('69811c99-82b7-b646-8362-f9312d9e1e6b','53de9674-1da3-11e6-ac97-5cc5d4b57137', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', 'fbd51091-c9b3-409e-8be8-39a79ea5d261', '1da84ec4-d523-6042-ad75-d1695864d844', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('51b5205e-63f8-9e48-9653-f7b751046af8','53de9674-1da3-11e6-ac97-5cc5d4b57137', '0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '31e7cf04-d59c-e34d-9ca8-921438f3945e', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b094e8c9-4e7c-9b40-b778-e8e74a878bd6','53de9674-1da3-11e6-ac97-5cc5d4b57137', '4478021f-b114-4446-89e9-44b38d32f4bf', '6eb9f912-1187-43bc-9b52-573a9fa615e4', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', NULL,  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('31fd6caa-a9af-1b4f-a2a5-fce274321f6b','145988a7-1ac5-cf4a-b0ce-4679b007e062', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('9df19dd7-ddeb-a941-bf2e-903e8bdb690c','4d4783ac-0b26-bf4f-939d-5185b27fca85', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('8cfc2afe-6bda-c745-a1e8-e17780e14f2b','48fa1e34-445d-494d-ba7f-747805a712eb', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('51d92e4b-7970-3040-870b-ad1355ce03dc','e789c88f-35da-b34b-a779-90c9f23468f5', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('a212f64a-bb55-114f-b443-21271ca7a3e2','be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d23839c5-9fab-404f-a64b-31825fbfa1aa','1da84ec4-d523-6042-ad75-d1695864d844', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('31aeaac0-d06c-6b4d-bc19-285addccb93c','31e7cf04-d59c-e34d-9ca8-921438f3945e', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `object_tab_id`, `order`, `configurations`, `is_readonly`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('63185a15-b586-5d4c-acba-260951293b07','1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'a67d9bef-91fa-4345-852d-0826205a7131', '1', NULL, '0',  '0', '1', NOW(), '1', NOW());

-- 经理与大区经理

-- 经理授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('656f68d7-df7e-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '930c4396-2c6e-44f0-b384-4d0f1b7e1c78', '8', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('86a8572c-df7e-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '1', '1', '0', '0', '1', '2019-09-20 11:43:02', '1', '2019-09-20 11:43:02', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('91abe943-df7e-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '184f84eb-8532-498c-8d16-b133e2ec08e6', '1', '1', '1', '0', '0', '1', '2019-09-20 06:44:29', '1', '2019-09-20 06:44:29', '0', '0', '0', '0');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('44fea28a-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '3f20a889-7444-45a4-8738-0cddafb7080e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('597031c7-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('61aadce7-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '67225045-d324-4b6a-81e6-b44b64ebd06a', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('696ad7ec-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('718ebbf8-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '009fb838-b997-4eba-b9ce-bf37794093bf', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('7a5f6f76-df7f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '04b4a611-4046-4a75-b4c3-09afc214940f', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('352de953-df81-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', '6c2ad89f-deb0-11e9-b9aa-0298a739dec0', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');


-- 大区经理授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3d0d0c20-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '930c4396-2c6e-44f0-b384-4d0f1b7e1c78', '8', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('5033a03d-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '1', '1', '0', '0', '1', '2019-09-20 11:43:02', '1', '2019-09-20 11:43:02', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('5aec9465-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '184f84eb-8532-498c-8d16-b133e2ec08e6', '1', '1', '1', '0', '0', '1', '2019-09-20 06:44:29', '1', '2019-09-20 06:44:29', '0', '0', '0', '0');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('743be195-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '3f20a889-7444-45a4-8738-0cddafb7080e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('8430e0c6-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'bdc0ca16-b9a0-48c4-80bb-c396df090c2e', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('8bfeea30-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '67225045-d324-4b6a-81e6-b44b64ebd06a', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('94ee89f1-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cb04a74b-f2ef-4788-8ee5-1fa9d4262df4', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('9ea8f83d-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '009fb838-b997-4eba-b9ce-bf37794093bf', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('a74aa28f-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '04b4a611-4046-4a75-b4c3-09afc214940f', '0', '0', '1', '2019-09-20 07:59:30', '1', '2019-09-20 07:59:30');

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('b133254a-df80-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '6c2ad89f-deb0-11e9-b9aa-0298a739dec0', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');

-- sfe 讲者管理
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('aaa22bb6-df82-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57138', '5c4a7351-b55a-48ff-973f-03699256227b', '4', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fd4e7b18-df82-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '5c4a7351-b55a-48ff-973f-03699256227b', '4', '0', '1', '2019-09-20 11:17:36', '1', '2019-09-20 11:17:36');

INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `sort_field`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('627deed5-df83-11e9-b9aa-0298a739dec0', '049d31d1-8c2f-4c7f-a2af-e8cc3461d9ce', 'cs_speaker_page_list', 'rls', 'custom', '讲者管理', 'large', 'd0c9ce9b-946a-47d0-abed-5ae536a1d651', '1', '0', '1', '2019-09-20 10:33:29', '1', '2019-09-20 10:33:29');

insert page_list_fields select uuid(),'627deed5-df83-11e9-b9aa-0298a739dec0',object_field_id,label,`order`,width,allow_filter,allow_sort,is_default,configurations,deleted,1,now(),1,now(),null,null,null,null,null,
null,null,null from page_list_fields where page_list_id='840fe531-3aca-4b94-ae09-d10e40f10eb4';

INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('bd413382-df83-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57138', '627deed5-df83-11e9-b9aa-0298a739dec0', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');
INSERT INTO `page_list_assignments` (`id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`) VALUES ('fa5cc65c-df83-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '627deed5-df83-11e9-b9aa-0298a739dec0', '0', '1', '2019-09-20 06:06:56', '1', '2019-09-20 06:06:56', '1');

INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('be3bd530-e25f-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'a3e0aa28-254d-4dd4-96c9-1a528c9492c2', '讲者类型', '0', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f1cf31e0-e25f-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '815170a4-bb35-44fb-a227-989028c424dc', '讲者编码', '1', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
UPDATE `page_list_fields` SET `label`='讲者姓名', `order`='3' WHERE `id`='a73c1c6a-df84-11e9-b9aa-0298a739dec0';
UPDATE `page_list_fields` SET `label`='讲者状态' WHERE `id`='a73b9a35-df84-11e9-b9aa-0298a739dec0';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('766affb3-e260-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '09e584f2-84da-4812-9302-bccd1d31e8e2', '讲者级别', '4', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ad38f480-e260-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '434d35fc-72ce-46b5-bd4a-7b7497f9107b', '讲者性别', '5', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
UPDATE `page_list_fields` SET `order`='6' WHERE `id`='a73c1f1e-df84-11e9-b9aa-0298a739dec0';
UPDATE `page_list_fields` SET `order`='7' WHERE `id`='a73c1dcc-df84-11e9-b9aa-0298a739dec0';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f80eff30-e260-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '5bf66592-0eba-457e-b725-82ecdf66f1ea', '联系电话', '8', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('5224a176-e261-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '2eb8f51d-fbdc-48f7-9df7-419bb667b64f', '邮箱', '9', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('83686562-e261-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '93610bd8-fba4-4bb2-a8a5-3eec11b3fe27', '关联产品', '10', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f4b58dba-e263-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'dee6fc5b-4cda-4afc-acb2-00d5b8629319', '证件号', '11', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('fb51c8c4-e263-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '16b84d83-e765-4975-9a19-f0d1fff64384', '开户人姓名', '12', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('012a3e03-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'dd85b6d1-18bd-44c0-900f-f1d2708682c3', '银行卡号', '13', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('077f5c0c-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'e06f8f4a-d5df-476e-a3dc-7f4781c9c6d4', '是否政府官员', '14', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('0e3a6e32-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '827a33e7-4bb7-4974-b3a8-c2112327cca5', '最高学历', '15', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('14648139-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'a5c2d2b9-1aea-4f2a-a243-c491c80205c6', '行政职务', '16', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1aa09988-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'b1df2bc2-59fb-461d-9ac6-23165e5e9ab9', '职称', '17', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2019d91e-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '7e2750a2-1db4-49bb-912e-d6e88f208530', '职业证书编号', '18', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('25f24d4e-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '000a8461-9e86-4624-8ae1-2b1477710d79', '工作年限', '19', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('2beb68c8-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'b4da5166-4296-4de9-9e2b-c4767b816a19', '学会/协会职务', '20', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3113c7a5-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'a2cf6fb1-13bc-4c87-a2f5-302adaeac9e6', '学术成果', '21', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('36984f47-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'a2e38e0b-f382-46d8-adf3-5a252bc6f573', '创建人', '22', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3be63463-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', 'ceb106a1-f960-4f1a-8b35-3aa44f15ea82', '创建时间', '23', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4108d0f6-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '62dddb52-ea53-48fd-9980-797303117930', '修改人', '24', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('45ffb53f-e264-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '83cba607-6959-4bb7-9928-6629f831821a', '最后修改时间', '25', '200', '1', '1', '1', '0', '1', '2019-09-25 11:07:24', '1', '2019-09-25 11:07:24');
-- 多余字段删除
UPDATE `page_list_fields` SET `deleted`='1' WHERE label in ('关联产品','行政职务','职称','失效日期','生效日期') and `order` in ('10','6','5','8','7') and page_list_id='627deed5-df83-11e9-b9aa-0298a739dec0';

update page_layout_fields set colspan=12 where label in ('基础信息','其他信息','银行信息') and page_layout_id in 
(select page_layout_id from page_layout_assignments where object_record_type_id in ('0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb','4478021f-b114-4446-89e9-44b38d32f4bf') and role_id in ('53de9674-1da3-11e6-ac97-5cc5d4b57137','53de9674-1da3-11e6-ac97-5cc5d4b57137'));

update page_layout_fields set deleted=1 where label = '关联产品' and page_layout_id in 
(select page_layout_id from page_layout_assignments where object_record_type_id in ('0865ff92-c0a7-4d76-9f15-9dfdfd3fcafb','4478021f-b114-4446-89e9-44b38d32f4bf') and role_id in ('53de9674-1da3-11e6-ac97-5cc5d4b57137','53de9674-1da3-11e6-ac97-5cc5d4b57137'));


-- 讲者dcr 差异字段更改为高级字段
update page_layout_fields set object_field_id='f6a786e1-bfa6-11e7-962c-c85b76d4d416' where object_field_id='1d9c9905-87f6-4c76-a344-d350c4a3378d';

-- 增加讲者级别
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('57da9565-e27f-11e9-b9aa-0298a739dec0', '92e9913e-1f6e-4da3-ad7a-664ecb1ec846', 'country', '县级', '4', '0', '1', '2019-09-29 07:50:42', '1', '2019-09-29 07:50:42', 'custom');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES ('96d74ca3-e27f-11e9-b9aa-0298a739dec0', '92e9913e-1f6e-4da3-ad7a-664ecb1ec846', 'VIP', 'VIP级', '5', '0', '1', '2019-09-29 07:50:42', '1', '2019-09-29 07:50:42', 'custom');

-- a1f5ef04-be34-4f77-86dd-3c5f2dabfc82  医院机构
-- e2bff32c-94af-4b5b-97de-0807cbc003f7

-- 讲者dcr recordtype 新增 3f20a889-7444-45a4-8738-0cddafb7080e  医生转讲者 bdc0ca16-b9a0-48c4-80bb-c396df090c2e
-- 修改医生讲者 67225045-d324-4b6a-81e6-b44b64ebd06a  修改非医生讲者  cb04a74b-f2ef-4788-8ee5-1fa9d4262df4
-- 失效医生讲者修改 009fb838-b997-4eba-b9ce-bf37794093bf  失效非医生讲者修改 04b4a611-4046-4a75-b4c3-09afc214940f

-- 更替医生讲者的机构字段
update page_layout_fields set object_field_id='a1f5ef04-be34-4f77-86dd-3c5f2dabfc82' where object_field_id='e2bff32c-94af-4b5b-97de-0807cbc003f7' and page_layout_id in
(select page_layout_id from page_layout_assignments where object_record_type_id in ('bdc0ca16-b9a0-48c4-80bb-c396df090c2e','67225045-d324-4b6a-81e6-b44b64ebd06a',
'009fb838-b997-4eba-b9ce-bf37794093bf'));

update page_layout_fields set deleted=1 where label in ('差异','差异字段') and page_layout_id in
(select page_layout_id from page_layout_assignments where object_record_type_id in ('3f20a889-7444-45a4-8738-0cddafb7080e','bdc0ca16-b9a0-48c4-80bb-c396df090c2e'));

-- 增加讲者失效、生效按钮
-- f4e048fe-920c-45f1-85ea-61280b684beb  生效设置
-- fb7cf782-edbc-4777-ad5c-086ee6d87779  失效设置

-- 非医生讲者详情 be684b7e-4fc4-024b-adbf-c915fb45bfbb
-- 医生讲者详情 1da84ec4-d523-6042-ad75-d1695864d844
-- 失效医生讲者详情 31e7cf04-d59c-e34d-9ca8-921438f3945e
-- 失效非医生讲者详情 1a135227-e4cd-a745-ac7f-0fe3d5bf2d84

INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('4e8e67b0-e28b-11e9-b9aa-0298a739dec0', 'be684b7e-4fc4-024b-adbf-c915fb45bfbb', 'fb7cf782-edbc-4777-ad5c-086ee6d87779', 'view', '1', '0', '1', '2019-09-29 10:02:40', '1', '2019-09-29 10:02:40', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('6bb59d37-e28b-11e9-b9aa-0298a739dec0', '1da84ec4-d523-6042-ad75-d1695864d844', 'fb7cf782-edbc-4777-ad5c-086ee6d87779', 'view', '1', '0', '1', '2019-09-29 10:02:40', '1', '2019-09-29 10:02:40', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('84e049ca-e28b-11e9-b9aa-0298a739dec0', '31e7cf04-d59c-e34d-9ca8-921438f3945e', 'f4e048fe-920c-45f1-85ea-61280b684beb', 'view', '1', '0', '1', '2019-09-29 10:02:40', '1', '2019-09-29 10:02:40', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('9cbc5e32-e28b-11e9-b9aa-0298a739dec0', '1a135227-e4cd-a745-ac7f-0fe3d5bf2d84', 'f4e048fe-920c-45f1-85ea-61280b684beb', 'view', '1', '0', '1', '2019-09-29 10:02:40', '1', '2019-09-29 10:02:40', '0', '0');

-- sfe 53de9674-1da3-11e6-ac97-5cc5d4b57138  专员  53de9674-1da3-11e6-ac97-5cc5d4b57137  经理

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('a97a7660-e28d-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57138', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '1', '1', '0', '0', '1', '2019-09-29 11:43:02', '1', '2019-09-29 11:43:02', '1', '1', '1', '1');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES ('ed28cc43-e28d-11e9-b9aa-0298a739dec0', '53de9674-1da3-11e6-ac97-5cc5d4b57137', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '1', '1', '1', '0', '0', '1', '2019-09-29 11:43:02', '1', '2019-09-29 11:43:02', '1', '1', '1', '1');

-- 460ab38e-5f5f-452a-acff-a8734ef522b0 导出action
-- 627deed5-df83-11e9-b9aa-0298a739dec0 电脑端list增加导出按钮
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('ea83acaa-e28e-11e9-b9aa-0298a739dec0', '627deed5-df83-11e9-b9aa-0298a739dec0', '460ab38e-5f5f-452a-acff-a8734ef522b0', '1', '0', '1', '2019-09-29 00:00:00.000000', '1', '2019-09-29 00:00:00.000000', '0', '0', '0');

-- update ineffective speaker edit button name
UPDATE `custom_labels` SET `label_value`='申请修改' WHERE `id`='146';


-- 讲者list 与 layout 讲者编码由external_id 切换为 veeva_code
INSERT INTO `object_database_columns` (`id`, `object_id`, `name`, `type`, `used`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6e28080a-0548-11ea-b9aa-0298a739dec0', '184f84eb-8532-498c-8d16-b133e2ec08e6', 'veeva_code', 'text', '1', '0', '1', '2019-11-12 07:59:32', '1', '2019-11-12 07:59:32');
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('98fd72dd-0548-11ea-b9aa-0298a739dec0', '184f84eb-8532-498c-8d16-b133e2ec08e6', '6e28080a-0548-11ea-b9aa-0298a739dec0', 'veeva_code', 'veeva_code', 'custom', 'standard', 'all', 'both', '0', '1', '2019-11-12 07:59:31', '1', '2019-11-12 07:59:31', '0', '0', '0', '1', '1');

INSERT INTO `object_database_columns` (`id`, `object_id`, `name`, `type`, `used`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('4c3c813f-0549-11ea-b9aa-0298a739dec0', 'df53d96e-ffcb-4930-badb-b160d3fcee17', 'veeva_code', 'text', '1', '0', '1', '2019-11-12 07:51:02', '1', '2019-11-12 07:51:02');
INSERT INTO `object_fields` (`id`, `object_id`, `object_database_column_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7399392b-0549-11ea-b9aa-0298a739dec0', 'df53d96e-ffcb-4930-badb-b160d3fcee17', '4c3c813f-0549-11ea-b9aa-0298a739dec0', 'veeva_code', 'veeva_code', 'custom', 'standard', 'all', 'both', '0', '1', '2019-11-12 07:51:00', '1', '2019-11-12 07:51:00', '0', '0', '0', '1', '1');

UPDATE `page_list_fields` SET `object_field_id`='7399392b-0549-11ea-b9aa-0298a739dec0' WHERE `id`='f1cf31e0-e25f-11e9-b9aa-0298a739dec0';
update page_layout_fields set object_field_id='98fd72dd-0548-11ea-b9aa-0298a739dec0' where object_field_id='3845a476-36a1-4b09-abab-a6b274892dca';

-- 代表无法添加附件问题修复
UPDATE `role_to_object_permissions` SET `allow_update_attachment`=NULL WHERE `id`='94c5853e-bac2-4450-98db-4ac9119d1546';
