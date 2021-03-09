


update daily_reported_data co15 

left join positions ps1 on ps1.id = co15.position_id
left join user_positions up1 on up1.position_id = ps1.id
left join orion_users ou1 on ou1.user_id = up1.user_id

left join positions ps2 on ps2.id = ps1.parent_id
left join user_positions up2 on up2.position_id = ps2.id
left join orion_users ou2 on ou2.user_id = up2.user_id

left join positions ps3 on ps3.id = ps2.parent_id
left join user_positions up3 on up3.position_id = ps3.id
left join orion_users ou3 on ou3.user_id = up3.user_id

left join positions ps4 on ps4.id = ps3.parent_id
left join user_positions up4 on up4.position_id = ps4.id
left join orion_users ou4 on ou4.user_id = up4.user_id


left join positions ps5 on ps5.id = ps4.parent_id
left join user_positions up5 on up5.position_id = ps5.id
left join orion_users ou5 on ou5.user_id = up5.user_id

left join positions ps6 on ps6.id = ps5.parent_id
left join user_positions up6 on up6.position_id = ps6.id
left join orion_users ou6 on ou6.user_id = up6.user_id

set 

  co15.text_7 = (case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43941801' then ou1.name
    else '' end )

  ,co15.text_6 = (case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43941801' then ps1.name
    else '' end )

   -- sup
  ,co15.text_1=(case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43941805' then ou1.name
    when ps2.level_id = 'e30fda45-3935-11e7-9202-784f43941805' then ou2.name
    else '' end )
  ,co15.text_10=(case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43941805' then ps1.name
    when ps2.level_id = 'e30fda45-3935-11e7-9202-784f43941805' then ps2.name
    else '' end )
    
   -- dsm
  ,co15.text_15=(case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ou1.name
    when ps2.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ou2.name
    when ps3.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ou3.name
    else '' end )
  ,co15.text_11=(case 
    when ps1.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ps1.name
    when ps2.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ps2.name
    when ps3.level_id = 'e30fda45-3935-11e7-9202-784f43949f5b' then ps3.name
    else '' end )
    
    
   -- rsm
  ,co15.text_4=(case 
    when ps1.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ou1.name
    when ps2.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ou2.name
    when ps3.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ou3.name
    when ps4.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ou4.name
    else '' end )
  ,co15.text_18=(case 
    when ps1.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ps1.name
    when ps2.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ps2.name
    when ps3.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ps3.name
    when ps4.level_id = 'deeb13de-3935-11e7-bfbd-784f43949f5b' then ps4.name
    else '' end )
    

   -- rsd
  ,co15.text_17=(case 
  when ps1.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ou1.name
  when ps2.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ou2.name
  when ps3.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ou3.name
  when ps4.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ou4.name
  when ps5.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ou5.name
  else '' end )
  ,co15.text_20=(case 
  when ps1.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ps1.name
  when ps2.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ps2.name
  when ps3.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ps3.name
  when ps4.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ps4.name
  when ps5.level_id = 'd9852842-3935-11e7-882b-784f43949f5b' then ps5.name
  else '' end )
  
   -- vp
  ,co15.text_8=(case 
  when ps1.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou1.name
  when ps2.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou2.name
  when ps3.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou3.name
  when ps4.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou4.name
  when ps5.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou5.name
  when ps6.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ou6.name
  else '' end )
  ,co15.text_9=(case 
  when ps1.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps1.name
  when ps2.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps2.name
  when ps3.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps3.name
  when ps4.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps4.name
  when ps5.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps5.name
  when ps6.level_id = 'de1a77e5-e5bf-11ea-bc49-0215c63f1715' then ps6.name
  else '' end )
where
  co15.deleted = 0;


UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_9', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:57' WHERE `id`='1f323b69-da2a-4fef-88af-fd1d6b9addcc' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_15', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:11', `modified_by`='1', `modified_on`='2020-12-10 03:21:53' WHERE `id`='6fd69a60-7858-4acc-9c9d-aef7e6731837' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_17', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:29' WHERE `id`='7bb7d7e8-bb22-4203-b12e-a84fb868f941' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_11', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:02' WHERE `id`='83bb2fbd-a7ef-43e9-91ca-1d12c51a0b49' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_6', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:23:22' WHERE `id`='8bcea9a6-c467-4c95-8310-57a2ad4169e1' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_18', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:11', `modified_by`='1', `modified_on`='2020-12-10 03:24:22' WHERE `id`='9afc1d3c-c75a-4f43-abae-1a5442cd1005' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_4', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:13' WHERE `id`='9da0089c-c055-4866-81b1-4149f8e52c53' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_20', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:40' WHERE `id`='a4c03475-229a-49a0-9dd7-315a94fdfb89' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_10', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:23:39' WHERE `id`='a80b481c-ca3b-45d4-97ea-44a969432006' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_7', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:21:17' WHERE `id`='cd36c598-bff5-43c0-b482-4371568ffc5f' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_1', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:21:36' WHERE `id`='cfb57b5f-464c-4b15-934d-6558ed574427' LIMIT 1 ;
UPDATE `object_database_columns` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `name`='text_8', `type`='text', `used`='1', `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:49' WHERE `id`='da8c9593-e231-4657-9485-aaa48d1bf278' LIMIT 1 ;
INSERT INTO `object_fields`(`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`, `allow_dynamic_label`) VALUES ('02bfda07-909b-4a08-b097-4eb4c269db9d', '72a74a32-1996-4ea8-8b81-07e261f4aa83', NULL, 'cs_hospital_province', 'cs省份(医院)', NULL, 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '2020-12-10 03:19:19', '1', '2020-12-10 03:20:04', NULL, NULL, '{"refer_field":{"path":"account.hospital.geo_province","type":"text"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '0') ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='cd36c598-bff5-43c0-b482-4371568ffc5f', `name`='cs_mic_user_name', `label`='cs代表', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:21:17', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='060ce7cf-c416-475f-82f0-87f924db5d89' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='cfb57b5f-464c-4b15-934d-6558ed574427', `name`='cs_sup_user_name', `label`='cs主管', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:21:36', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='0c94af27-a86e-4123-acc3-232750ced57d' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='6fd69a60-7858-4acc-9c9d-aef7e6731837', `name`='cs_dsm_user_name', `label`='cs地区经理', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:11', `modified_by`='1', `modified_on`='2020-12-10 03:21:53', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='0d953855-428d-4763-b33f-9cfe499e8b32' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='9da0089c-c055-4866-81b1-4149f8e52c53', `name`='cs_rsm_user_name', `label`='cs大区经理', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:13', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='200b0458-c2d6-4949-9247-aefffd2e67b3' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='7bb7d7e8-bb22-4203-b12e-a84fb868f941', `name`='cs_rsd_user_name', `label`='cs大区总监', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:29', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='2abb4658-cee9-497d-abfe-8eb790c85313' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='da8c9593-e231-4657-9485-aaa48d1bf278', `name`='cs_vp_user_name', `label`='cs销售总监', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:22:49', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='3320e540-5b23-45c1-94aa-a0a1a69f1f56' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='8bcea9a6-c467-4c95-8310-57a2ad4169e1', `name`='cs_mic_position_name', `label`='cs代表岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:23:22', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='340b31f7-30d1-42b8-83f9-8e6fb42b8d18' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='a80b481c-ca3b-45d4-97ea-44a969432006', `name`='cs_sup_position_name', `label`='cs主管岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:23:39', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='36f696f2-8573-4a7e-abe2-7cd7398838dd' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='83bb2fbd-a7ef-43e9-91ca-1d12c51a0b49', `name`='cs_dsm_position_name', `label`='cs地区经理岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:02', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='39b4f240-705b-403f-ba95-cd2b5f7a00f1' LIMIT 1 ;
INSERT INTO `object_fields`(`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`, `allow_dynamic_label`) VALUES ('478192c5-cf3a-427f-a310-7626b609fa95', '72a74a32-1996-4ea8-8b81-07e261f4aa83', NULL, 'cs_hospital_city', 'cs城市(医院)', NULL, 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '2020-12-10 03:19:56', '1', '2020-12-10 03:19:56', NULL, NULL, '{"refer_field": {"path": "account.hospital.geo_city", "type": "text"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '0') ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='9afc1d3c-c75a-4f43-abae-1a5442cd1005', `name`='cs_rsm_position_name', `label`='cs大区经理岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:11', `modified_by`='1', `modified_on`='2020-12-10 03:24:22', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='41a65d02-38aa-483a-9732-976e61b03dbf' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='a4c03475-229a-49a0-9dd7-315a94fdfb89', `name`='cs_rsd_position_name', `label`='cs大区总监岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:40', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='66beb979-d7e2-456d-b23b-b102fcb88d48' LIMIT 1 ;
UPDATE `object_fields` SET `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `object_database_column_id`='1f323b69-da2a-4fef-88af-fd1d6b9addcc', `name`='cs_vp_position_name', `label`='cs销售总监岗位', `description`=NULL, `source`='custom', `type`='standard', `target_display_mode`='all', `target_screen_size`='both', `text_max_length`='50', `text_default`=NULL, `number_scale`=NULL, `number_default`=NULL, `boolean_default`=NULL, `picklist_id`=NULL, `picklist_type`=NULL, `lookup_object_id`=NULL, `formula`=NULL, `formula_dependent_fields`=NULL, `help_text`=NULL, `embedded_text`=NULL, `deleted`='0', `created_by`='1', `created_on`='2018-11-30 06:18:12', `modified_by`='1', `modified_on`='2020-12-10 03:24:57', `lookup_filter_id`=NULL, `lookup_filter_dependency_field_id`=NULL, `configurations`=NULL, `import_order`='0', `is_key`='0', `mandatory`='0', `sample_value`=NULL, `import_type`=NULL, `max_value`=NULL, `min_value`=NULL, `text_type`='text', `depending_on`=NULL, `regexp_validation_msg`=NULL, `regexp_validation`=NULL, `text_style`=NULL, `is_from_survey`=NULL, `survey_id`=NULL, `import_label`=NULL, `allow_filter`='1', `allow_sort`='1', `number_separator`=NULL, `text_style_on_regex`=NULL, `support_voice`=NULL, `hint_text`=NULL, `report_id`=NULL, `allow_dynamic_label`='0' WHERE `id`='6eb54b10-5e87-471f-afb6-1c9f5513b89d' LIMIT 1 ;
INSERT INTO `object_fields`(`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`, `allow_dynamic_label`) VALUES ('9088eae3-6328-4852-a880-68491d91c9c5', '72a74a32-1996-4ea8-8b81-07e261f4aa83', NULL, 'cs_hospital_code', 'cs医院编码', NULL, 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '2020-12-10 03:17:41', '1', '2020-12-10 03:17:41', NULL, NULL, '{"refer_field": {"path": "account.hospital.external_id", "type": "text"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '0') ;
INSERT INTO `object_fields`(`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`, `allow_dynamic_label`) VALUES ('e4e30149-d6ec-4650-90ba-c9474494e42b', '72a74a32-1996-4ea8-8b81-07e261f4aa83', NULL, 'cs_hospital_text_3', 'cs大区(医院)', NULL, 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '2020-12-10 03:18:29', '1', '2020-12-10 03:18:29', NULL, NULL, '{"refer_field": {"path": "account.hospital.text_3", "type": "text"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '0') ;
UPDATE `page_lists` SET `page_id`='f0f6ac31-70b1-4a77-90bd-6c1824e47abc', `name`='daily_reported_data_list_l', `query_type`='rls', `source`='custom', `label`='日报人数记录', `screen_size`='large', `formula`=NULL, `sort_field`='665b94e4-82a8-4b23-90f7-538549e6dd91', `is_desc`='1', `deleted`='0', `created_by`='1', `created_on`='2020-03-02 03:16:42', `modified_by`='1', `modified_on`='2020-12-10 03:29:35', `is_readonly`='0', `style`=NULL, `detail_disabled`='0', `configurations`='{}', `aggregate_field`=NULL, `owner`=NULL, `primary_filter`=NULL, `report_id`=NULL, `primary_filter_configurations`=NULL, `external_condition`=NULL, `db_hint`=NULL, `mode`=NULL WHERE `id`='5d7cd557-34f5-4c6d-6789-14c43326ade9' LIMIT 1 ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('007821ff-a509-4985-aa3a-66153c449955', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '200b0458-c2d6-4949-9247-aefffd2e67b3', '大区经理', '15', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('167409b1-e047-4a89-88fc-37a74412c64d', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '2abb4658-cee9-497d-abfe-8eb790c85313', '大区总监', '16', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('1f2e06dd-d311-475a-b237-35f4857976c8', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '0c94af27-a86e-4123-acc3-232750ced57d', '主管', '13', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('1fd9f351-180f-413e-8418-a4ebc8c7f367', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '6eb54b10-5e87-471f-afb6-1c9f5513b89d', '销售总监岗位', '23', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('226ab84b-02b8-410f-b579-c3f31afb7090', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '02bfda07-909b-4a08-b097-4eb4c269db9d', '省份(医院)', '5', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('32744dd8-d680-432c-b895-8e1f3ab06487', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '478192c5-cf3a-427f-a310-7626b609fa95', '城市(医院)', '6', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('3bdc5578-05dd-49ec-b3fe-4d0a9f8c5a13', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '3320e540-5b23-45c1-94aa-a0a1a69f1f56', '销售总监', '17', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('3c1065bb-8081-44ac-be02-63db85ef75d8', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '9088eae3-6328-4852-a880-68491d91c9c5', '医院编码', '3', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('52c32e85-83aa-4cf9-8815-8558ee0d4c46', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '66beb979-d7e2-456d-b23b-b102fcb88d48', '大区总监岗位', '22', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('701c56c7-10b2-438f-b5da-7a93f73ed394', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '060ce7cf-c416-475f-82f0-87f924db5d89', '代表', '12', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('76d105dd-2d94-4249-807e-a135070780b1', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '36f696f2-8573-4a7e-abe2-7cd7398838dd', '主管岗位', '19', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('8167bac2-8b99-4343-91a1-37c8060fc851', '5d7cd557-34f5-4c6d-6789-14c43326ade9', 'e4e30149-d6ec-4650-90ba-c9474494e42b', '大区(医院)', '4', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('af8e282d-0da9-4452-8130-b66b95f537aa', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '0d953855-428d-4763-b33f-9cfe499e8b32', '地区经理', '14', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('b4341c9a-0c8a-46ee-8f03-7e9b8da7a5e7', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '39b4f240-705b-403f-ba95-cd2b5f7a00f1', '地区经理岗位', '20', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('c8de10cb-aa5f-4911-9285-f9990bd1bd1f', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '340b31f7-30d1-42b8-83f9-8e6fb42b8d18', '代表岗位', '18', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
-- INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES ('e174eda6-6114-454d-8577-4457b9f1fe82', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '41a65d02-38aa-483a-9732-976e61b03dbf', '大区经理岗位', '21', '120', '1', '0', '1', NULL, '0', '1', '2020-12-10 03:29:35', '1', '2020-12-10 03:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
UPDATE `page_list_fields` SET `page_list_id`='5d7cd557-34f5-4c6d-6789-14c43326ade9', `object_field_id`='aa0764dc-eff7-4586-a446-d93576cc6033', `label`='医生', `order`='7', `width`='120', `allow_filter`='1', `allow_sort`='1', `is_default`='1', `configurations`=NULL, `deleted`='0', `created_by`='1', `created_on`='2020-08-24 15:05:15', `modified_by`='1', `modified_on`='2020-12-10 03:29:34', `is_mandatory`=NULL, `is_readonly`=NULL, `is_title`=NULL, `values_in_filter`=NULL, `aggregate_func`=NULL, `display_mode`=NULL, `is_group`=NULL, `disable_click`=NULL, `allow_dynamic_label`=NULL WHERE `id`='16e21d31-356b-407f-97ed-28d046ccc46a' LIMIT 1 ;
UPDATE `page_list_fields` SET `page_list_id`='5d7cd557-34f5-4c6d-6789-14c43326ade9', `object_field_id`='61929869-a820-49bd-a134-dbd67de2b311', `label`='日报人数', `order`='8', `width`='120', `allow_filter`='1', `allow_sort`='1', `is_default`='1', `configurations`=NULL, `deleted`='0', `created_by`='1', `created_on`='2020-08-24 15:05:15', `modified_by`='1', `modified_on`='2020-12-10 03:29:34', `is_mandatory`=NULL, `is_readonly`=NULL, `is_title`=NULL, `values_in_filter`=NULL, `aggregate_func`=NULL, `display_mode`=NULL, `is_group`=NULL, `disable_click`=NULL, `allow_dynamic_label`=NULL WHERE `id`='5a6bf72b-367a-4036-806c-390a564f5ce0' LIMIT 1 ;
UPDATE `page_list_fields` SET `page_list_id`='5d7cd557-34f5-4c6d-6789-14c43326ade9', `object_field_id`='4ebf55e9-65bc-4fc6-b49a-85d67f321fa7', `label`='上报人', `order`='10', `width`='120', `allow_filter`='1', `allow_sort`='1', `is_default`='1', `configurations`=NULL, `deleted`='0', `created_by`='1', `created_on`='2020-08-24 15:05:15', `modified_by`='1', `modified_on`='2020-12-10 03:29:34', `is_mandatory`=NULL, `is_readonly`=NULL, `is_title`=NULL, `values_in_filter`=NULL, `aggregate_func`=NULL, `display_mode`=NULL, `is_group`=NULL, `disable_click`=NULL, `allow_dynamic_label`=NULL WHERE `id`='b0b33bbb-c91a-4a81-9ba5-c79be43f30f5' LIMIT 1 ;
UPDATE `page_list_fields` SET `page_list_id`='5d7cd557-34f5-4c6d-6789-14c43326ade9', `object_field_id`='9dffac96-0f9e-4383-8e45-7cea2ce53dd5', `label`='类型', `order`='9', `width`='120', `allow_filter`='1', `allow_sort`='1', `is_default`='1', `configurations`=NULL, `deleted`='0', `created_by`='1', `created_on`='2020-08-24 15:05:15', `modified_by`='1', `modified_on`='2020-12-10 03:29:34', `is_mandatory`=NULL, `is_readonly`=NULL, `is_title`=NULL, `values_in_filter`=NULL, `aggregate_func`=NULL, `display_mode`=NULL, `is_group`=NULL, `disable_click`=NULL, `allow_dynamic_label`=NULL WHERE `id`='c4d1f82d-ca80-40a6-81c9-ff3334048400' LIMIT 1 ;
UPDATE `page_list_fields` SET `page_list_id`='5d7cd557-34f5-4c6d-6789-14c43326ade9', `object_field_id`='5aca6abd-a6ff-4a86-942a-d94703ea0a8b', `label`='上报人岗位', `order`='11', `width`='120', `allow_filter`='1', `allow_sort`='1', `is_default`='1', `configurations`=NULL, `deleted`='0', `created_by`='1', `created_on`='2020-08-24 15:05:15', `modified_by`='1', `modified_on`='2020-12-10 03:29:34', `is_mandatory`=NULL, `is_readonly`=NULL, `is_title`=NULL, `values_in_filter`=NULL, `aggregate_func`=NULL, `display_mode`=NULL, `is_group`=NULL, `disable_click`=NULL, `allow_dynamic_label`=NULL WHERE `id`='c7d51082-2ee6-4170-be59-280140ee6b71' LIMIT 1 ;
INSERT INTO `object_validations`(`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`) VALUES ('d95ad31f-54b3-474c-ad00-f0d667fb29b4', '72a74a32-1996-4ea8-8b81-07e261f4aa83', '创建日报时候刷新上级关系', '创建日报时候刷新上级关系', 'trigger', NULL, 'from django.utils.timezone import utc, localtime
from django_bulk_update.helper import bulk_update
from orionbase.common import orion_function
from orionbase.common import orion_errors
from django.db import connection
import datetime
import logging
import time

logger = logging.getLogger(__name__)


logger.info(\'daily_reported_data_upd_superior start.\')

if is_create == 1:
    logger.info(\'daily_reported_data_upd_superior is_create = 1.\')

    with connection.cursor() as cursor:
        upd_sql = u"""
            update daily_reported_data co15 

            left join positions ps1 on ps1.id = co15.position_id
            left join user_positions up1 on up1.position_id = ps1.id
            left join orion_users ou1 on ou1.user_id = up1.user_id

            left join positions ps2 on ps2.id = ps1.parent_id
            left join user_positions up2 on up2.position_id = ps2.id
            left join orion_users ou2 on ou2.user_id = up2.user_id

            left join positions ps3 on ps3.id = ps2.parent_id
            left join user_positions up3 on up3.position_id = ps3.id
            left join orion_users ou3 on ou3.user_id = up3.user_id

            left join positions ps4 on ps4.id = ps3.parent_id
            left join user_positions up4 on up4.position_id = ps4.id
            left join orion_users ou4 on ou4.user_id = up4.user_id


            left join positions ps5 on ps5.id = ps4.parent_id
            left join user_positions up5 on up5.position_id = ps5.id
            left join orion_users ou5 on ou5.user_id = up5.user_id

            left join positions ps6 on ps6.id = ps5.parent_id
            left join user_positions up6 on up6.position_id = ps6.id
            left join orion_users ou6 on ou6.user_id = up6.user_id

            set 

              co15.text_7 = (case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43941801\' then ou1.name
                else \'\' end )

              ,co15.text_6 = (case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43941801\' then ps1.name
                else \'\' end )

               -- sup
              ,co15.text_1=(case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43941805\' then ou1.name
                when ps2.level_id = \'e30fda45-3935-11e7-9202-784f43941805\' then ou2.name
                else \'\' end )
              ,co15.text_10=(case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43941805\' then ps1.name
                when ps2.level_id = \'e30fda45-3935-11e7-9202-784f43941805\' then ps2.name
                else \'\' end )
                
               -- dsm
              ,co15.text_15=(case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ou1.name
                when ps2.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ou2.name
                when ps3.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ou3.name
                else \'\' end )
              ,co15.text_11=(case 
                when ps1.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ps1.name
                when ps2.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ps2.name
                when ps3.level_id = \'e30fda45-3935-11e7-9202-784f43949f5b\' then ps3.name
                else \'\' end )
                
                
               -- rsm
              ,co15.text_4=(case 
                when ps1.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ou1.name
                when ps2.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ou2.name
                when ps3.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ou3.name
                when ps4.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ou4.name
                else \'\' end )
              ,co15.text_18=(case 
                when ps1.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ps1.name
                when ps2.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ps2.name
                when ps3.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ps3.name
                when ps4.level_id = \'deeb13de-3935-11e7-bfbd-784f43949f5b\' then ps4.name
                else \'\' end )
                

               -- rsd
              ,co15.text_17=(case 
              when ps1.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ou1.name
              when ps2.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ou2.name
              when ps3.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ou3.name
              when ps4.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ou4.name
              when ps5.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ou5.name
              else \'\' end )
              ,co15.text_20=(case 
              when ps1.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ps1.name
              when ps2.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ps2.name
              when ps3.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ps3.name
              when ps4.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ps4.name
              when ps5.level_id = \'d9852842-3935-11e7-882b-784f43949f5b\' then ps5.name
              else \'\' end )
              
               -- vp
              ,co15.text_8=(case 
              when ps1.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou1.name
              when ps2.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou2.name
              when ps3.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou3.name
              when ps4.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou4.name
              when ps5.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou5.name
              when ps6.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ou6.name
              else \'\' end )
              ,co15.text_9=(case 
              when ps1.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps1.name
              when ps2.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps2.name
              when ps3.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps3.name
              when ps4.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps4.name
              when ps5.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps5.name
              when ps6.level_id = \'de1a77e5-e5bf-11ea-bc49-0215c63f1715\' then ps6.name
              else \'\' end )
            where
              co15.deleted = 0
            and co15.position_id = {position_id};
            """.format(position_id=instance.position_id)
          
        logger.info(\'daily_reported_data_upd_superior insert sql %s .\', upd_sql)
        cursor.execute(upd_sql)

logger.info(\'daily_reported_data_upd_superior end.\')', '', '0', '1', '2020-12-10 03:32:30', '1', '2020-12-10 03:36:58', 'post_save_page', '1', 'custom', 'cs_cs_daily_reported_data_upd_superior', NULL, NULL) ;
UPDATE `role_to_object_permissions` SET `role_id`='53de9674-1da3-11e6-ac97-5cc5d4b57137', `object_id`='72a74a32-1996-4ea8-8b81-07e261f4aa83', `allow_read`='1', `allow_create`='0', `allow_update`='1', `allow_delete`='1', `deleted`='0', `created_by`='1', `created_on`='2020-07-07 05:51:48', `modified_by`='1', `modified_on`='2020-12-10 03:39:31', `allow_import`='0', `allow_export`='1', `allow_read_all`='1', `allow_update_all`='1', `allow_update_attachment`='0', `allow_terminate_approval`='0', `allow_modify_approver`='0', `allow_create_page_list`='0' WHERE `id`='6c590742-4796-4161-9f16-1d05005caa2a' LIMIT 1 ;

update page_list_fields
set `order` = `order` + 12
where `order` >=8;

INSERT INTO `object_fields`(`id`, `object_id`, `object_database_column_id`, `name`, `label`, `description`, `source`, `type`, `target_display_mode`, `target_screen_size`, `text_max_length`, `text_default`, `number_scale`, `number_default`, `boolean_default`, `picklist_id`, `picklist_type`, `lookup_object_id`, `formula`, `formula_dependent_fields`, `help_text`, `embedded_text`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `lookup_filter_id`, `lookup_filter_dependency_field_id`, `configurations`, `import_order`, `is_key`, `mandatory`, `sample_value`, `import_type`, `max_value`, `min_value`, `text_type`, `depending_on`, `regexp_validation_msg`, `regexp_validation`, `text_style`, `is_from_survey`, `survey_id`, `import_label`, `allow_filter`, `allow_sort`, `number_separator`, `text_style_on_regex`, `support_voice`, `hint_text`, `report_id`, `allow_dynamic_label`) VALUES ('783594ed-05db-44f7-8434-7c10aa60219c', '72a74a32-1996-4ea8-8b81-07e261f4aa83', NULL, 'cs_doctor_code', 'cs医生编码', NULL, 'custom', 'refer', 'all', 'both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '2020-12-11 02:12:48', '1', '2020-12-11 02:12:48', NULL, NULL, '{"refer_field": {"path": "account.external_id", "type": "text"}}', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '0') ;
delete from page_list_fields where id = 'c7cc5b6e-1556-482c-9305-7ae76c17fc42';
INSERT INTO `page_list_fields`(`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`, `allow_dynamic_label`) VALUES 
('c7cc5b6e-1556-482c-9305-7ae76c17fc42', '5d7cd557-34f5-4c6d-6789-14c43326ade9', '783594ed-05db-44f7-8434-7c10aa60219c', '医生编码', '18', '120', '1', '0', '1', NULL, '0', '1', '2020-12-11 02:13:29', '1', '2020-12-11 02:13:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;
