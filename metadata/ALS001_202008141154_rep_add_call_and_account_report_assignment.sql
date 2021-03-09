
-- 代表授权看板权限
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('b6675f6d-39e7-464b-9082-6bad53528ea6', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', now(), '1', now());

-- 将目标医生分级覆盖率删除
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'b7121822-e908-4655-ae05-431229814085');

-- 授权目标医生和拜访目标医生覆盖率
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'b72c343b-dde2-11ea-bc49-0215c63fce1a', '7', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'b72c3c25-dde2-11ea-bc49-0215c63fce1a', '9', '2df1e2b6-1576-11ea-bc78-0242ac130002', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'analysis', 'd7d8359f-f884-4d75-b017-72de726afc05');

-- 将客户报表设置为看板内报表
UPDATE `reports_assignments` SET `page_type` = 'analysis' WHERE (`id` = 'b72c343b-dde2-11ea-bc49-0215c63fce1a');


-- 客户报表过滤  后期需要修改
UPDATE `reports` SET `python_config` = '{\n      \"filter_by\": \"product-metrics\",\n      \"record_types\": [\"common\",\"academic\",\"event_follow_up_call\"],\n      \"states\": [\n          \"finished\"\n      ],\n      \"time_column\": \"call_date\",\n      \"limit_months\": 24,\n      \"default_content_shown\": \"coverage\",\n      \"professionals_to_call_list\": {\n          \"title\": \"未拜访医生数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      },\n      \"professionals_called_list\": {\n          \"title\": \"已拜访医生数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      },\n      \"target_professionals_list\": {\n          \"title\": \"目标医生总数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      }\n  }' WHERE (`id` = '2df1e2b6-1576-11ea-bc78-0242ac130002');

-- 客户列表报表
UPDATE `reports` SET `python_config` = '{\n     \"filter_by\": \"product-metrics\",\n     \"group_by\": [\n         {\n             \"type\": \"department\",\n             \"field\": \"standard_department\",\n             \"is_default\": true\n         },\n         {\n             \"type\": \"title\",\n             \"field\": \"professional_title\"\n         }\n     ],\n     \"all_professionals_list\": {\n         \"title\": \"目标医生列表\",\n         \"object_name\": \"account\",\n         \"fields\": [\n             \"name\",\n             \"hospital_name\"\n         ]\n     },\n     \"professionals_by_group_list\": {\n         \"title\": \"目标医生列表\",\n         \"object_name\": \"account\",\n         \"fields\": [\n             \"name\",\n             \"hospital_name\"\n         ]\n     }\n }' WHERE (`id` = 'f79eb26f-006f-11ea-b9aa-0298a739dec0');

-- 地区经理
-- 看板授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('cd28bfd1-dfba-11ea-bc49-0215c63fce1a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', '2017-04-06 20:22:40', '1', '2019-12-12 09:57:18');
-- 首页报表收益权报表和拜访类报表
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '24be7a09-a4a2-4841-90b6-cb9bac0751cb');

UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '1a6499e8-a747-4887-bd13-42cebda764a3');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '7cbed6f1-67a3-40aa-8b1c-e88eb8826879');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'be571375-4e58-4e49-b7d7-0017a9f2f99e');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'd3cd0562-668c-4cd9-bb3f-dffe76ffe08f');


-- 客户报表授权
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'cd28c35b-dfba-11ea-bc49-0215c63fce1a', '1', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES ('0', '1', now(), '1', now(), 'cd28c3a5-dfba-11ea-bc49-0215c63fce1a', '2', 'd738decc-ff98-11e9-b9aa-0298a739dec0', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'analysis');
UPDATE `reports_assignments` SET `group_id` = 'a1242f66-7cf9-44a6-ba43-ecfa2c726377' WHERE (`id` = 'cd28c3a5-dfba-11ea-bc49-0215c63fce1a');

UPDATE `reports` SET `python_config` = '{\n         \"filter_by\": \"position-to-hospital\",\n         \"group_by\": [\n           {\n             \"type\": \"hospital_grade\",\n             \"field\": \"hospital_grade\",\n             \"is_default\":true\n         },\n          {\n           	 \"type\": \"hospital_state\",\n             \"field\": \"hospital_grade\"\n         }\n         ],\n         \"all_hospitals_list\": {\n             \"title\": \"目标医院列表\",\n             \"object_name\": \"account\",\n             \"fields\": [\"name\", \"alias\", \"address\"]\n         },\n         \"hospitals_by_group_list\": {\n             \"title\": \"目标医院列表\",\n             \"object_name\": \"account\",\n             \"fields\": [\"name\", \"alias\", \"address\"]\n         }\n     }' WHERE (`id` = 'd738decc-ff98-11e9-b9aa-0298a739dec0');

