-- 医院DCR

-- 代表 select * from roles where id = '53de6f5e-1da3-11e6-b011-5cc5d4b57134';
-- DCR对象 where object_id = (select id from objects where name = 'dcr') ;

-- 开启岗位精确匹配
UPDATE objects SET precise_position = 1, `modified_on`='2019-08-19 20:22:40'  WHERE id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596';
-- 启用年门诊量字段
UPDATE `object_fields` SET `label`='年门诊量',`number_scale`='0', `number_default`='0'  WHERE `id`='a551fd30-dc7f-11e6-811a-e4b318c6b596';
UPDATE `object_database_columns` SET `used`='1' WHERE `id`='a53b67f0-dc7f-11e6-9fd5-e4b318c6b596';

-- 设置自动编码前缀
UPDATE `object_record_types` SET `modified_on`='2019-08-19 20:22:40', `code_prefix` = 'HCO' WHERE `id` = '5503b9c0-1cd8-11e6-b6ad-5cc5d4d378cb';
-- 医院/医生新建时同步编码到external_id 并同步到dcr的external_id
INSERT INTO `object_validations` (`id`, `object_id`, `label`, `description`, `type`, `formula`, `trigger_code`, `error_message`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `edit_type`, `is_active`, `source`, `name`, `listens`, `version`)
VALUES
	('120931dc-a483-11e9-a37a-02f90e0f44qc', '33a5b140-dc75-11e6-b3a7-e4b318c6b596', '同步编码到dcr', 'account的veeva_code覆盖external_id，并回写DCR的external_id', 'trigger', NULL, 'from orionbase.common.models import DCRs\nfrom django.db import connection\nif isinstance(instance, DCRs):\n    # 新增医院/新增医生\n    if instance.record_type_id == \'12962ade-609e-11e7-82bb-c85b76d4d416\' or instance.record_type_id == \'98fdff4f-dc86-11e6-b1cc-e4b318c6b596\':\n        if instance.account_id:\n            with connection.cursor() as cursor:\n                update_sql = \"\"\"UPDATE dcrs d INNER JOIN accounts a ON d.account_id = a.id SET a.external_id = a.veeva_code, d.external_id = a.veeva_code\n                                WHERE a.id = {}\"\"\".format(instance.account_id)\n                cursor.execute(update_sql)', '', 0, 1, '2019-08-19 20:22:40', 1, '2019-09-09 09:50:03', 'post_save', 1, 'custom', 'cs_HCO_generate_external_id', NULL, NULL);

-- 启用sales_unit
UPDATE `custom_settings` SET `value` = 'true' WHERE `key` = 'enable_sales_unit';
-- 更新label名
UPDATE `menus` SET `label` = '客户变更申请' WHERE (`id`='85e7f39e-dc89-11e6-935d-e4b318c6b596') LIMIT 1;
UPDATE `object_record_types` SET `label` = '申请医院资源' WHERE `id` = '12962ade-609e-11e7-82bb-c85b76d4d416';

DELETE FROM page_list_assignments WHERE page_list_id = '88695652-622b-11e7-a16b-c85b76d4d422';
DELETE FROM page_list_actions WHERE page_list_id = '88695652-622b-11e7-a16b-c85b76d4d422';
DELETE FROM page_list_fields WHERE page_list_id = '88695652-622b-11e7-a16b-c85b76d4d422';
DELETE FROM page_list_conditions WHERE page_list_id = '88695652-622b-11e7-a16b-c85b76d4d422';
DELETE FROM page_lists WHERE id = '88695652-622b-11e7-a16b-c85b76d4d422';
-- 增加微信端医院DCR列表页面
INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `formula`, `sort_field`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_readonly`, `style`, `detail_disabled`, `configurations`, `aggregate_field`, `owner`, `primary_filter`, `report_id`, `primary_filter_configurations`, `external_condition`, `db_hint`)
VALUES
	('88695652-622b-11e7-a16b-c85b76d4d422', 'b614fab0-dc88-11e6-a7a3-e4b318c6b596', 'dcr_hospital', 'rls', 'custom', '变更申请列表（医院）', 'small', '1', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '1', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`, `configurations`)
