-- 更新日程配置
UPDATE `page_layout_fields` SET `page_layout_id` = '1151g253-0252-4fdc-b7cf-718002d37fc0', `type` = 'field', `object_field_id` = '6fg13f5f-75a3-11e6-87d8-5cc5d4b571d2', `label` = '协访医生', `order` = 4, `colspan` = 6, `is_mandatory` = 1, `is_readonly` = 0, `display_mode` = 'both', `configurations` = NULL, `deleted` = 0, `created_by` = 1, `created_on` = '2020-10-10 13:15:37', `modified_by` = 1, `modified_on` = '2020-10-22 14:44:27', `is_header` = 0, `is_with_stars_mask` = NULL, `is_hidden` = NULL, `is_highlight` = 0, `if_affect_others` = NULL, `disable_click` = NULL, `note_field` = NULL, `hint_text` = NULL, `report_id` = NULL, `allow_dynamic_label` = NULL WHERE `id` = '078dfe6d-h3fd-4a48-aae0-2f633a70a736';


UPDATE `custom_settings` SET `deleted` = 0, `created_on` = '2020-08-17 07:23:51.746858', `modified_on` = '2020-08-17 07:23:51.746918', `key` = 'calendar_create_data_config', `value` = '[\r\n	{\r\n		\"fields\": [\r\n			{\r\n				\"type\": \"date\",\r\n				\"name\": \"call_date\"\r\n			}\r\n		],\r\n		\"object_name\": \"call\"\r\n	},\r\n	{\r\n		\"fields\": [\r\n			{\r\n				\"type\": \"date\",\r\n				\"name\": \"coaching_date\"\r\n			}\r\n		],\r\n		\"object_name\": \"coaching\"\r\n	},\r\n	{\r\n		\"fields\": [\r\n			{\r\n				\"type\": \"datetime\",\r\n				\"name\": \"event_start_time\",\r\n				\"time_tag\": \"start\"\r\n			},\r\n			{\r\n				\"type\": \"datetime\",\r\n				\"name\": \"event_end_time\",\r\n				\"time_tag\": \"end\"\r\n			}\r\n		],\r\n		\"record_type_config\": {\r\n			\"cs_patient_education_meeting\": {\r\n				\"fields_for_agenda\": [],\r\n				\"fields_for_plan\": [\r\n					{\r\n						\"type\": \"datetime\",\r\n						\"name\": \"event_start_time\",\r\n						\"time_tag\": \"start\"\r\n					},\r\n					{\r\n						\"type\": \"datetime\",\r\n						\"name\": \"end_time\",\r\n						\"time_tag\": \"end\"\r\n					}\r\n				]\r\n			},\r\n			\"cs_department\": {\r\n				\"fields_for_agenda\": []\r\n			}\r\n		},\r\n		\"object_name\": \"event\"\r\n	},\r\n	{\r\n		\"fields\": [\r\n			{\r\n				\"type\": \"datetime\",\r\n				\"name\": \"start_time\",\r\n				\"time_tag\": \"start\"\r\n			},\r\n			{\r\n				\"type\": \"datetime\",\r\n				\"name\": \"end_time\",\r\n				\"time_tag\": \"end\"\r\n			}\r\n		],\r\n		\"record_type_config\": {\r\n			\"weekly_plan_call_plans\": {\r\n				\"fields_for_agenda\": [],\r\n				\"fields_for_plan\": [\r\n					{\r\n						\"type\": \"datetime\",\r\n						\"name\": \"start_time\",\r\n						\"time_tag\": \"start\"\r\n					},\r\n					{\r\n						\"type\": \"datetime\",\r\n						\"name\": \"end_time\",\r\n						\"time_tag\": \"end\"\r\n					}\r\n				]\r\n			 },\r\n			\"weekly_plan_coaching_plans\": {\r\n				\"fields_for_agenda\": [{\r\n						\"type\": \"date\",\r\n						\"name\": \"coaching_date\"\r\n					}],\r\n				\"fields_for_plan\": [\r\n				]\r\n			 }\r\n			},\r\n		\"object_name\": \"weekly_plan\"\r\n	},\r\n	{\r\n		\"fields\": [\r\n			{\r\n				\"type\": \"date\",\r\n				\"name\": \"date\"\r\n			}\r\n		],\r\n		\"object_name\": \"time_off_territory\"\r\n	}\r\n]', `created_by` = 1, `modified_by` = 1, `position_id` = NULL, `description` = '新建日程配置', `type` = 'json', `module_id` = 'schedule' WHERE `id` = 120;