-- 团队客户报表
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'cd28c3ec-dfba-11ea-bc49-0215c63fce1a', '0', 'dfc3e782-0129-11ea-b9aa-0298a739dec0', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');



-- 销售主管

INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('cd28c42c-dfba-11ea-bc49-0215c63fce1a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', now(), '1', now(), 'null');

UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '2bb2b956-9894-4c43-8ed8-e93fb1907309');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '51edf59a-ad56-4d78-82bc-1e6b50b23522');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '6f63b0ff-3a36-4d26-84fc-164c4c9d6c6b');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'b6bc2340-9f80-43e0-9ed8-dfa932ec14af');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'e5b7c3f3-8795-4c31-8013-7bc53908af70');

INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'cd28c474-dfba-11ea-bc49-0215c63fce1a', '1', 'dfc3e782-0129-11ea-b9aa-0298a739dec0', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'cd28c561-dfba-11ea-bc49-0215c63fce1a', '2', 'd738decc-ff98-11e9-b9aa-0298a739dec0', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), 'cd28c59e-dfba-11ea-bc49-0215c63fce1a', '3', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');


-- 报表修改
UPDATE `reports` SET `python_config` = '{\n      \"filter_by\": \"position-to-professional\",\n      \"record_types\": [\"common\",\"academic\",\"event_follow_up_call\"],\n      \"states\": [\n          \"finished\"\n      ],\n      \"time_column\": \"call_date\",\n      \"limit_months\": 24,\n      \"default_content_shown\": \"coverage\",\n      \"professionals_to_call_list\": {\n          \"title\": \"未拜访医生数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      },\n      \"professionals_called_list\": {\n          \"title\": \"已拜访医生数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      },\n      \"target_professionals_list\": {\n          \"title\": \"目标医生总数\",\n          \"object_name\": \"account\",\n          \"fields\": [\n              \"name\",\n              \"hospital_name\"\n          ]\n      }\n  }' WHERE (`id` = '2df1e2b6-1576-11ea-bc78-0242ac130002');


-- 大区经理和大区总监看板授权
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('e7b29d3d-e05c-11ea-bc49-0215c63fce1a', '53de9671-1da3-11e6-93fb-5cc5d4b57136', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', now(), '1', now(), 'null');
INSERT INTO `menus_assignments` (`id`, `role_id`, `menu_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`) VALUES ('e7b29d79-e05c-11ea-bc49-0215c63fce1a', '20228999-b5ff-11ea-aab5-0215c63fce1a', '8ac42280-48a1-11e6-87ca-5cc5d4d378cb', '3', '0', '1', now(), '1', now(), 'null');

UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '0c4b8635-badd-4b56-a511-460ea46a7895');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '2c101f48-6462-4b40-8308-2ced851a52fb');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '36824185-7cef-4acc-a129-a4adf07ed3c1');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '69b649d7-875b-4d55-957a-d22bf3d3e8a8');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = '7c5f41c0-649c-4282-bf18-cd4e1e0b79c9');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'a11081fe-cb72-448f-a9c1-bc5dceb3af21');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'b0257ebf-6f9b-40c4-a23a-736dd635b724');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'ca456373-0293-4e84-9b35-c976b5896cc2');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'cd221dce-7d00-416e-bf47-09c8ef67a94e');
UPDATE `reports_assignments` SET `deleted` = '1' WHERE (`id` = 'f888aa40-d682-48c0-9075-0bcb7b295b1a');


INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e22b-e0ff-11ea-bc49-0215c63fce1a', '1', 'dfc3e782-0129-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e3e9-e0ff-11ea-bc49-0215c63fce1a', '2', 'd738decc-ff98-11e9-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e42b-e0ff-11ea-bc49-0215c63fce1a', '3', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e471-e0ff-11ea-bc49-0215c63fce1a', '1', 'dfc3e782-0129-11ea-b9aa-0298a739dec0', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e4b1-e0ff-11ea-bc49-0215c63fce1a', '2', 'd738decc-ff98-11e9-b9aa-0298a739dec0', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`, `group_id`) VALUES ('0', '1', now(), '1', now(), '3fe0e4f9-e0ff-11ea-bc49-0215c63fce1a', '3', 'f79eb26f-006f-11ea-b9aa-0298a739dec0', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'analysis', 'a1242f66-7cf9-44a6-ba43-ecfa2c726377');
