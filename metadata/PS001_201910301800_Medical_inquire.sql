-- 微信 医学问询 cfbc0235-6c5a-44a3-8853-2841064b0124
-- 电脑 医学问询 170ea9fd-05ba-4c64-b282-a4dfb699dd70  6e883f0f-b094-11e6-8a9a-5cc5d4d378cb

-- 53de6f5e-1da3-11e6-b011-5cc5d4b57134 代表
-- 53de9670-1da3-11e6-961c-5cc5d4b57135 经理
-- 53de9671-1da3-11e6-93fb-5cc5d4b57136 大区经理
-- 市场部  b72453fc-efdb-11e9-b9aa-0298a739dec0

-- 代表
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('cf029302-f94f-11e9-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'cfbc0235-6c5a-44a3-8853-2841064b0124', '12', '0', '1', '2019-10-28 11:17:36', '1', '2019-10-28 11:17:36');
-- 经理与大区经理 
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('26ba1690-f95f-11e9-b9aa-0298a739dec0', '53de9670-1da3-11e6-961c-5cc5d4b57135', 'cfbc0235-6c5a-44a3-8853-2841064b0124', '12', '0', '1', '2019-10-16 11:17:36', '1', '2019-10-16 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('3079dac8-f95f-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'cfbc0235-6c5a-44a3-8853-2841064b0124', '12', '0', '1', '2019-10-16 11:17:36', '1', '2019-10-16 11:17:36');

-- 市场部menu
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('c8ad8e10-f95e-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '170ea9fd-05ba-4c64-b282-a4dfb699dd70', '1', '0', '1', '2019-10-28 11:17:36', '1', '2019-10-28 11:17:36');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('e2e916a8-f95e-11e9-b9aa-0298a739dec0', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '6e883f0f-b094-11e6-8a9a-5cc5d4d378cb', '1', '0', '1', '2019-10-28 11:17:36', '1', '2019-10-28 11:17:36');
-- list
INSERT INTO `page_list_assignments`(`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`) VALUES ('12fa944b-1362-4e69-b347-40214f5b8f4f', NULL, '53de9670-1da3-11e6-961c-5cc5d4b57135', 'a695fcd4-c545-4f8b-a835-e3a40381e4fd', '0', '1', '2019-10-28 06:53:24', '1', '2019-10-28 06:53:24', '1', NULL) ;
INSERT INTO `page_list_assignments`(`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`) VALUES ('39728da8-c194-4864-bd21-41ef4efa63f2', NULL, '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'a695fcd4-c545-4f8b-a835-e3a40381e4fd', '0', '1', '2019-10-28 06:53:49', '1', '2019-10-28 06:53:49', '1', NULL) ;
INSERT INTO `page_list_assignments`(`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`) VALUES ('6f0286df-ca06-43da-86f8-6e1cf8690acb', NULL, '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'a695fcd4-c545-4f8b-a835-e3a40381e4fd', '0', '1', '2019-10-28 07:07:33', '1', '2019-10-28 07:07:33', '1', NULL) ;
INSERT INTO `page_list_assignments`(`id`, `user_id`, `role_id`, `page_list_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_default`, `ignore_switch`) VALUES ('bb3b7b3a-7092-4af9-8ee8-024eb6bf2695', NULL, 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '1a1c0faf-a9a8-4d57-b4c3-3be82283a886', '0', '1', '2019-10-28 08:47:37', '1', '2019-10-28 08:47:37', '1', NULL) ;

-- layout
-- 007abcd8-3c75-4e28-90ec-eda419bff30c	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_on_web_sent_self
-- f760c81c-e6ea-45b2-8e78-3d40d7fa30ad	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_on_web_al_replied_self

-- a3407b71-25a4-41f5-84c2-36b16d52368b	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_al_replied_self
-- 41bd0d68-8323-435d-9e7b-441dfc5859b6	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_sent_self
-- 77ef40fb-792c-4b4f-acd9-1d16efdc537d	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_draft_self

-- 4b29cbfc-0bb1-45ec-97b9-0e1b2abbfbb1	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_on_web_al_replied
-- 66824c83-0c4c-424b-9889-bec287f22a2b	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_on_web_sent

-- 9d0ea711-48b9-4474-94bd-4dabb0c1d697	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_sent
-- ceee0dae-289e-47d7-8d19-6ab283486450	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_al_replied
-- e0101321-32af-4e16-afe5-135816901bd9	a855d5ff-7e28-43c6-8085-53788c6aa58c	medical_inquiry_draft


-- 087ec6f4-ae36-478e-be7d-d6b75c62b4b0  代表代理提问 
-- 3a172482-ade8-4c98-b433-375f4d51b619  代表提问

-- 62ffc2ea-4d96-4dcb-9502-4dcc477f5b3c 医学问询object 

INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_create_page_list`) VALUES ('322f0c12-f9d9-43d7-be1f-e9f46316b231', 'b72453fc-efdb-11e9-b9aa-0298a739dec0', '62ffc2ea-4d96-4dcb-9502-4dcc477f5b3c', '1', '1', '1', '1', '0', '1', '2019-10-28 09:29:58', '1', '2019-10-28 09:29:58', '0', '0', '1', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_create_page_list`) VALUES ('36451144-50dc-455a-bfed-9e82930978f3', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '62ffc2ea-4d96-4dcb-9502-4dcc477f5b3c', '1', '1', '1', '1', '0', '1', '2019-10-28 07:13:43', '1', '2019-10-28 07:13:43', '0', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_create_page_list`) VALUES ('b88795d8-109a-49d7-a65b-e8b9ef553321', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '62ffc2ea-4d96-4dcb-9502-4dcc477f5b3c', '1', '1', '1', '1', '0', '1', '2019-10-28 07:15:03', '1', '2019-10-28 07:15:03', '0', '0', '0', '0', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`, `allow_update_attachment`, `allow_create_page_list`) VALUES ('c9e4aa33-32d7-4eda-9936-93217e0fa211', '53de9670-1da3-11e6-961c-5cc5d4b57135', '62ffc2ea-4d96-4dcb-9502-4dcc477f5b3c', '1', '1', '1', '1', '0', '1', '2019-10-28 07:14:22', '1', '2019-10-28 07:14:22', '0', '0', '0', '0', '0', '0');


INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('24cc81ca-ac26-4da9-82a0-42b803baf3b5', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '0', '0', '1', '2019-10-28 07:19:57', '1', '2019-10-28 07:19:57');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('458638f1-5f10-45d0-8d30-d5a4c5e6ad79', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '0', '0', '1', '2019-10-28 07:18:52', '1', '2019-10-28 07:18:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('86860d3c-bd44-406e-b68c-73866738456d', '53de9670-1da3-11e6-961c-5cc5d4b57135', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '0', '0', '1', '2019-10-28 07:19:28', '1', '2019-10-28 07:19:28');

INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('7e0d9b3d-abcb-4f4e-8ad4-fa769ccd069e', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '3a172482-ade8-4c98-b433-375f4d51b619', '0', '0', '1', '2019-10-28 07:19:57', '1', '2019-10-28 07:19:57');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('d5334e2b-8231-414b-8910-e8cc009f0fb8', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3a172482-ade8-4c98-b433-375f4d51b619', '0', '0', '1', '2019-10-28 07:18:52', '1', '2019-10-28 07:18:52');
INSERT INTO `role_to_object_record_types` (`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('f126c9ef-6617-4448-9b03-2e47b178aa70', '53de9670-1da3-11e6-961c-5cc5d4b57135', '3a172482-ade8-4c98-b433-375f4d51b619', '0', '0', '1', '2019-10-28 07:19:28', '1', '2019-10-28 07:19:28');


UPDATE `page_layouts` SET `screen_size`='large' WHERE `id`='007abcd8-3c75-4e28-90ec-eda419bff30c';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='41bd0d68-8323-435d-9e7b-441dfc5859b6';
UPDATE `page_layouts` SET `screen_size`='large' WHERE `id`='4b29cbfc-0bb1-45ec-97b9-0e1b2abbfbb1';
UPDATE `page_layouts` SET `screen_size`='large' WHERE `id`='66824c83-0c4c-424b-9889-bec287f22a2b';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='77ef40fb-792c-4b4f-acd9-1d16efdc537d';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='9d0ea711-48b9-4474-94bd-4dabb0c1d697';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='a3407b71-25a4-41f5-84c2-36b16d52368b';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='ceee0dae-289e-47d7-8d19-6ab283486450';
UPDATE `page_layouts` SET `screen_size`='small' WHERE `id`='e0101321-32af-4e16-afe5-135816901bd9';
UPDATE `page_layouts` SET `screen_size`='large' WHERE `id`='f760c81c-e6ea-45b2-8e78-3d40d7fa30ad';

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 

('ea7719d0-abb7-c54e-b302-686a29429e1c','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3a172482-ade8-4c98-b433-375f4d51b619', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'a3407b71-25a4-41f5-84c2-36b16d52368b', 'medical_inquiry_al_replied_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('aaa1ba99-9868-9848-8a65-0475364ba637','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3a172482-ade8-4c98-b433-375f4d51b619', '8c32bf94-6257-4a95-bdad-54945f77fe34', '41bd0d68-8323-435d-9e7b-441dfc5859b6', 'medical_inquiry_sent_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d556d698-095b-e547-ab9c-1850549092e1','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '3a172482-ade8-4c98-b433-375f4d51b619', 'e5b51742-3aa3-4a6e-acee-49151fddae67', '77ef40fb-792c-4b4f-acd9-1d16efdc537d', 'medical_inquiry_draft_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),

('d51c2b83-46ce-5a4f-a4f2-3e2acb81c3a8','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '8c32bf94-6257-4a95-bdad-54945f77fe34', '9d0ea711-48b9-4474-94bd-4dabb0c1d697', 'medical_inquiry_sent',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('b6349a82-37a3-dd48-8721-c9a43f2d490b','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'ceee0dae-289e-47d7-8d19-6ab283486450', 'medical_inquiry_al_replied',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d0619e5e-735a-9b41-8ac4-0611aa6ea7ca','53de6f5e-1da3-11e6-b011-5cc5d4b57134', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', 'e5b51742-3aa3-4a6e-acee-49151fddae67', 'e0101321-32af-4e16-afe5-135816901bd9', 'medical_inquiry_draft',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 

('ffcf2a19-d915-564f-ac9d-ed54a796b4ba','53de9670-1da3-11e6-961c-5cc5d4b57135', '3a172482-ade8-4c98-b433-375f4d51b619', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'a3407b71-25a4-41f5-84c2-36b16d52368b', 'medical_inquiry_al_replied_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('23d77c5a-f84a-1c43-a65f-d9201d506684','53de9670-1da3-11e6-961c-5cc5d4b57135', '3a172482-ade8-4c98-b433-375f4d51b619', '8c32bf94-6257-4a95-bdad-54945f77fe34', '41bd0d68-8323-435d-9e7b-441dfc5859b6', 'medical_inquiry_sent_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ef5fcf4d-e343-9942-94fc-6f5323a1804d','53de9670-1da3-11e6-961c-5cc5d4b57135', '3a172482-ade8-4c98-b433-375f4d51b619', 'e5b51742-3aa3-4a6e-acee-49151fddae67', '77ef40fb-792c-4b4f-acd9-1d16efdc537d', 'medical_inquiry_draft_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),

('8cdc34ae-e1bd-a840-bf07-56596332d420','53de9670-1da3-11e6-961c-5cc5d4b57135', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '8c32bf94-6257-4a95-bdad-54945f77fe34', '9d0ea711-48b9-4474-94bd-4dabb0c1d697', 'medical_inquiry_sent',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('aa8c773b-407f-8a47-80cb-d6f4f6893a58','53de9670-1da3-11e6-961c-5cc5d4b57135', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'ceee0dae-289e-47d7-8d19-6ab283486450', 'medical_inquiry_al_replied',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('a5bfc542-6970-a74c-bc94-36ab2ee249c4','53de9670-1da3-11e6-961c-5cc5d4b57135', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', 'e5b51742-3aa3-4a6e-acee-49151fddae67', 'e0101321-32af-4e16-afe5-135816901bd9', 'medical_inquiry_draft',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 

('e1d365b5-a640-8f47-85e1-e13fecb101c9','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3a172482-ade8-4c98-b433-375f4d51b619', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'a3407b71-25a4-41f5-84c2-36b16d52368b', 'medical_inquiry_al_replied_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('cef1a22f-6124-d340-a0d5-05d6fe7102f6','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3a172482-ade8-4c98-b433-375f4d51b619', '8c32bf94-6257-4a95-bdad-54945f77fe34', '41bd0d68-8323-435d-9e7b-441dfc5859b6', 'medical_inquiry_sent_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('3228fae8-73e3-6c4c-bc85-cf501d0ab373','53de9671-1da3-11e6-93fb-5cc5d4b57136', '3a172482-ade8-4c98-b433-375f4d51b619', 'e5b51742-3aa3-4a6e-acee-49151fddae67', '77ef40fb-792c-4b4f-acd9-1d16efdc537d', 'medical_inquiry_draft_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),

('28af0f45-b646-c14e-8635-bbfa4071901f','53de9671-1da3-11e6-93fb-5cc5d4b57136', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '8c32bf94-6257-4a95-bdad-54945f77fe34', '9d0ea711-48b9-4474-94bd-4dabb0c1d697', 'medical_inquiry_sent',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('47bddda2-4738-eb46-bbc7-a012cb3a1175','53de9671-1da3-11e6-93fb-5cc5d4b57136', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'ceee0dae-289e-47d7-8d19-6ab283486450', 'medical_inquiry_al_replied',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('d6742931-aa67-ab43-907d-dec1851e72f7','53de9671-1da3-11e6-93fb-5cc5d4b57136', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', 'e5b51742-3aa3-4a6e-acee-49151fddae67', 'e0101321-32af-4e16-afe5-135816901bd9', 'medical_inquiry_draft',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());

INSERT INTO page_layout_assignments(`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `mini_layout_section`, `is_locked_by_state`, `allow_enter_mini_layout`, `tips`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES 
('d27cf9f9-5e9a-b745-9990-8df9ee2d3186','b72453fc-efdb-11e9-b9aa-0298a739dec0', '3a172482-ade8-4c98-b433-375f4d51b619', '8c32bf94-6257-4a95-bdad-54945f77fe34', '007abcd8-3c75-4e28-90ec-eda419bff30c', 'medical_inquiry_on_web_sent_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('49b985bb-7045-1b4a-81da-145422a34bee','b72453fc-efdb-11e9-b9aa-0298a739dec0', '3a172482-ade8-4c98-b433-375f4d51b619', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'f760c81c-e6ea-45b2-8e78-3d40d7fa30ad', 'medical_inquiry_on_web_al_replied_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('0081a999-f98f-0349-bb72-a019aa2261f2','b72453fc-efdb-11e9-b9aa-0298a739dec0', '3a172482-ade8-4c98-b433-375f4d51b619', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'a3407b71-25a4-41f5-84c2-36b16d52368b', 'medical_inquiry_al_replied_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('ffe1a3be-260f-5e41-afed-0b77359fda70','b72453fc-efdb-11e9-b9aa-0298a739dec0', '3a172482-ade8-4c98-b433-375f4d51b619', '8c32bf94-6257-4a95-bdad-54945f77fe34', '41bd0d68-8323-435d-9e7b-441dfc5859b6', 'medical_inquiry_sent_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('5cbdf96b-e343-3b48-8504-0623d16eca26','b72453fc-efdb-11e9-b9aa-0298a739dec0', '3a172482-ade8-4c98-b433-375f4d51b619', 'e5b51742-3aa3-4a6e-acee-49151fddae67', '77ef40fb-792c-4b4f-acd9-1d16efdc537d', 'medical_inquiry_draft_self',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('14db3464-fa58-d94e-b3e3-8d5ca9a26a10','b72453fc-efdb-11e9-b9aa-0298a739dec0', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '10f7719b-e60c-40cd-b876-45ab43de9be2', '4b29cbfc-0bb1-45ec-97b9-0e1b2abbfbb1', 'medical_inquiry_on_web_al_replied',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('e17eeb93-d0f1-eb44-a6bc-d56b9df54147','b72453fc-efdb-11e9-b9aa-0298a739dec0', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '8c32bf94-6257-4a95-bdad-54945f77fe34', '66824c83-0c4c-424b-9889-bec287f22a2b', 'medical_inquiry_on_web_sent',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('f81d5a2c-1d70-174a-ba5f-dfe0ec116393','b72453fc-efdb-11e9-b9aa-0298a739dec0', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '8c32bf94-6257-4a95-bdad-54945f77fe34', '9d0ea711-48b9-4474-94bd-4dabb0c1d697', 'medical_inquiry_sent',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('42517b9d-40ed-df42-981c-9cc2672f6e08','b72453fc-efdb-11e9-b9aa-0298a739dec0', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', '10f7719b-e60c-40cd-b876-45ab43de9be2', 'ceee0dae-289e-47d7-8d19-6ab283486450', 'medical_inquiry_al_replied',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW()),
('2d5560a2-4ec2-5d47-9a81-578ed9c0b64a','b72453fc-efdb-11e9-b9aa-0298a739dec0', '087ec6f4-ae36-478e-be7d-d6b75c62b4b0', 'e5b51742-3aa3-4a6e-acee-49151fddae67', 'e0101321-32af-4e16-afe5-135816901bd9', 'medical_inquiry_draft',  NULL, 1, NULL, 0, 1, NOW(), 1, NOW());