UPDATE `custom_settings` SET `deleted` = 0, `created_on` = '2020-02-05 07:31:40.655174', `modified_on` = '2020-02-05 07:31:40.655270', `key` = 'calendar_display_mode_setting', `value` = '{\r\n	\"enable_weekly_plan\": true,\r\n	\"enable_differential_display\": true,\r\n	\"call_state_to_be_compared\": [],\r\n	\"tot_state_to_be_compared\": [],\r\n	\"tot_type_mapping\": {\r\n		\"tot_type_id\": \"weekly_plan__tot_id\"\r\n	},\r\n	\"enable_call_finish_action\": true,\r\n	\"enable_coaching_finish_action\": true,\r\n	\"enable_allow_adjust\": false,\r\n	\"calendar_timeline\": {\r\n		\"every_day_range_time\": {\r\n			\"am\": [\r\n				\"07:00:00\",\r\n				\"12:00:00\"\r\n			],\r\n			\"pm\": [\r\n				\"12:00:00\",\r\n				\"19:00:00\"\r\n			]\r\n		},\r\n		\"unknown_max_minutes\": 30,\r\n		\"objects\": {\r\n			\"time_off_territory\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"forenoon\"\r\n						],\r\n						\"pm\": [\r\n							\"afternoon\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"full\"\r\n				}\r\n			},\r\n			\"coaching\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"coaching_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"call\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"call_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"event\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"event_start_time\",\r\n						\"event_end_time\"\r\n					],\r\n					\"type\": \"range\"\r\n				}\r\n			},\r\n			\"weekly_plan\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"ampm\"\r\n				},\r\n				\"weekly_plan_coaching_plans\": {\r\n					\"column_names\": [\r\n						\"date\"\r\n					],\r\n					\"type\": \"date\"\r\n				},\r\n				\"time_off_territory\": {\r\n					\"type\": \"full\",\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					}\r\n				}\r\n			}\r\n		}\r\n	}\r\n}', `created_by` = 1, `modified_by` = 1, `position_id` = NULL, `description` = '日程显示方式设置', `type` = 'json', `module_id` = 'schedule' WHERE `id` = 95;

INSERT INTO `page_layout_actions`(`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`, `configurations`, `label`) VALUES ('56780a5e-5f95-44f7-9c6d-5cc5d4d378cb', '1151g253-0252-4fdc-b7cf-718002d37fc0', 'b0f12252-8890-47ea-9aba-d606f21640b7', 'edit', 4, 0, 1, '2020-10-22 14:55:05', 1, '2020-10-22 14:55:05', NULL, 0, NULL, NULL, NULL);

