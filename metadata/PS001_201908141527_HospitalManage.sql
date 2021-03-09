-- =======================================电脑端医院管理 =================================
-- 调整字典排列顺序
UPDATE `picklist_values` SET `order`='2' WHERE `id`='b2b71508-2405-4d13-9a43-3d6f76dd6c90';
UPDATE `picklist_values` SET `order`='1' WHERE `id`='1684285f-9181-4888-99d5-2ef633eb688a';
UPDATE `picklist_values` SET `order`='3' WHERE `id`='728b9f0e-270c-4b0a-af31-5c1f15aedee4';
UPDATE `picklist_values` SET `order`='4' WHERE `id`='963e9feb-b8a7-4aee-9b34-84c179de9778';
UPDATE `picklist_values` SET `order`='6' WHERE `id`='e2785c2d-6ee5-436e-9647-f2dd1069bb52';
UPDATE `picklist_values` SET `order`='5' WHERE `id`='43df8de4-061d-4758-8391-05ab274ff4c7';
UPDATE `picklist_values` SET `order`='7' WHERE `id`='71715d8d-1e65-4994-a1e3-203568892e67';
UPDATE `picklist_values` SET `order`='9' WHERE `id`='eb18b53a-9483-4307-889d-de23a4087487';
UPDATE `picklist_values` SET `order`='16' WHERE `id`='0bf196e3-0f5e-4ff2-bf38-c96ba53ad5b0';
UPDATE `picklist_values` SET `order`='10' WHERE `id`='17f0aabb-9f78-42ec-8a6a-c3464f75a21c';
UPDATE `picklist_values` SET `order`='11' WHERE `id`='5415bb3e-05fb-4aec-91a1-2bc9ddd589c1';
UPDATE `picklist_values` SET `order`='8' WHERE `id`='560db81b-48fe-49e8-8193-05e552ac8de8';
UPDATE `picklist_values` SET `order`='12' WHERE `id`='d22185e6-33ef-4c34-99b1-9ea1cbb54d52';
UPDATE `picklist_values` SET `order`='14' WHERE `id`='2c270bf0-bd6d-423f-9d67-ac2ecb64cc2f';
UPDATE `picklist_values` SET `order`='17' WHERE `id`='3d73ef30-82ec-49e6-8bd0-edd43ef32637';
UPDATE `picklist_values` SET `order`='15' WHERE `id`='09982a29-d842-450c-adb6-5442fcbda022';
-- 将省市区的低级字段refer显示高级字段内容
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'geo_province', '省', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22','{\"refer_field\": {\"path\": \"geography.province\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'geo_city', '市', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22', '{\"refer_field\": {\"path\": \"geography.city\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `allow_filter`, `allow_sort`) VALUES ('7f29298f-11e6-urt6-a7c6-5cc5d4d378cb', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'geo_district', '区（县）', 'custom', 'refer', 'all', 'both', '255', '0', '1', '2017-03-30 05:45:09', '1', '2019-09-27 09:38:22', '{\"refer_field\": {\"path\": \"geography.name\", \"type\": \"text\"}}', '0', '0', '0', '1', '1');

-- 更改组菜单名称
UPDATE `menus` SET `label`='主数据管理' WHERE `id`='d9584ea1-1d93-11e6-a4c1-5cc5d4d378cb';
-- 加入新字典
INSERT INTO `picklists` (`id`, `name`, `label`, `source`, `multi_select`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('e4f4135e-4435-43fd-bf29-e82822052qrb', 'medical_establishment', '医疗机构类别', 'custom', '0', '0', '1', '2019-05-15 03:27:40', '1', '2019-05-15 03:27:40');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES 
('fe1bbb0a-40c1-40a2-a744-f83f8a593wfb', 'e4f4135e-4435-43fd-bf29-e82822052qrb', 'hospital', '医院', '1', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a591038', 'e4f4135e-4435-43fd-bf29-e82822052qrb', 'drugstore', '药店', '2', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a5lkdnz', 'e4f4135e-4435-43fd-bf29-e82822052qrb', 'other', '其他', '3', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom');
INSERT INTO `picklists` (`id`, `name`, `label`, `source`, `multi_select`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('e4f4135e-4435-43fd-bf29-e82822052qam', 'medical_establishment_child', '医疗机构子类别', 'custom', '0', '0', '1', '2019-05-15 03:27:40', '1', '2019-05-15 03:27:40');
INSERT INTO `picklist_values` (`id`, `picklist_id`, `name`, `label`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `source`) VALUES 
('fe1bbb0a-40c1-40a2-a744-f83f8a593wf1', 'e4f4135e-4435-43fd-bf29-e82822052qam', 'general_hospital', '综合医院', '1', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a591032', 'e4f4135e-4435-43fd-bf29-e82822052qam', 'special_hospital', '专科医院', '2', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a5lkdn3', 'e4f4135e-4435-43fd-bf29-e82822052qam', 'monomer_drugstore', '单体药店', '3', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a591034', 'e4f4135e-4435-43fd-bf29-e82822052qam', 'chain_drugstore', '连锁药店门店', '4', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom'),
('fe1bbb0a-40c1-40a2-a744-f83f8a5lkdn5', 'e4f4135e-4435-43fd-bf29-e82822052qam', 'other', '其他', '5', '0', '1', '2018-07-24 07:50:42', '1', '2018-01-11 16:20:23', 'custom');

-- sfe经理 客户管理/医院管理
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f728824eip','53de9674-1da3-11e6-ac97-5cc5d4b57137','d9584ea1-1d93-11e6-a4c1-5cc5d4d378cb',2,0,1,now(),1,now());
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f728821qnx','53de9674-1da3-11e6-ac97-5cc5d4b57137','ac537b1e-74df-11e6-ac06-5cc5d4d378cb',1,0,1,now(),1,now());
-- sfe经理授权 医院管理 page list
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f728824wsf','53de9674-1da3-11e6-ac97-5cc5d4b57137','db32420f-7664-11e6-82a6-5cc5d4d378cb',0,1,now(),1,now(),1);
--  sfe经理授权 医院管理下属医生 page list
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f728820olz','53de9674-1da3-11e6-ac97-5cc5d4b57137','f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb',0,1,now(),1,now(),1);
-- sfe经理授权 医院管理 page layout
insert into page_layout_assignments(id,object_record_type_id, role_id, page_layout_id, deleted, created_by, created_on, modified_by, modified_on)values
('2325b9e4-b930-11e7-b38c-02d2a924e45c','5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','53de9674-1da3-11e6-ac97-5cc5d4b57137','1c359340-763b-11e6-8119-5cc5d4d378cb',0,1,now(),1,now());
-- sfe经理授权 object 
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`, `allow_read_all`, `allow_update_all`) VALUES
('b1d2cdc0-f8cf-11e6-b3c7-68f728826tfb', '53de9674-1da3-11e6-ac97-5cc5d4b57137', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '1', '1', '1', '0', '1', now(), '1', now(), '1', '1', '1', '1');
-- 创建custom新字段
UPDATE `object_fields` SET `label`='医疗机构类别', `picklist_id`='e4f4135e-4435-43fd-bf29-e82822052qrb', `picklist_type`='picklist' WHERE `id`='82662c1e-74dc-11e6-8bd2-5cc5d4d378cb';
update object_database_columns set used=1 where id='82455db0-74dc-11e6-838a-5cc5d4d378cb';
UPDATE `object_fields` SET `label`='医疗机构子类别', `picklist_id`='e4f4135e-4435-43fd-bf29-e82822052qam', `picklist_type`='picklist' WHERE `id`='827ce870-74dc-11e6-a5ae-5cc5d4d378cb';
update object_database_columns set used=1 where id='82714fb0-74dc-11e6-9308-5cc5d4d378cb';
UPDATE `object_fields` SET `label`='年门诊量', `number_scale`='0', `number_default`='0' WHERE `id`='800cabc0-74dc-11e6-b327-5cc5d4d378cb';
update object_database_columns set used=1 where id='80013a0f-74dc-11e6-8013-5cc5d4d378cb';

-- pagelist field字段调整
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4d32q0f', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '24d70ecf-12d4-11e7-bdd5-e4b318c6b596', '医院编码', '1', '120', '1', '1', '1', '0', '1',now(), '1',now());
UPDATE `page_list_fields` SET `order`='2' WHERE `id`='777a5861-7665-11e6-bd57-5cc5d4d378cb';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4d321q3', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '5a216d6e-20ad-dqws-a296-5cc5d4d378cb', '医院别名', '3', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4d30axm', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '省', '4', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4d30axv', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '市', '5', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqweo', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '7f29298f-11e6-urt6-a7c6-5cc5d4d378cb', '县(区)', '6', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dp9snd', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', 'f4aae3d1-20ad-11e6-bfbd-5cc5d4d378cb', '地址', '7', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqwe1', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '82662c1e-74dc-11e6-8bd2-5cc5d4d378cb', '医疗机构类别', '8', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqwe2', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '827ce870-74dc-11e6-a5ae-5cc5d4d378cb', '医疗机构子类别', '9', '120', '1', '1', '1', '0', '1',now(), '1',now());
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqwe3', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '8dfbaf42-41b9-4199-91a6-4ecbdf8158a8', '医院级别', '10', '120', '1', '1', '1', '0', '1',now(), '1',now());
UPDATE `page_list_fields` SET `order`='10' WHERE `id`='77e9bc00-7665-11e6-ba72-5cc5d4d378cb';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqwe4', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', '800cabc0-74dc-11e6-b327-5cc5d4d378cb', '年门诊量', '12', '120', '1', '1', '1', '0', '1',now(), '1',now());
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='7788fe61-7665-11e6-8dec-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='77a4eacf-7665-11e6-9558-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='77cf2f21-7665-11e6-89d8-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='77dc4e80-7665-11e6-8462-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='77f66630-7665-11e6-a1a3-5cc5d4d378cb';
UPDATE `page_list_fields` SET `order`='11' WHERE `id`='77e9bc00-7665-11e6-ba72-5cc5d4d378cb';
UPDATE `page_list_fields` SET `label`='岗位', `order`='13' WHERE `id`='c47906c0-b570-11e7-986e-c85b76d4d416';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES ('777a5861-7665-11e6-bd57-5cc5d4dpqw4z', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', 'a97907f0-0ecf-11e7-bdc6-e4b318c6b596', '是否失效', '14', '120', '1', '1', '1', '0', '1',now(), '1',now());
--  pagelayout 字段调整
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) 
VALUES ('eac92400-765f-11e6-a567-5cc5d4d30qzm', '1c359340-763b-11e6-8119-5cc5d4d378cb', 'field', '24d70ecf-12d4-11e7-bdd5-e4b318c6b596', '医院编码', '2', '6', '1', '0', 'both', '0', '1', now(), '1', now(), '0', '0');
UPDATE `page_layout_fields` SET `order`='3' WHERE `id`='eac92400-765f-11e6-a567-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='5a216d6e-20ad-dqws-a296-5cc5d4d378cb', `label`='医院别名', `order`='4' WHERE `id`='ead72dc0-765f-11e6-8e89-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', `label`='省' WHERE `id`='eaf34140-765f-11e6-baf7-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', `label`='市' WHERE `id`='eaffeb70-765f-11e6-a887-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='7f29298f-11e6-urt6-a7c6-5cc5d4d378cb', `label`='县(区)' WHERE `id`='eb15211e-765f-11e6-aa9d-5cc5d4d378cb';
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) 
VALUES ('eac92400-765f-11e6-a567-5cc5d4d34axn', '1c359340-763b-11e6-8119-5cc5d4d378cb', 'field', 'f4aae3d1-20ad-11e6-bfbd-5cc5d4d378cb', '地址', '8', '6', '0', '1', 'both', '0', '1', now(), '1', now(), '0', '0');
UPDATE `page_layout_fields` SET `object_field_id`='82662c1e-74dc-11e6-8bd2-5cc5d4d378cb', `label`='医疗机构类别', `order`='9' WHERE `id`='eb90448f-765f-11e6-8db8-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='827ce870-74dc-11e6-a5ae-5cc5d4d378cb', `label`='医疗机构子类别', `order`='10' WHERE `id`='eba3a580-765f-11e6-aa39-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='8dfbaf42-41b9-4199-91a6-4ecbdf8158a8', `label`='医院级别', `order`='10' WHERE `id`='ebce5f00-765f-11e6-83e6-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `deleted`='1' WHERE `id`='ebe73e30-765f-11e6-8702-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `order`='12' WHERE `id`='ec1504f0-765f-11e6-a055-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `object_field_id`='800cabc0-74dc-11e6-b327-5cc5d4d378cb', `label`='年门诊量', `order`='13' WHERE `id`='ebfc25c0-765f-11e6-98d6-5cc5d4d378cb';
UPDATE `page_layout_fields` SET `order`='14' WHERE `id`='bb0e9a21-acf9-11e7-a11c-c85b76d4d416';
UPDATE `page_layout_fields` SET `object_field_id`='a97907f0-0ecf-11e7-bdc6-e4b318c6b596', `label`='是否失效', `order`='15' WHERE `id`='ec2f1ca1-765f-11e6-b67d-5cc5d4d378cb';

-- 配置导入
INSERT ignore INTO `object_actions` (`id`, `object_id`, `type`, `source`, `target_display_mode`, `name`, `label`, `is_need_create`, `is_need_delete`, `is_need_read`, `is_need_update`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `locked_by_state`, `owner_only`, `is_need_export`, `is_need_import`, `show_in_approval`, `is_need_pre_check`, `pre_check_label`) 
VALUES ('e93c4540-90f4-11e6-8cc2-yiyuanwl1234', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', 'advanced', 'system', 'all', 'import', '导入', '1', '0', '0', '0', '0', '1', now(), '1',now() , '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`)
VALUES ('522b3330-5f5a-11e9-99c4-02f90e0f43wn', 'db32420f-7664-11e6-82a6-5cc5d4d378cb', 'e93c4540-90f4-11e6-8cc2-yiyuanwl1234', '2', '0', '1', now(), '1', now(), '0', '0');


insert into customer_map_column(`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `type`, `object_id`, `object_field_id`, `order`, `is_key`,`label`, `mandatory`, `object_record_type_id`,`sample_value`)
values(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','5a216d6e-20ad-11e6-a296-5cc5d4d378cb',1,0,'医院名称',1,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','北京西城医院'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','24d70ecf-12d4-11e7-bdd5-e4b318c6b596',2,1,'医院编码',1,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','YK191419'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','5a216d6e-20ad-dqws-a296-5cc5d4d378cb',3,0,'医院别名',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','西城医院'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','7ef8cac0-74dc-hfgm-8258-5cc5d4d378cb',4,0,'省',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','北京市'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','7f0f11e1-74dc-utyh-ac1d-5cc5d4d378cb',5,0,'市',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','北京市'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','7f29298f-74dc-urt6-a7c6-5cc5d4d378cb',6,0,'县(区)',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','西城区'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','f4aae3d1-20ad-11e6-bfbd-5cc5d4d378cb',7,0,'地址',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','西城街道'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','8dfbaf42-41b9-4199-91a6-4ecbdf8158a8',10,0,'医院级别',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','一级'),
(0,1,now(),1,now(),'standard','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','6484500f-20ae-11e6-8c4d-5cc5d4d378cb',11,0,'床位数',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','100');

insert into customer_map_column(`deleted`,`temp_column_name`, `created_by`, `created_on`, `modified_by`, `modified_on`, `type`, `object_id`, `object_field_id`, `order`, `is_key`,`label`, `mandatory`, `object_record_type_id`,`sample_value`)
values(0,'field1',1,now(),1,now(),'custom','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','82662c1e-74dc-11e6-8bd2-5cc5d4d378cb',8,0,'医疗机构类别',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','医院'),
(0,'field2',1,now(),1,now(),'custom','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','827ce870-74dc-11e6-a5ae-5cc5d4d378cb',9,0,'医疗机构子类别',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','综合医院'),
(0,'field3',1,now(),1,now(),'custom','9529d4c0-20a8-11e6-995f-5cc5d4d378cb','800cabc0-74dc-11e6-b327-5cc5d4d378cb',12,0,'年门诊量',0,'5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','50000');

INSERT INTO `import_templates` (`deleted`, `created_on`, `modified_on`, `id`, `instructions`, `created_by`, `modified_by`, `object_id`)
VALUES ('0', '2019-07-17 07:10:00.798379', '2019-07-17 07:10:00.798432', '9b86c838-1e9c-4adf-ad37-4c55e722tscb', '导入说明###1.请按所示列提供医院名称、医院编码、医院别名、省、市、县（区）、地址、医疗结构类别、医疗结构子类别、医院级别、床位数、年门诊量、操作###2.操作：新增【I】、更新【U】，请在导入文件中输入I或U', '1', '1', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb');
INSERT INTO `import_template_assignments` (`deleted`, `created_on`, `modified_on`, `id`, `created_by`, `import_template_id`, `modified_by`, `role_id`,object_record_type_id) VALUES 
('0', '2019-07-17 07:10:00.801111', '2019-07-17 07:10:00.801111', 'ded278ac-5af2-419f-bc87-fb05f70d8rdn', '1', '9b86c838-1e9c-4adf-ad37-4c55e722tscb', '1', '53de9674-1da3-11e6-ac97-5cc5d4b57137','5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb');
update customer_map_column set import_template_id='9b86c838-1e9c-4adf-ad37-4c55e722tscb' where  object_id='9529d4c0-20a8-11e6-995f-5cc5d4d378cb' 
AND object_record_type_id='5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb';

-- ======================================== 微信端我的医院管理 ===========================
-- 代表.地区.大区授权  我的医院微信端 menu id ac14764f-74df-11e6-9dc6-5cc5d4d378cb
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f7288242qa','53de6f5e-1da3-11e6-b011-5cc5d4b57134','ac14764f-74df-11e6-9dc6-5cc5d4d378cb',1,0,1,now(),1,now());
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f7288247eb','53de9670-1da3-11e6-961c-5cc5d4b57135','ac14764f-74df-11e6-9dc6-5cc5d4d378cb',1,0,1,now(),1,now());
insert into menus_assignments(id, role_id, menu_id, `order`, deleted, created_by, created_on, modified_by, modified_on)values
('5a2a9e0f-f8aa-11e6-b2f9-68f728824pan','53de9671-1da3-11e6-93fb-5cc5d4b57136','ac14764f-74df-11e6-9dc6-5cc5d4d378cb',1,0,1,now(),1,now());
-- 代表.地区.大区授权  我的医院page list id db221570-7664-11e6-bac9-5cc5d4d378cb
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f728823w8i','53de6f5e-1da3-11e6-b011-5cc5d4b57134','db221570-7664-11e6-bac9-5cc5d4d378cb',0,1,now(),1,now(),1);
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f72882c3em','53de9670-1da3-11e6-961c-5cc5d4b57135','db221570-7664-11e6-bac9-5cc5d4d378cb',0,1,now(),1,now(),1);
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f72882c5az','53de9671-1da3-11e6-93fb-5cc5d4b57136','db221570-7664-11e6-bac9-5cc5d4d378cb',0,1,now(),1,now(),1);
-- 代表.地区.大区授权  我的医院下属的医生 page list id f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f728822wsm','53de6f5e-1da3-11e6-b011-5cc5d4b57134','f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb',0,1,now(),1,now(),1);
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f72882c7av','53de9670-1da3-11e6-961c-5cc5d4b57135','f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb',0,1,now(),1,now(),1);
insert into page_list_assignments(id, role_id, page_list_id, deleted, created_by, created_on, modified_by, modified_on, is_default)values
('977ee070-f8c1-11e6-8986-68f728823act','53de9671-1da3-11e6-93fb-5cc5d4b57136','f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb',0,1,now(),1,now(),1);

-- 代表.地区.大区授权 page layout
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '1dd8259e-3e96-11e6-9c7d-5cc5d4d378cb', 'hospital_s', '客户详情', 'custom', 'small', '0', '1', '2018-08-02 10:33:29', '1', '2018-08-02 10:33:29');
UPDATE `page_layouts` SET `deleted`='1' WHERE `id`='1c2a489e-763b-11e6-b7bf-5cc5d4d378cb';
insert into page_layout_assignments(id,object_record_type_id, role_id, page_layout_id, deleted, created_by, created_on, modified_by, modified_on)values
('2325b9e4-b930-11e7-b38c-02d2a924e45f','5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','53de6f5e-1da3-11e6-b011-5cc5d4b57134','1c2a489e-763b-11e6-b7bf-5cc5d4d37890',0,1,now(),1,now()),
('2325b9e4-b930-11e7-b38c-02d2a924e45g','5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','53de9670-1da3-11e6-961c-5cc5d4b57135','1c2a489e-763b-11e6-b7bf-5cc5d4d37890',0,1,now(),1,now()),
('2325b9e4-b930-11e7-b38c-02d2a924e45h','5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb','53de9671-1da3-11e6-93fb-5cc5d4b57136','1c2a489e-763b-11e6-b7bf-5cc5d4d37890',0,1,now(),1,now());
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('b3d0dbd1-7666-11e6-92fa-5cc5d4d31590', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '829eea0f-321a-11e6-b318-5cc5d4d378cb', 'edit', '3', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('b3ddfb30-7666-11e6-9bd4-5cc5d4d34qcn', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'ae0d6e7a-33a9-11e6-a646-5c514ff44493', 'view', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('b3ee27cf-7666-11e6-a776-5cc5d4d37oan', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '2b6b58de-321b-11e6-9ff7-5cc5d4d378cb', 'view', '2', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
UPDATE `page_layout_actions` SET `deleted`='1' WHERE `id`='b3d0dbd1-7666-11e6-92fa-5cc5d4d378cb';
UPDATE `page_layout_actions` SET `deleted`='1' WHERE `id`='b3ddfb30-7666-11e6-9bd4-5cc5d4d378cb';
UPDATE `page_layout_actions` SET `deleted`='1' WHERE `id`='b3ee27cf-7666-11e6-a776-5cc5d4d378cb';
-- INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES ('8e1cbaf0-7669-11e6-b65e-5cc5d4d31zms', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '2', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '05b2b3e1-7669-11e6-a191-5cc5d4d378cb', '0');
UPDATE `page_layout_tabs` SET `deleted`='1' WHERE `id`='8e1cbaf0-7669-11e6-b65e-5cc5d4d378cb';
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) VALUES 
('8e1cbaf0-7669-11e6-b65e-5cc5d4d32cvb', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '2', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '05b2b3e1-7669-11e6-a191-5cc5d4d378cb', '0');

-- 代表.地区.大区授权 object
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`)
VALUES ('fb0c4f40-9419-fwe6-t45r-5cc5d4d373wa', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '0', '0', '0', '0', '1', '2016-12-31 16:00:00', '1', '2016-12-31 16:00:00', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`)
VALUES ('fb0c4f40-9419-fwe6-t45r-5cc5d4d372qm', '53de9670-1da3-11e6-961c-5cc5d4b57135', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '0', '0', '0', '0', '1', '2016-12-31 16:00:00', '1', '2016-12-31 16:00:00', '0', '0');
INSERT INTO `role_to_object_permissions` (`id`, `role_id`, `object_id`, `allow_read`, `allow_create`, `allow_update`, `allow_delete`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `allow_import`, `allow_export`)
VALUES ('fb0c4f40-9419-fwe6-t45r-5cc5d4d372q1', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '9529d4c0-20a8-11e6-995f-5cc5d4d378cb', '1', '0', '0', '0', '0', '1', '2016-12-31 16:00:00', '1', '2016-12-31 16:00:00', '0', '0');
-- 调整page list fields
UPDATE `page_list_fields` SET `object_field_id`='24d70ecf-12d4-11e7-bdd5-e4b318c6b596', `label`='医院编码', `allow_filter`='0', `allow_sort`='0', `is_default`='1' WHERE `id`='781e608f-7665-11e6-b078-5cc5d4d378cb';
UPDATE `page_list_fields` SET `object_field_id`='82662c1e-74dc-11e6-8bd2-5cc5d4d378cb', `label`='医疗机构类别', `order`='3', `is_default`='1' WHERE `id`='783d3330-7665-11e6-aa18-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='7856fcc0-7665-11e6-82f1-5cc5d4d378cb';
UPDATE `page_list_fields` SET `object_field_id`='827ce870-74dc-11e6-a5ae-5cc5d4d378cb', `label`='医疗机构子类别', `order`='4', `allow_filter`='0', `allow_sort`='0' WHERE `id`='784aa0b0-7665-11e6-ad9d-5cc5d4d378cb';
-- 调整 page layout fields
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('e8d0d670-765f-11e6-8258-5cc5d4d37001', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'section', '基本信息', '1', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e8e596ee-765f-11e6-a6f5-5cc5d4d37002', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '24d70ecf-12d4-11e7-bdd5-e4b318c6b596', '医院编码', '2', '6', '1', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e90d914f-765f-11e6-986e-5cc5d4d37003', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '5a216d6e-20ad-11e6-a296-5cc5d4d378cb', '医院名称', '3', '6', '1', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e9610880-765f-11e6-91c2-5cc5d4d37004', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '5a216d6e-20ad-dqws-a296-5cc5d4d378cb', '医院别名', '4', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e98ad7a1-765f-11e6-ade0-5cc5d4d37006', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '7ef8cac0-74dc-hfgm-8258-5cc5d4d33wan', '省', '6', '6', '1', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('e9d8f79e-765f-11e6-97d5-5cc5d4d37007', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '7f0f11e1-74dc-utyh-ac1d-5cc5d4d3wcvm', '市', '7', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e9eca6ae-765f-11e6-876d-5cc5d4d37008', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '7f29298f-11e6-urt6-a7c6-5cc5d4d378cb', '县(区)', '8', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('e9766540-765f-11e6-9226-5cc5d4d37005', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', 'f4aae3d1-20ad-11e6-bfbd-5cc5d4d378cb', '地址', '5', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('ea22f8f0-765f-11e6-be85-5cc5d4d37009', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '82662c1e-74dc-11e6-8bd2-5cc5d4d378cb', '医疗机构类别', '9', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('ea3aedc0-765f-11e6-8a01-5cc5d4d37010', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '827ce870-74dc-11e6-a5ae-5cc5d4d378cb', '医疗机构子类别', '10', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('ea4e9cd1-765f-11e6-a7aa-5cc5d4d37011', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '8dfbaf42-41b9-4199-91a6-4ecbdf8158a8', '医院级别', '11', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('ea60c540-765f-11e6-b1bf-5cc5d4d37012', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '6484500f-20ae-11e6-8c4d-5cc5d4d378cb', '床位数', '12', '6', '0', '0', 'both', '0', '1', '2017-05-02 15:39:41', '1', '2017-05-02 15:39:41', '0', '0');
INSERT INTO  `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`) VALUES ('ea84a0f0-765f-11e6-be0c-5cc5d4d37013', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', 'field', '800cabc0-74dc-11e6-b327-5cc5d4d378cb', '年门诊量', '13', '12', '0', '0', 'both', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00', '0', '0');
-- 调整医院 下医生tab列表 字段
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6a1b90e1-3eab-11e6-b984-5cc5d4d34rfv', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', 'c323dbc0-1cfc-452e-a506-491fc29e3714', '科室', '2', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='2c1e9c3b-3cb3-440e-ad84-3877750c6d82';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='6023d6b0-3eab-11e6-ac0d-5cc5d4d378cb';
UPDATE `page_list_fields` SET `deleted`='1' WHERE `id`='6555f280-3eab-11e6-861c-5cc5d4d378cb';
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6a1b90e1-3eab-11e6-b984-5cc5d4d36iaz', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '43d5ceb0-20af-11e6-b453-5cc5d4d378cb', '职称', '3', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('6a1b90e1-3eab-11e6-b984-5cc5d4d30bxm', 'f300cd4f-3ea9-11e6-b0f7-5cc5d4d378cb', '84140691-e071-11e6-aaa7-5cc5d4d378cb', '职务', '4', '120', '0', '1', '1', '0', '1', '2017-01-01 00:00:00', '1', '2017-01-01 00:00:00');
UPDATE `page_list_actions` SET `deleted`='1' WHERE `id`='f513920f-4a6d-11e6-a857-5cc5d4d378cb';
-- 调整医院列表排序，医院名称正序
UPDATE `page_lists` SET `sort_field` = '5a216d6e-fasx-dqws-a296-5cc5d4d378cb' WHERE (`id` = 'db221570-7664-11e6-bac9-5cc5d4d378cb');
