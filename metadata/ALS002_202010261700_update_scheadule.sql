-- 拜访计划增加医院字段
INSERT INTO `object_fields` (`id`, `object_id`, `name`, `label`, `source`, `type`, `target_display_mode`, `target_screen_size`, `number_scale`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `allow_filter`, `allow_sort`, `allow_dynamic_label`) VALUES ('46b811d2-a99f-420f-b6af-b0ee0dd105bc', '13b4dcc6-8406-4be9-869f-633d9fee7dfc', 'cs_hospital_name', '医院', 'custom', 'refer', 'all', 'both', '0', '0', '1', '2020-10-26 08:54:59', '1', '2020-10-26 08:54:59', '{\"refer_field\": {\"path\": \"professional.hospital.name\", \"type\": \"text\"}}', '0', '0', '1', '', '1', '1', '0');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_highlight`) VALUES ('a8eeb814-0463-4352-a15a-b5fd921c9c7e', '61085cf7-4048-460e-b59c-38c53785e79a', 'field', '46b811d2-a99f-420f-b6af-b0ee0dd105bc', '拜访医院', '5', '6', '0', '1', 'view', '0', '1', '2020-09-29 09:06:36', '1', '2020-09-29 09:06:36', '0', '0');

-- 时间线增加会议对象
UPDATE `custom_settings` SET `value` = '{\n    \"objects\": {\n        \"call\": {\n            \"pagelist_id\": \"597a0c70-7408-11e6-bd2a-5cc5d4b571d2\",\n            \"time_column\": \"call_date\",\n            \"page_layout_id\": \"default\"\n        },\n      \"event\": {\n            \"pagelist_id\": \"1013a81e-5f68-11e6-aa03-5cc5d4d378cb\",\n            \"time_column\": \"event_start_time\",\n            \"page_layout_id\": \"default\"\n        }\n          },\n    \"interval_days\": 120\n}' WHERE (`key` = 'account_time_line_object');
-- 销量上报数量为整数
UPDATE `object_fields` SET `number_scale` = '0' WHERE (`id` = 'f27b843a-b6df-4b30-ae6b-38518cf775fb');

-- 修改weekly_plan权限
UPDATE `role_to_object_permissions` SET `allow_delete` = '1' WHERE (`id` = 'f49b496e-fc4e-11e9-b9aa-0298a739dec0');
UPDATE `role_to_object_permissions` SET `allow_delete` = '1' WHERE (`id` = 'b93a1165-86dd-4f6e-a61a-cf65592af981');
UPDATE `role_to_object_permissions` SET `allow_delete` = '1' WHERE (`id` = 'e07314ae-801a-468d-b309-e95dba44b349');

-- 日程显示修改
UPDATE `custom_settings` SET `value` = '{\n    \"enable_weekly_plan\": true,\n    \"enable_differential_display\": true,\n    \"call_state_to_be_compared\": [\n        \"585cb58f-7408-11e6-934d-5cc5d4b571d2\"\n    ],\n    \"tot_state_to_be_compared\": [],\n    \"tot_type_mapping\": {\n        \"tot_type_id\": \"weekly_plan__tot_id\"\n    },\n    \"enable_call_finish_action\": true,\n    \"enable_coaching_finish_action\": true,\n    \"enable_allow_adjust\": false,\n    \"calendar_timeline\": {\n        \"every_day_range_time\": {\n            \"am\": [\n                \"09:00:00\",\n                \"12:00:00\"\n            ],\n            \"pm\": [\n                \"12:00:00\",\n                \"17:00:00\"\n            ]\n        },\n        \"unknown_max_minutes\": 30,\n        \"objects\": {\n            \"time_off_territory\": {\n                \"__default__\": {\n                    \"values\": {\n                        \"am\": [\n                            \"forenoon\"\n                        ],\n                        \"pm\": [\n                            \"afternoon\"\n                        ]\n                    },\n                    \"column_names\": [\n                        \"date\",\n                        \"ampm\"\n                    ],\n                    \"type\": \"full\"\n                }\n            },\n            \"coaching\": {\n                \"__default__\": {\n                    \"column_names\": [\n                        \"coaching_date\"\n                    ],\n                    \"type\": \"date\"\n                }\n            },\n            \"call\": {\n                \"__default__\": {\n                    \"column_names\": [\n                        \"call_date\",\n                        \"ampm\"\n                    ],\n                    \"type\": \"ampm\",\n                    \"values\": {\n                        \"am\": [\n                            \"am\"\n                        ],\n                        \"pm\": [\n                            \"pm\"\n                        ]\n                    }\n                }\n            },\n            \"event\": {\n                \"__default__\": {\n                    \"column_names\": [\n                        \"event_start_time\",\n                        \"event_end_time\"\n                    ],\n                    \"type\": \"range\"\n                },\n                \"cs_department\": {\n                    \"column_names\": [\n                        \"date_1\",\n                        \"picklist_2\"\n                    ],\n                    \"type\": \"ampm\",\n                    \"values\": {\n                        \"am\": [\n                            \"am\"\n                        ],\n                        \"pm\": [\n                            \"pm\"\n                        ]\n                    }\n                },\n               \"cs_patient_education_meeting\": {\n                    \"column_names\": [\n                        \"date_1\",\n                        \"picklist_2\"\n                    ],\n                    \"type\": \"ampm\",\n                    \"values\": {\n                        \"am\": [\n                            \"am\"\n                        ],\n                        \"pm\": [\n                            \"pm\"\n                        ]\n                    }\n                }\n            },\n            \"weekly_plan\": {\n                \"__default__\": {\n                    \"values\": {\n                        \"am\": [\n                            \"am\"\n                        ],\n                        \"pm\": [\n                            \"pm\"\n                        ]\n                    },\n                    \"column_names\": [\n                        \"date\",\n                        \"ampm\"\n                    ],\n                    \"type\": \"ampm\"\n                },\n                \"weekly_plan_coaching_plans\": {\n                    \"column_names\": [\n                        \"date\"\n                    ],\n                    \"type\": \"date\"\n                },\n                \"time_off_territory\": {\n                    \"type\": \"full\",\n                    \"column_names\": [\n                        \"date\",\n                        \"ampm\"\n                    ],\n                    \"values\": {\n                        \"am\": [\n                            \"am\"\n                        ],\n                        \"pm\": [\n                            \"pm\"\n                        ]\n                    }\n                }\n            }\n        }\n    }\n}' WHERE (`id` = '95');


-- 协访页面增加协访人字段
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_with_stars_mask`) VALUES ('6ff0e59d-bd7e-4fbe-bf61-ab45628fb1fc', '5b0d5c24-08fb-4101-bc0b-93a49e182f10', 'field', '3f01a411-75a3-11e6-969d-5cc5d4b571d2', '协访人', '6', '6', '0', '1', 'both', '0', '1', '2020-03-05 07:47:48', '1', '2020-04-09 07:38:14', '0');
-- 关闭周计划中代表点击状态
UPDATE `page_layout_fields` SET `disable_click` = '1' WHERE (`id` = '356cfg2d-g2ec-4a48-aae0-2f633a70a736');