UPDATE `custom_settings` SET `deleted` = 0, `created_on` = '2020-02-05 07:31:40.655174', `modified_on` = '2020-02-05 07:31:40.655270', `key` = 'calendar_display_mode_setting', `value` = '{\r\n	\"enable_weekly_plan\": true,\r\n	\"enable_differential_display\": true,\r\n	\"call_state_to_be_compared\": [\"585cb58f-7408-11e6-934d-5cc5d4b571d2\"],\r\n	\"tot_state_to_be_compared\": [],\r\n	\"tot_type_mapping\": {\r\n		\"tot_type_id\": \"weekly_plan__tot_id\"\r\n	},\r\n	\"enable_call_finish_action\": true,\r\n	\"enable_coaching_finish_action\": true,\r\n	\"enable_allow_adjust\": false,\r\n	\"calendar_timeline\": {\r\n		\"every_day_range_time\": {\r\n			\"am\": [\r\n				\"07:00:00\",\r\n				\"12:00:00\"\r\n			],\r\n			\"pm\": [\r\n				\"12:00:00\",\r\n				\"19:00:00\"\r\n			]\r\n		},\r\n		\"unknown_max_minutes\": 30,\r\n		\"objects\": {\r\n			\"time_off_territory\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"forenoon\"\r\n						],\r\n						\"pm\": [\r\n							\"afternoon\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"full\"\r\n				}\r\n			},\r\n			\"coaching\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"coaching_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"call\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"call_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"event\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"event_start_time\",\r\n						\"event_end_time\"\r\n					],\r\n					\"type\": \"range\"\r\n				}\r\n			},\r\n			\"weekly_plan\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"ampm\"\r\n				},\r\n				\"weekly_plan_coaching_plans\": {\r\n					\"column_names\": [\r\n						\"date\"\r\n					],\r\n					\"type\": \"date\"\r\n				},\r\n				\"time_off_territory\": {\r\n					\"type\": \"full\",\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					}\r\n				}\r\n			}\r\n		}\r\n	}\r\n}', `created_by` = 1, `modified_by` = 1, `position_id` = NULL, `description` = '日程显示方式设置', `type` = 'json', `module_id` = 'schedule' WHERE `id` = 95;

UPDATE `custom_settings` SET `deleted` = 0, `created_on` = '2020-02-05 07:31:40.655174', `modified_on` = '2020-02-05 07:31:40.655270', `key` = 'calendar_display_mode_setting', `value` = '{\r\n	\"enable_weekly_plan\": true,\r\n	\"enable_differential_display\": true,\r\n	\"call_state_to_be_compared\": [\"585cb58f-7408-11e6-934d-5cc5d4b571d2\"],\r\n	\"tot_state_to_be_compared\": [],\r\n	\"tot_type_mapping\": {\r\n		\"tot_type_id\": \"weekly_plan__tot_id\"\r\n	},\r\n	\"enable_call_finish_action\": true,\r\n	\"enable_coaching_finish_action\": true,\r\n	\"enable_allow_adjust\": false,\r\n	\"calendar_timeline\": {\r\n		\"every_day_range_time\": {\r\n			\"am\": [\r\n				\"08:00:00\",\r\n				\"12:00:00\"\r\n			],\r\n			\"pm\": [\r\n				\"12:00:00\",\r\n				\"17:00:00\"\r\n			]\r\n		},\r\n		\"unknown_max_minutes\": 30,\r\n		\"objects\": {\r\n			\"time_off_territory\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"forenoon\"\r\n						],\r\n						\"pm\": [\r\n							\"afternoon\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"full\"\r\n				}\r\n			},\r\n			\"coaching\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"coaching_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"call\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"call_date\"\r\n					],\r\n					\"type\": \"date\"\r\n				}\r\n			},\r\n			\"event\": {\r\n				\"__default__\": {\r\n					\"column_names\": [\r\n						\"event_start_time\",\r\n						\"event_end_time\"\r\n					],\r\n					\"type\": \"range\"\r\n				}\r\n			},\r\n			\"weekly_plan\": {\r\n				\"__default__\": {\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					},\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"type\": \"ampm\"\r\n				},\r\n				\"weekly_plan_coaching_plans\": {\r\n					\"column_names\": [\r\n						\"date\"\r\n					],\r\n					\"type\": \"date\"\r\n				},\r\n				\"time_off_territory\": {\r\n					\"type\": \"full\",\r\n					\"column_names\": [\r\n						\"date\",\r\n						\"ampm\"\r\n					],\r\n					\"values\": {\r\n						\"am\": [\r\n							\"am\"\r\n						],\r\n						\"pm\": [\r\n							\"pm\"\r\n						]\r\n					}\r\n				}\r\n			}\r\n		}\r\n	}\r\n}', `created_by` = 1, `modified_by` = 1, `position_id` = NULL, `description` = '日程显示方式设置', `type` = 'json', `module_id` = 'schedule' WHERE `id` = 95;