VALUES
	('8526d672-62e4-11e7-a513-c85b76d4d422', '88695652-622b-11e7-a16b-c85b76d4d422', 'f765645e-dcb4-11e6-af37-e4b318c6b596', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, '0', 0, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`)
VALUES
	('88695651-622b-11e7-836d-c85b76d4d433', '88695652-622b-11e7-a16b-c85b76d4d422', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 120, 1, 0, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695650-622b-11e7-b570-c85b76d4d422', '88695652-622b-11e7-a16b-c85b76d4d422', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 120, 1, 0, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d477', '88695652-622b-11e7-a16b-c85b76d4d422', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 15, 120, 0, 0, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('8869564f-622b-11e7-9a79-c85b76d4d411', '88695652-622b-11e7-a16b-c85b76d4d422', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 20, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d455', '88695652-622b-11e7-a16b-c85b76d4d422', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 25, 120, 1, 0, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d4bb', '88695652-622b-11e7-a16b-c85b76d4d422', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 30, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d4aa', '88695652-622b-11e7-a16b-c85b76d4d422', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 35, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d466', '88695652-622b-11e7-a16b-c85b76d4d422', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 40, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d488', '88695652-622b-11e7-a16b-c85b76d4d422', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 45, 120, 0, 0, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d4cc', '88695652-622b-11e7-a16b-c85b76d4d422', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 50, 120, 0, 0, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-11e7-836d-c85b76d4d400', '88695652-622b-11e7-a16b-c85b76d4d422', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 55, 120, 0, 0, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_list_conditions` (`id`, `page_list_id`, `object_field_id`, `operator`, `value`, `formula_number`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('019b7b58-8643-11e7-9485-02d2a924e521', '88695652-622b-11e7-a16b-c85b76d4d422', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', 'in', '12951970-609e-11e7-870c-c85b76d4d416,12962ade-609e-11e7-82bb-c85b76d4d416,b02c9f8f-6211-11e7-b39b-c85b76d4d416,cd355470-d8ef-4ada-b332-8fa2807463fe', '1', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');

UPDATE `object_database_columns` SET `used`='1',  `modified_on`='2019-08-19 20:22:40' WHERE `id`='a8d382cf-dc7f-11e6-b0ca-e4b318c6b596';
UPDATE `object_fields` SET `label`='医疗机构类别', `picklist_id`='e4f4135e-4435-43fd-bf29-e82822052qrb', `picklist_type`='picklist', `modified_on`='2019-08-19 20:22:40' WHERE `id`='a8e7f530-dc7f-11e6-918f-e4b318c6b596';

UPDATE `object_database_columns` SET `used`='1',  `modified_on`='2019-08-19 20:22:40' WHERE `id`='a8fe8a70-dc7f-11e6-ac04-e4b318c6b596';
UPDATE `object_fields` SET `label`='医疗机构子类别', `picklist_id`='e4f4135e-4435-43fd-bf29-e82822052qam', `picklist_type`='picklist', `modified_on`='2019-08-19 20:22:40' WHERE `id`='a90e1acf-dc7f-11e6-8dc4-e4b318c6b596';


DELETE FROM page_layout_actions WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d412';
DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d412';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d412';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d412';
-- 新增医院详情页（草稿）
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-11e7-b39e-c85b76d4d412', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_planning_s', '客户变更申请详情', 'custom', 'small', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-11e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-11e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-11e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-11e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-11e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-11e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-11e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-11e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-11e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-11e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-11e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-11e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-11e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-11e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-11e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-11e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-11e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`)
VALUES
	('c8e0bc80-6304-11e7-87ab-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf0-6304-11e7-ab93-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', 2, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf1-6304-11e7-a92f-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', 3, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf2-6304-11e7-b5eb-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d412', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', 4, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0');

-- select * from object_fields where object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596' and name = 'created_on';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d444';
DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d444';
DELETE FROM page_layout_tabs WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d444';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d444';
-- 新增医院详情页（审批通过）
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-11e7-b39e-c85b76d4d444', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_approved_s', '客户变更申请详情', 'custom', 'small', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-21e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-21e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-21e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-21e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-21e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-21e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-21e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-21e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-21e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-21e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-21e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-21e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-21e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-21e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-21e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-21e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-21e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d444', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) 
VALUES ('ff6fe983-8b94-1111-add8-9c7e35f71d2a', '612a6091-62fb-11e7-b39e-c85b76d4d444', '1', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40', 'c1c0d2a1-dd3a-11e6-9d79-e4b318c6b596', '1');

DELETE FROM page_layout_actions WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d234';
DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d234';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d234';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d234';
-- 修改岗位医院详情页（草稿）
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-11e7-b39e-c85b76d4d234', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_planning_s', '客户变更申请详情', 'custom', 'small', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-31e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-31e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-31e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-31e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-31e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-31e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-31e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-31e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-31e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-31e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-31e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-31e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-31e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-11e7-83aa-c85b76d4d112', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-31e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-31e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-31e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-31e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`)
VALUES
	('c8e0bc80-6304-11e8-87ab-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf0-6304-11e8-ab93-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', 2, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf1-6304-11e8-a92f-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', 3, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf2-6304-11e8-b5eb-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d234', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', 4, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0');

-- select * from object_fields where object_id = '33a5b140-dc75-11e6-b3a7-e4b318c6b596' and name = 'created_on';
DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d567';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d567';
DELETE FROM page_layout_tabs WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d567';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d567';
-- 修改岗位医院详情页（审批通过）
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-11e7-b39e-c85b76d4d567', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_approved_s', '客户变更申请详情', 'custom', 'small', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-41e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-41e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-41e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-41e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-41e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-41e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-41e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-41e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-41e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-41e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-41e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-41e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-41e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492c57b5-653e-11e7-83aa-c85b76d4d142', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-41e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-41e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-41e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-41e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d567', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) 
VALUES ('fffd54fa-2833-1111-b5ce-a3a6312fcf5e', '612a6091-62fb-11e7-b39e-c85b76d4d567', '1', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40', 'c1c0d2a1-dd3a-11e6-9d79-e4b318c6b596', '1');


DELETE FROM page_layout_actions WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d231';
DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d231';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d231';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d231';
-- 删除岗位医院详情页(草稿)
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('612a6091-62fb-11e7-b39e-c85b76d4d231', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_planning_s', '客户变更申请详情', 'custom', 'small', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-51e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-51e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-51e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-51e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-51e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-51e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b3-653e-51e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-51e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-51e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484093-653e-51e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b5-653e-51e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484093-653e-51e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b5-653e-51e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-51e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-51e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-51e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-51e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`)
VALUES
	('c8e0bc80-6304-11f8-87ab-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf0-6304-11f8-ab93-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', 2, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf1-6304-11f8-a92f-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', 3, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf2-6304-11f8-b5eb-c85b76d4d412', '612a6091-62fb-11e7-b39e-c85b76d4d231', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', 4, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0');

DELETE FROM page_layout_fields WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d212';
DELETE FROM page_layout_assignments WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d212';
DELETE FROM page_layout_tabs WHERE page_layout_id = '612a6091-62fb-11e7-b39e-c85b76d4d212';
DELETE FROM page_layouts WHERE id = '612a6091-62fb-11e7-b39e-c85b76d4d212';
-- 删除岗位医院详情页(审批通过)
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('612a6091-62fb-11e7-b39e-c85b76d4d212', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_approved_s', '客户变更申请详情', 'custom', 'small', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-61e7-a108-c85b76d4d444', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-61e7-982c-c85b76d4d333', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-61e7-9212-c85b76d4d222', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-61e7-9212-c85b76d4d212', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-61e7-9b8f-c85b76d4d000', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-61e7-9b8f-c85b76d4d011', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b3-653e-61e7-8375-c85b76d4d555', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-61e7-9b8f-c85b76d4d022', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484095-653e-61e7-9b8f-c85b76d4d033', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484093-653e-61e7-b05d-c85b76d4d888', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b5-653e-61e7-83aa-c85b76d4d777', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('69484093-653e-61e7-b05d-c85b76d4d822', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
-- 	('492c57b5-653e-61e7-83aa-c85b76d4d722', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-61e7-9b8f-c85b76d4d044', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-61e7-9b8f-c85b76d4d055', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-61e7-a35e-c85b76d4d111', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-61e7-9b8f-c85b76d4d066', '612a6091-62fb-11e7-b39e-c85b76d4d212', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) 
VALUES ('fffd54fa-2833-1111-b5ce-a3a6312fcaae', '612a6091-62fb-11e7-b39e-c85b76d4d212', '1', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40', 'c1c0d2a1-dd3a-11e6-9d79-e4b318c6b596', '1');

DELETE FROM page_layout_actions WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d123';
DELETE FROM page_layout_fields WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d123';
DELETE FROM page_layout_assignments WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d123';
DELETE FROM page_layouts WHERE id = '69a5b724-62ff-11e7-97b5-c85b76d4d123';
-- 添加岗位医院详情页(草稿)
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('69a5b724-62ff-11e7-97b5-c85b76d4d123', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_planning_s', '客户变更申请详情', 'custom', 'small', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-71e7-a108-c85b76d4d444', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-71e7-982c-c85b76d4d333', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-71e7-9212-c85b76d4d222', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-71e7-9212-c85b76d4d212', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-71e7-9b8f-c85b76d4d000', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-71e7-9b8f-c85b76d4d011', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-71e7-8375-c85b76d4d555', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-71e7-9b8f-c85b76d4d022', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-71e7-9b8f-c85b76d4d033', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-71e7-b05d-c85b76d4d888', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-71e7-83aa-c85b76d4d777', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-71e7-b05d-c85b76d4d822', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-71e7-83aa-c85b76d4d722', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492c57b5-653e-11e7-83aa-c85b76d4d221', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-71e7-9b8f-c85b76d4d044', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-71e7-9b8f-c85b76d4d055', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-71e7-a35e-c85b76d4d111', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-71e7-9b8f-c85b76d4d066', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `style`, `is_need_pre_check`, `pre_check_label`)
VALUES
	('c8e0bc80-6304-11a8-87ab-c85b76d4d412', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'f79d644f-dcb4-11e6-8fab-e4b318c6b596', 'view', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf0-6304-11a8-ab93-c85b76d4d412', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'f7ae5440-dcb4-11e6-a50b-e4b318c6b596', 'edit', 2, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf1-6304-11a8-a92f-c85b76d4d412', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'f7bf1d1e-dcb4-11e6-8788-e4b318c6b596', 'view', 3, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0'),
	('c8e1cdf2-6304-11a8-b5eb-c85b76d4d412', '69a5b724-62ff-11e7-97b5-c85b76d4d123', 'f7882ea1-dcb4-11e6-82b8-e4b318c6b596', 'view', 4, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, '0');

DELETE FROM page_layout_fields WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d321';
DELETE FROM page_layout_assignments WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d321';
DELETE FROM page_layout_tabs WHERE page_layout_id = '69a5b724-62ff-11e7-97b5-c85b76d4d321';
DELETE FROM page_layouts WHERE id = '69a5b724-62ff-11e7-97b5-c85b76d4d321';
-- 添加岗位医院详情页(审批通过)
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) 
VALUES ('69a5b724-62ff-11e7-97b5-c85b76d4d321', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_approved_s', '客户变更申请详情', 'custom', 'small', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b2-653e-81e7-a108-c85b76d4d444', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-81e7-982c-c85b76d4d333', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-81e7-9212-c85b76d4d222', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-81e7-9212-c85b76d4d212', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-81e7-9b8f-c85b76d4d000', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-81e7-9b8f-c85b76d4d011', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-81e7-8375-c85b76d4d555', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-81e7-9b8f-c85b76d4d022', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-81e7-9b8f-c85b76d4d033', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-81e7-b05d-c85b76d4d888', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-81e7-83aa-c85b76d4d777', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-81e7-b05d-c85b76d4d822', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-81e7-83aa-c85b76d4d722', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492c57b5-653e-11e7-83aa-c85b76d4d242', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-81e7-9b8f-c85b76d4d044', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', '01f98859-a449-438b-acb4-e499177ad797', '销售区域', 65, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
--  ('69484095-653e-81e7-9b8f-c85b76d4d055', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'affe8870-dc7f-11e6-b22a-e4b318c6b596', '创建人', 70, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
    ('492b6d51-653e-81e7-a35e-c85b76d4d111', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1);
-- 	('69484095-653e-81e7-9b8f-c85b76d4d066', '69a5b724-62ff-11e7-97b5-c85b76d4d321', 'field', 'b04666de-dc7f-11e6-b6bb-e4b318c6b596', '创建时间', 80, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
INSERT INTO `page_layout_tabs` (`id`, `page_layout_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `object_tab_id`, `is_readonly`) 
VALUES ('fffd54fa-2833-1111-b5ce-a3a6312fcfce', '69a5b724-62ff-11e7-97b5-c85b76d4d321', '1', '0', '1', '2019-08-19 20:22:40', '1', '2019-08-19 20:22:40', 'c1c0d2a1-dd3a-11e6-9d79-e4b318c6b596', '1');

-- ======================================================电脑端医院DCR列表页
delete from page_list_fields where page_list_id = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e';
delete from page_list_actions where page_list_id = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e';
delete from page_list_conditions where page_list_id = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e';
delete from page_list_assignments where page_list_id = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e';
delete from page_lists where id = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e';

INSERT INTO `page_lists` (`id`, `page_id`, `name`, `query_type`, `source`, `label`, `screen_size`, `formula`, `sort_field`, `is_desc`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_readonly`, `style`, `detail_disabled`, `configurations`, `aggregate_field`, `owner`, `primary_filter`, `report_id`, `primary_filter_configurations`, `external_condition`, `db_hint`)
VALUES
	('b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'b614fab0-dc88-11e6-a7a3-e4b318c6b596', 'dcr_hospital_l', 'rls', 'custom', '变更申请列表（医院）', 'large', '1', '5c33ce01-0ec3-11e7-a87b-e4b318c6b596', '1', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, 'position', NULL, '{\"advanced_position_filter\": true}', NULL, NULL);
INSERT INTO `page_list_fields` (`id`, `page_list_id`, `object_field_id`, `label`, `order`, `width`, `allow_filter`, `allow_sort`, `is_default`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_mandatory`, `is_readonly`, `is_title`, `values_in_filter`, `aggregate_func`, `display_mode`, `is_group`, `disable_click`)
VALUES
	('88695651-622b-12e7-836d-c85b76d4d433', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695650-622b-12e7-b570-c85b76d4d422', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d477', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 15, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('8869564f-622b-12e7-9a79-c85b76d4d411', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 20, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d455', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 25, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d4bb', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 30, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d4aa', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 35, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d466', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 40, 120, 1, 1, 1, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d488', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 45, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d4cc', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 50, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('88695651-622b-12e7-836d-c85b76d4d400', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 55, 120, 1, 1, 0, NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- record type为医院
INSERT INTO `page_list_conditions` (`id`, `page_list_id`, `object_field_id`, `operator`, `value`, `formula_number`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
VALUES
	('3e06ab7d-0fa4-4c10-1111-480148f17cab', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', 'in', '12951970-609e-11e7-870c-c85b76d4d416,12962ade-609e-11e7-82bb-c85b76d4d416,b02c9f8f-6211-11e7-b39b-c85b76d4d416,cd355470-d8ef-4ada-b332-8fa2807463fe', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
-- ，state为申请通过
-- INSERT INTO `page_list_conditions` (`id`, `page_list_id`, `object_field_id`, `operator`, `value`, `formula_number`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`)
-- VALUES
-- 	('3e06ab7d-0fa4-4c20-1111-480148f17cab', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', 'in', '7577428f-dc85-11e6-a0eb-e4b318c6b596', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40');
-- 导出按钮
INSERT INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`, `configurations`)
VALUES
	('135a488f-90f5-11e6-1111-e4b318c6b596', 'b50e82a3-3f4a-4214-1111-42f1c53ea03e', '5cce908b-f536-4ab9-b0fa-336c8f36d95e', 1, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', 0, '0', 0, NULL);

DELETE FROM page_layout_fields WHERE page_layout_id in ('612a6091-62fb-1117-b39e-c85b76d4d212','612a6091-62fb-1127-b39e-c85b76d4d444', '612a6091-62fb-1137-b39e-c85b76d4d567','69a5b724-62ff-1147-97b5-c85b76d4d321');
DELETE FROM page_layout_assignments WHERE page_layout_id in ('612a6091-62fb-1117-b39e-c85b76d4d212','612a6091-62fb-1127-b39e-c85b76d4d444', '612a6091-62fb-1137-b39e-c85b76d4d567','69a5b724-62ff-1147-97b5-c85b76d4d321');
DELETE FROM page_layouts WHERE id in ('612a6091-62fb-1117-b39e-c85b76d4d212','612a6091-62fb-1127-b39e-c85b76d4d444', '612a6091-62fb-1137-b39e-c85b76d4d567','69a5b724-62ff-1147-97b5-c85b76d4d321');
-- 电脑端医院DCR详情页
-- 四种类型的审批通过
-- 移除  申请   修改   新增区域
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-1117-b39e-c85b76d4d212', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_approved_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-1127-b39e-c85b76d4d444', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_approved_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-1137-b39e-c85b76d4d567', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_approved_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('69a5b724-62ff-1147-97b5-c85b76d4d321', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_approved_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
-- 四种类型的草稿
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-1117-62fb-c85b76d4d212', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_draft_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('62fb6091-62fb-1127-b39e-c85b76d4d444', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_draft_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-62fb-b39e-c85b76d4d567', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_draft_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('69a5b724-62ff-1147-97b5-62fb76d4d321', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_draft_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);
-- 四种类型的审批中
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-62fb-1117-dc88-c85b76d4d212', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_approve_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-b39e-b39e-c85b76d4d444', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_approve_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-b39e-1137-b39e-c85b76d4d567', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_approve_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('69a5b39e-62ff-1147-97b5-c85b76d4d321', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_approve_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);

-- 四种类型的审批拒绝
INSERT INTO `page_layouts` (`id`, `page_id`, `name`, `label`, `source`, `screen_size`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `highlight_enabled`, `report_id`)
VALUES
	('612a6091-1117-1117-b39e-c85b76d4d212', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_delete_hosp_refused_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-1117-b39e-c85b76d4d444', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_create_hosp_refused_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('612a6091-62fb-1137-1117-c85b76d4d567', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_modify_hosp_refused_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL),
	('69a5b724-62ff-1147-97b5-11176d4d3214', 'b6006140-dc88-11e6-9d4e-e4b318c6b596', 'dcr_hosp_readonly_refused_l', '客户变更申请详情', 'custom', 'large', 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, NULL);

-- 移除 审批通过
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-653e-6117-a35e-c85b76d4d111', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-653e-6117-9212-c85b76d4d212', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-6117-9212-c85b76d4d222', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-6117-982c-c85b76d4d333', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-653e-6117-a108-c85b76d4d444', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492c57b3-2rdb-8147-8375-c85b76d4d555', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-2rdb-1147-83aa-c85b76d4d242', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-2rdb-8147-83aa-c85b76d4d722', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-2rdb-8147-83aa-c85b76d4d777', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-2rdb-8147-b05d-c85b76d4d822', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-2rdb-8147-b05d-c85b76d4d888', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2rdb-8147-9b8f-c85b76d4d000', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2rdb-8147-9b8f-c85b76d4d011', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2rdb-8147-9b8f-c85b76d4d022', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2rdb-8147-9b8f-c85b76d4d033', '612a6091-62fb-1117-b39e-c85b76d4d212', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 申请-审批通过
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-653e-2127-a35e-c85b76d4d111', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-653e-2127-9212-c85b76d4d212', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-2127-9212-c85b76d4d222', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-2127-982c-c85b76d4d333', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-653e-2127-a108-c85b76d4d444', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-2127-8375-c85b76d4d555', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-2127-83aa-c85b76d4d722', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-2127-83aa-c85b76d4d777', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-2127-b05d-c85b76d4d822', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-2127-b05d-c85b76d4d888', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-2127-9b8f-c85b76d4d000', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-2127-9b8f-c85b76d4d011', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-2127-9b8f-c85b76d4d022', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-2127-9b8f-c85b76d4d033', '612a6091-62fb-1127-b39e-c85b76d4d444', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 修改区域医院-审批通过
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-653e-4137-a35e-c85b76d4d111', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-653e-4137-9212-c85b76d4d212', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-4137-9212-c85b76d4d222', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-4137-982c-c85b76d4d333', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-653e-4137-a108-c85b76d4d444', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-4137-8375-c85b76d4d555', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-1137-83aa-c85b76d4d142', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-4137-83aa-c85b76d4d722', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-4137-83aa-c85b76d4d777', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-4137-b05d-c85b76d4d822', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-4137-b05d-c85b76d4d888', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-4137-9b8f-c85b76d4d000', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-4137-9b8f-c85b76d4d011', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-4137-9b8f-c85b76d4d022', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-4137-9b8f-c85b76d4d033', '612a6091-62fb-1137-b39e-c85b76d4d567', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 新增区域医院-审批通过
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-653e-8147-a35e-c85b76d4d111', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-653e-8147-9212-c85b76d4d212', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-653e-8147-9212-c85b76d4d222', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-653e-8147-982c-c85b76d4d333', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-653e-8147-a108-c85b76d4d444', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-653e-8147-8375-c85b76d4d555', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-1147-83aa-c85b76d4d242', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-8147-83aa-c85b76d4d722', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-653e-8147-83aa-c85b76d4d777', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-8147-b05d-c85b76d4d822', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-653e-8147-b05d-c85b76d4d888', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-8147-9b8f-c85b76d4d000', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-8147-9b8f-c85b76d4d011', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-8147-9b8f-c85b76d4d022', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-653e-8147-9b8f-c85b76d4d033', '69a5b724-62ff-1147-97b5-c85b76d4d321', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'edit', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

update page_layout_fields set deleted=1 where id='492c57b5-653e-1147-83aa-c85b76d4d242';
-- 移除医院 草稿  612a6091-62fb-1117-62fb-c85b76d4d212
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-2127-2127-a35e-c85b76d4d111', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-2127-2127-9212-c85b76d4d212', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-2127-2127-9212-c85b76d4d222', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-2127-2127-982c-c85b76d4d333', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-2127-2127-a108-c85b76d4d444', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-2127-2127-8375-c85b76d4d555', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-2127-2127-83aa-c85b76d4d722', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-2127-2127-83aa-c85b76d4d777', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-2127-2127-b05d-c85b76d4d822', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-2127-2127-b05d-c85b76d4d888', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2127-2127-9b8f-c85b76d4d000', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2127-2127-9b8f-c85b76d4d011', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2127-2127-9b8f-c85b76d4d022', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-2127-2127-9b8f-c85b76d4d033', '612a6091-62fb-1117-62fb-c85b76d4d212', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);
-- 申请医院 草稿
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-b39e-2127-a35e-c85b76d4d111', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-b39e-2127-9212-c85b76d4d212', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-b39e-2127-9212-c85b76d4d222', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-b39e-2127-982c-c85b76d4d333', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-b39e-2127-a108-c85b76d4d444', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-b39e-2127-8375-c85b76d4d555', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-2127-83aa-c85b76d4d722', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-2127-83aa-c85b76d4d777', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-2127-b05d-c85b76d4d822', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-2127-b05d-c85b76d4d888', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-2127-9b8f-c85b76d4d000', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-2127-9b8f-c85b76d4d011', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-2127-9b8f-c85b76d4d022', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-2127-9b8f-c85b76d4d033', '62fb6091-62fb-1127-b39e-c85b76d4d444', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);
-- 修改医院  草稿
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-b39e-6091-a35e-c85b76d4d111', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-b39e-6091-9212-c85b76d4d212', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-b39e-6091-9212-c85b76d4d222', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-b39e-6091-982c-c85b76d4d333', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-b39e-6091-a108-c85b76d4d444', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-b39e-6091-8375-c85b76d4d555', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-6091-1137-83aa-c85b76d4d142', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '7ae61c30-65e0-11e7-a5f0-c85b76d4d416', '差异信息', 60, 6, 0, 0, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-6091-83aa-c85b76d4d722', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-6091-83aa-c85b76d4d777', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-6091-b05d-c85b76d4d822', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-6091-b05d-c85b76d4d888', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-6091-9b8f-c85b76d4d000', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-6091-9b8f-c85b76d4d011', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-6091-9b8f-c85b76d4d022', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-6091-9b8f-c85b76d4d033', '612a6091-62fb-62fb-b39e-c85b76d4d567', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);
-- 申请区域医院  草稿
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-62ff-6091-a35e-c85b76d4d111', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-b39e-62ff-9212-c85b76d4d212', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-b39e-62ff-9212-c85b76d4d222', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-b39e-62ff-982c-c85b76d4d333', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-b39e-62ff-a108-c85b76d4d444', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-b39e-62ff-8375-c85b76d4d555', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-62ff-83aa-c85b76d4d722', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-b39e-62ff-83aa-c85b76d4d777', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-62ff-b05d-c85b76d4d822', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-b39e-62ff-b05d-c85b76d4d888', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-62ff-9b8f-c85b76d4d000', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-62ff-9b8f-c85b76d4d011', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-62ff-9b8f-c85b76d4d022', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-b39e-62ff-9b8f-c85b76d4d033', '69a5b724-62ff-1147-97b5-62fb76d4d321', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 移除医院  审批中  612a6091-62fb-1117-dc88-c85b76d4d212
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('492b6d51-4d21-6091-76d4-c85b76d4d111', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('492c57b0-4d21-62ff-76d4-c85b76d4d212', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b0-4d21-62ff-76d4-c85b76d4d222', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b1-4d21-62ff-76d4-c85b76d4d333', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b2-4d21-62ff-76d4-c85b76d4d444', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b3-4d21-62ff-76d4-c85b76d4d555', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-4d21-62ff-76d4-c85b76d4d722', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('492c57b5-4d21-62ff-76d4-c85b76d4d777', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-4d21-62ff-76d4-c85b76d4d822', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484093-4d21-62ff-76d4-c85b76d4d888', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-4d21-62ff-76d4-c85b76d4d000', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-4d21-62ff-76d4-c85b76d4d011', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-4d21-62ff-76d4-c85b76d4d022', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('69484095-4d21-62ff-76d4-c85b76d4d033', '612a6091-62fb-1117-dc88-c85b76d4d212', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);
-- 申请医院  审批中  612a6091-62fb-b39e-b39e-c85b76d4d444
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d46d51-62ff-6091-76d4-c85b76d4d111', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d457b0-b39e-62ff-76d4-c85b76d4d212', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b0-b39e-62ff-76d4-c85b76d4d222', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b1-b39e-62ff-76d4-c85b76d4d333', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b2-b39e-62ff-76d4-c85b76d4d444', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4c5b3-b39e-62ff-76d4-c85b76d4d555', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b5-b39e-62ff-76d4-c85b76d4d722', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b5-b39e-62ff-76d4-c85b76d4d777', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44093-b39e-62ff-76d4-c85b76d4d822', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44093-b39e-62ff-76d4-c85b76d4d888', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-76d4-c85b76d4d000', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-76d4-c85b76d4d011', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-76d4-c85b76d4d022', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-76d4-c85b76d4d033', '612a6091-62fb-b39e-b39e-c85b76d4d444', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);
-- 修改医院  审批中  612a6091-b39e-1137-b39e-c85b76d4d567
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d46d51-62ff-6091-6091-c85b76d4d111', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d457b0-b39e-62ff-6091-c85b76d4d212', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b0-b39e-62ff-6091-c85b76d4d222', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b1-b39e-62ff-6091-c85b76d4d333', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b2-b39e-62ff-6091-c85b76d4d444', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4c5b3-b39e-62ff-6091-c85b76d4d555', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b5-b39e-62ff-6091-c85b76d4d722', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d457b5-b39e-62ff-6091-c85b76d4d777', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44093-b39e-62ff-6091-c85b76d4d822', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44093-b39e-62ff-6091-c85b76d4d888', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-6091-c85b76d4d000', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-6091-c85b76d4d011', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-6091-c85b76d4d022', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d44095-b39e-62ff-6091-c85b76d4d033', '612a6091-b39e-1137-b39e-c85b76d4d567', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 新增区域医院  审批中   69a5b39e-62ff-1147-97b5-c85b76d4d321
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d4a5b3-62ff-6091-76d4-c85b76d4d111', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d212', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d222', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d333', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d444', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d555', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d722', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d777', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d822', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d888', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d000', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-76d4-c85b76d4d011', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76da5b35-b39e-62ff-76d4-c85b76d4d022', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('7a5b3095-b39e-62ff-76d4-c85b76d4d033', '69a5b39e-62ff-1147-97b5-c85b76d4d321', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 移除医院  审批拒绝    612a6091-1117-1117-b39e-c85b76d4d212
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d4a5b3-a5b3-6091-76d4-c85b76d4d111', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d212', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d222', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d333', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d444', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d555', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d722', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d777', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d822', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d888', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d000', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-a5b3-62ff-76d4-c85b76d4d011', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76da5b35-a5b3-62ff-76d4-c85b76d4d022', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('7a5b3095-a5b3-62ff-76d4-c85b76d4d033', '612a6091-1117-1117-b39e-c85b76d4d212', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 申请医院   审批拒绝    612a6091-62fb-1117-b39e-c85b76d4d444
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d4a5b3-62ff-3avv-76d4-c85b76d4d111', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d212', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d222', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d333', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d444', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d555', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d722', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d777', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d822', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d888', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d000', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-3avv-76d4-c85b76d4d011', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76da5b35-b39e-3avv-76d4-c85b76d4d022', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('7a5b3095-b39e-3avv-76d4-c85b76d4d033', '612a6091-62fb-1117-b39e-c85b76d4d444', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 修改医院   审批拒绝    612a6091-62fb-1137-1117-c85b76d4d567
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d4a5b3-62ff-6091-3qal-c85b76d4d111', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d212', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d222', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d333', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d444', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d555', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d722', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d777', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d822', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d888', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d000', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-62ff-3qal-c85b76d4d011', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76da5b35-b39e-62ff-3qal-c85b76d4d022', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('7a5b3095-b39e-62ff-3qal-c85b76d4d033', '612a6091-62fb-1137-1117-c85b76d4d567', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 新增区域医院  审批拒绝    69a5b724-62ff-1147-97b5-11176d4d3214
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`)
VALUES
	('76d4a5b3-62ff-4wfx-76d4-c85b76d4d111', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a27e1cb0-dc7f-11e6-935c-e4b318c6b596', '申请岗位', 75, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, 1),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d212', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'e74f9a90-12d4-11e7-b04b-e4b318c6b596', '医院编码', 17, 6, 0, 1, 'view', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d222', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a190d680-dc7f-11e6-b73a-e4b318c6b596', '医院名称', 15, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d333', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a2321f91-dc7f-11e6-bfde-e4b318c6b596', '申请类型', 10, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d444', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a255fb40-dc7f-11e6-b0cb-e4b318c6b596', '审批状态', 5, 6, 0, 1, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d555', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a90e1acf-dc7f-11e6-8dc4-e4b318c6b596', '医疗机构子类别', 30, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d722', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a551fd30-dc7f-11e6-811a-e4b318c6b596', '年门诊量', 60, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d777', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'b1901300-6539-11e7-9e3f-c85b76d4d416', '电话', 50, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d822', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', '6769e071-653a-11e7-87de-c85b76d4d416', '床位数', 55, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d888', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', '6769b961-653a-11e7-ab83-c85b76d4d416', '地址', 45, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d000', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', '39fb360f-653b-11e7-98e5-c85b76d4d416', '医院别名', 20, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76d4a5b3-b39e-4wfx-76d4-c85b76d4d011', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', 'a8e7f530-dc7f-11e6-918f-e4b318c6b596', '医疗机构类别', 25, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('76da5b35-b39e-4wfx-76d4-c85b76d4d022', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', '553a63fe-70c6-46c8-964e-0c116efde30c', '医院级别', 35, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL),
	('7a5b3095-b39e-4wfx-76d4-c85b76d4d033', '69a5b724-62ff-1147-97b5-11176d4d3214', 'field', '689c81df-6f9f-11e7-b042-e4b318c6b596', '省市区', 40, 6, 0, 0, 'both', NULL, 0, 1, '2019-08-19 20:22:40', 1, '2019-08-19 20:22:40', NULL, 0, NULL, NULL, NULL, NULL);

-- 变更字段类型
update page_layout_fields set display_mode='both' where page_layout_id in ('612a6091-62fb-1117-b39e-c85b76d4d212','612a6091-62fb-1127-b39e-c85b76d4d444',
'612a6091-62fb-1137-b39e-c85b76d4d567','69a5b724-62ff-1147-97b5-c85b76d4d321');


-- 如勾选DCR，将在医院list和layout添加快捷按钮
INSERT IGNORE INTO `page_list_actions` (`id`, `page_list_id`, `object_action_id`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`, `is_item_action`) VALUES ('fc29b4d8-39e3-6db1-bba3-23a357113eik', 'db221570-7664-11e6-bac9-5cc5d4d378cb', '9b1b7c4a-23ec-48c2-93b1-aaf4d6c8f51a', '1', '0', '1', '2017-01-01 00:00:00.000000', '1', '2017-01-01 00:00:00.000000', '0', '0', '0');
INSERT IGNORE INTO `page_layout_actions` (`id`, `page_layout_id`, `object_action_id`, `display_mode`, `order`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_need_pre_check`, `pre_check_label`) VALUES ('fe6535fd-34da-4811-a088-e6c38aa64wam', '1c2a489e-763b-11e6-b7bf-5cc5d4d37890', '2c9bd5bc-4a04-4379-bdec-7eb66b4a9b75', 'view', '1', '0', '1', '2018-01-09 09:21:13', '1', '2018-01-09 09:21:13', '0', '0');

-- 默认创建时间倒序排列
UPDATE `page_lists` SET `sort_field` = 'b04666de-dc7f-11e6-b6bb-e4b318c6b596' WHERE (`id` = 'b50e82a3-3f4a-4214-1111-42f1c53ea03e');

update page_layout_fields set deleted=1 where id='492c57b5-2rdb-1147-83aa-c85b76d4d242';