-- 拜访限制只选择目标医生
UPDATE `object_filters` SET `external_condition` = 'from django.db import models as djm\nfrom orionbase.common import models\nfrom orionbase.common.orion_function import get_user\nfrom django.utils.timezone import  now\ndef get_condition(filter, dependency, **kwargs):\n    user = get_user()\n    position_ids = user.positions_ids\n    condition = djm.Q(pk__in=models.ProductMetrics.objects.filter(position_id__in=position_ids,version__name=now().strftime(\'%Y-%m\')).values_list(\'professional_id\', flat=True))\n    return condition', `external_condition_args` = NULL WHERE (`id` = '7eaeacc0-74b8-11e6-a5af-5cc5d4b571d2');
-- 删除协访计划页面的编辑按钮
UPDATE `page_layout_actions` SET `deleted` = '1' WHERE (`id` = '11110a5e-5f95-33e6-9c6d-5cc5d4d378cb');
-- 销量上报列表页排序
UPDATE `page_lists` SET `sort_field` = '487a6cb8-7895-4b48-8fda-e5df94359583', `is_desc` = '1' WHERE (`id` = '0bf3eb0b-2345-475a-bcb8-e04c08d12345');
-- 科室字段调整
UPDATE `object_fields` SET `number_scale` = '1' WHERE (`id` = '3622fe92-e7ce-4f0a-871e-563032ddf30b');
-- 删除代表和主管区域外时间menus
UPDATE menus_assignments ma
LEFT JOIN
    menus m ON m.id = ma.menu_id
SET
    ma.deleted = 1
WHERE
    ma.role_id in  ('53de6f5e-1da3-11e6-b011-5cc5d4b57134','b74845ad-b5fe-11ea-aab5-0215c63fce1a')
AND m.label = '区域外时间';
-- 病人教育会改为患者教育会
UPDATE `object_record_types` SET `label` = '患者教育会' WHERE (`id` = 'cffbdab8-101f-4775-96b7-3fa8baccd035');
UPDATE `object_record_types` SET `label` = '患者教育会(报告)' WHERE (`id` = 'cffbdab8-101f-4775-96b7-3fa8baccd036');
-- 代表工作tab中去除我的待办
UPDATE menus_assignments ma
LEFT JOIN
    menus m ON m.id = ma.menu_id
SET
    ma.deleted = 1
WHERE
    ma.role_id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134'
AND m.label = '我的待办';
-- 修改讲者管理列表页默认排序方式
UPDATE `page_lists` SET `sort_field` = '7596bb91-54fd-4141-a025-811985c331ab', `is_desc` = '0' WHERE (`id` = '627deed5-df83-11e9-b9aa-0298a739dwpz');