UPDATE `cs_standardization_implementation` SET `description` = '协访数据',`module_label` = '协访管理' WHERE `id` = 22;
UPDATE `custom_labels` SET `label_value` = '确定要取消协访吗？' WHERE `id` = 170;
UPDATE `custom_labels` SET `label_value` = '不允许选择多种协访类型' WHERE `id` = 171;
UPDATE `custom_labels` SET `label_value` = '请选择协访对象' WHERE `id` = 172;
UPDATE `custom_labels` SET `label_value` = '步骤三：选择协访类型' WHERE `id` = 178;
UPDATE `custom_labels` SET `label_value` = '不允许选择多个协访' WHERE `id` = 182;
UPDATE `custom_labels` SET `label_value` = '请选择协访活动' WHERE `id` = 183;
UPDATE `custom_labels` SET `label_value` = '不允许选择多个协访' WHERE `id` = 184;
UPDATE `custom_labels` SET `label_value` = '只能协访同一天的活动' WHERE `id` = 188;
UPDATE `custom_labels` SET `label_value` = '协访统计' WHERE `id` = 306;
UPDATE `custom_labels` SET `label_value` = '协访次数' WHERE `id` = 307;
UPDATE `custom_labels` SET `label_value` = '协访次数/目标协访次数' WHERE `id` = 316;
UPDATE `custom_labels` SET `label_value` = '协访天数' WHERE `id` = 367;
UPDATE `custom_labels` SET `label_value` = '去协访' WHERE `id` = 417;


UPDATE `custom_settings` SET `description` = '\n日程页面展示字段的定义。\n\n协访选择活动列表页面也根据该定义展示字段' WHERE `id` = 18;
UPDATE `custom_settings` SET `description` = '能被协访的角色role' WHERE `id` = 33;
UPDATE `custom_settings` SET `description` = '新建协访时是否隐藏已经有协访的协访' WHERE `id` = 86;
UPDATE `custom_settings` SET `description` = '是否允许多上级协访同一个协访或者拜访' WHERE `id` = 111;

UPDATE `object_fields` SET `label` = '协访人岗位名称' WHERE `id` = '1caab0d8-b3d6-4750-8ebe-e6dbb7bd987d';
UPDATE `object_fields` SET `label` = '协访-目标数', `description` = '绩效指标，协访目标数' WHERE `id` = '1ff5fdd4-e218-40b8-9331-2bb2ad4ad1e3';
UPDATE `object_fields` SET `label` = '协访类型' WHERE `id` = '216e9a01-12d5-11e7-b868-e4b318c6b596';
UPDATE `object_fields` SET `label` = '协访-目标数', `description` = '绩效指标，协访目标数' WHERE `id` = '30c05e00-636e-4b23-87fd-7a78328f6c84';
UPDATE `object_fields` SET `label` = '协访类型' WHERE `id` = '3d60290f-75a3-11e6-94b0-5cc5d4b571d2';
UPDATE `object_fields` SET `label` = '协访时间', `description` = '协访时间' WHERE `id` = '3d8d2c80-75a3-11e6-8c30-5cc5d4b571d2';
UPDATE `object_fields` SET `label` = '上次协访', `description` = '上次协访' WHERE `id` = '3da96711-75a3-gerh-b4a4-5cc5d4b571d2';
UPDATE `object_fields` SET `label` = '协访人岗位名称' WHERE `id` = '3f1245e1-75a3-11e6-8886-5cc5d4b571d2';
UPDATE `object_fields` SET `label` = '协访人上级' WHERE `id` = '5049e063-b95c-465e-9e54-e914651dab2a';
UPDATE `object_fields` SET `label` = '关联协访', `description` = '拜访关联的协访' WHERE `id` = '5c6c6230-7f10-11e6-a632-5cc5d4b571d2';
UPDATE `object_fields` SET `label` = '关联协访', `description` = '关联协访' WHERE `id` = '6581ce91-5c7e-11e7-9e26-34f39ab71988';
UPDATE `object_fields` SET `label` = '目标协访' WHERE `id` = '8238759a-a413-49fd-b158-6d4085befc85';
UPDATE `object_fields` SET `label` = '协访类型' WHERE `id` = '9ee3fb2f-12d3-11e7-9104-e4b318c6b596';
UPDATE `object_fields` SET `label` = '协访类型' WHERE `id` = 'a42b302f-12d4-11e7-b8b7-e4b318c6b596';
UPDATE `object_fields` SET `label` = '协访类型' WHERE `id` = 'bde2e5df-12d4-11e7-a9e2-e4b318c6b596';
UPDATE `object_fields` SET `label` = '协访' WHERE `id` = 'c4c2576a-e3ae-4912-9e51-a33483c72e8a';
UPDATE `object_fields` SET `label` = '关联协访', `description` = '关联协访' WHERE `id` = 'c86d6791-5c7d-11e7-8b8b-34f39ab71988';


UPDATE `object_record_types` SET `label` = '经理协访' WHERE `id` = '3a07b58f-5bed-11e7-8275-34f39ab71988';
UPDATE `object_record_types` SET `label` = '会议协访' WHERE `id` = '3a5671cf-5bed-11e7-921b-34f39ab71988';
UPDATE `object_record_types` SET `label` = '普通协访' WHERE `id` = '441d51b0-75a3-11e6-a00a-5cc5d4b571d2';
UPDATE `object_record_types` SET `label` = '机构协访' WHERE `id` = '5b552ca9-2439-4838-827a-a691e709aff6';


UPDATE `object_relations` SET `label` = '拜访的协访' WHERE `id` = '3375e786-92b6-44ee-a305-3676091699a3';
UPDATE `object_relations` SET `label` = '会议协访' WHERE `id` = '8ac85487-a166-4584-87a4-ad68c9c25bd7';

UPDATE `object_validations` SET `error_message` = '该拜访已经被协访，不能删除' WHERE `id` = '71b52c61-7f0d-11e6-a4a2-5cc5d4b571d2';

UPDATE `objects` SET `label` = '协访报告' WHERE `id` = '3bb97df0-75a3-11e6-b1d3-5cc5d4b571d2';
UPDATE `objects` SET `label` = '协访关系', `description` = '协访目标，会议，拜访，协访' WHERE `id` = '6aa99d80-37b6-4158-804d-981dc51b564f';

UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '00132974-1fde-483f-b788-a0b2b9fa67ea';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = '14670a4f-eb44-11e8-b6c8-02f90e0f46f0';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = '1a16c830-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = '1a171cea-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '1a171e79-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = '1a172b94-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '1f475682-eb44-11e8-b6c8-02f90e0f46f0';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = '2701982d-6483-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = '27019af4-6483-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '27019bfc-6483-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人岗位名称' WHERE `id` = '27019e38-6483-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = '2701a29a-6483-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = '28df1076-bd9a-4416-81b6-4939206ae0a6';
UPDATE `page_layout_fields` SET `label` = '上一次协访' WHERE `id` = '2d3b02e1-gwed-fweg-96f2-5cc5d4b571d2';
UPDATE `page_layout_fields` SET `label` = '协访时间' WHERE `id` = '2f40e500-78b3-11e6-a678-5cc5d4b571d2';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = '3a9e72e4-5072-11e9-99c4-02f90e0f46f0';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '3a9e8916-5072-11e9-99c4-02f90e0f46f0';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = '3c784d90-8574-4df6-bb98-d788c875a2bb';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '3e9313b0-8727-11e7-a3db-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = '700d4f38-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = '700d522b-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '700d531b-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = '700dd84d-6481-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = '867c0ade-cae3-4296-9956-8e66ba59ccb3';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = '881648c6-57bf-4875-95a3-da23fc7901e8';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = 'ba97f900-8635-11e7-92dc-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'c004c901-b3c7-4eaa-947b-95a4c54805ba';
UPDATE `page_layout_fields` SET `label` = '协访时间' WHERE `id` = 'dac4ec1e-8625-11e7-92f0-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '上一次协访' WHERE `id` = 'dac98003-8625-11e7-917b-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = 'dac98012-8625-11e7-a6bc-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = 'dac98013-8625-11e7-a190-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = 'dac98014-8625-11e7-bc93-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '上一次协访' WHERE `id` = 'dac98025-8625-11e7-b8e7-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访时间' WHERE `id` = 'dac98026-8625-11e7-9642-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = 'dac98039-8625-11e7-a25c-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = 'dac9803a-8625-11e7-958f-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = 'dac98043-8625-11e7-9989-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'dac98044-8625-11e7-ba4b-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '上一次协访' WHERE `id` = 'dac9804b-8625-11e7-8c38-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访时间' WHERE `id` = 'dac9804c-8625-11e7-ae04-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = 'dac9805f-8625-11e7-9064-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = 'dac98060-8625-11e7-9291-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = 'dac98061-8625-11e7-9a2c-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = 'dac98069-8625-11e7-a72d-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'dac9806a-8625-11e7-9d8b-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '上一次协访' WHERE `id` = 'dac98071-8625-11e7-8b9d-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访时间' WHERE `id` = 'dac98072-8625-11e7-b16a-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = 'dac98084-8625-11e7-96ae-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = 'dac98085-8625-11e7-82d2-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = 'dac9808e-8625-11e7-b30c-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'dac9808f-8625-11e7-9bc4-34f39ab71988';
UPDATE `page_layout_fields` SET `label` = '协访状态' WHERE `id` = 'dd33d69c-6482-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访日期' WHERE `id` = 'dd33d98d-6482-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = 'dd33da8d-6482-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人' WHERE `id` = 'dd3456f7-6482-11e7-9a65-02b9cf3f3fde';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'e4aa4867-e1dc-4d84-b9ea-a8e8c6e2d188';
UPDATE `page_layout_fields` SET `label` = '被协访人岗位' WHERE `id` = 'f87a3284-ad2d-4e6a-a1b0-d4ee10f79736';
UPDATE `page_layout_fields` SET `label` = '协访人' WHERE `id` = 'fe37cc4a-4186-4cba-a2bb-8c9a36c5d11f';

UPDATE `page_list_fields` SET `label` = '协访类型' WHERE `id` = '48f0f9d1-75a3-11e6-b5f9-5cc5d4b571d2';

UPDATE `pages` SET `label` = '协访管理' WHERE `id` = '44749970-75a3-11e6-8bca-5cc5d4b571d2';
UPDATE `pages` SET `label` = '协访' WHERE `id` = '447cafc0-75a3-11e6-ae66-5cc5d4b571d2';
UPDATE `pages` SET `label` = '协访关系详情' WHERE `id` = '991b03ba-0d6b-41eb-a2c3-00aeafecf051';
UPDATE `pages` SET `label` = '协访关系' WHERE `id` = 'ed941767-fbc4-4d60-b71f-596cc72cbd40';

UPDATE `report_groups` SET `label` = '协访' WHERE `id` = 'f1eb5877-eabc-442c-adb1-a4104f33a3ce';

UPDATE `reports` SET `name` = '首页报表--协访报表之协访次数/目标协访次数' WHERE `id` = '6b8ab0e3-1294-4dbd-bc6a-107bc8e70dd4';
UPDATE `reports` SET `name` = '协访统计' WHERE `id` = '72bfbfb5-2856-4f2b-9843-e07f7e469b09';
UPDATE `reports` SET `name` = '首页报表--协访天数' WHERE `id` = 'd1d994fb-eed6-4a4b-bf6d-49774c23e267';
UPDATE `reports` SET `name` = '协访分析' WHERE `id` = 'demo06lt-dd84-11e6-94c1-88bcc771dfc3';
UPDATE `reports` SET `name` = '首页报表--协访报表之覆盖下属数/全部下属数' WHERE `id` = 'ffbfbfb5-2856-4f2b-9843-e07f7e469b09';
