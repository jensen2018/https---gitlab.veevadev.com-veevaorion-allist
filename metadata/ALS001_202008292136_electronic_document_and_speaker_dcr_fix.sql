-- 电子资料董事长查看详情
-- 董事长    02ebda16-b601-11ea-aab5-0215c63fce1a
INSERT INTO `page_layout_assignments` (`id`, `role_id`, `object_record_type_id`, `object_state_id`, `page_layout_id`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_locked_by_state`, `allow_enter_mini_layout`, `mini_layout_section`, `tips`) VALUES
('b00d24c6-e9f7-11ea-bc49-0215c63fce1a', '02ebda16-b601-11ea-aab5-0215c63fce1a', '33dcf17f-c5a1-46f8-aac7-7fd9ddd797e2', '9fd19803-ba90-4595-b3d4-286d95781589', 'b73d029f-d791-11ea-bc49-0215c63fce1a', '0', '1', NOW(), '1', NOW(), NULL, NULL, NULL, 'null');


-- 修改讲者申请列表字段“医院编码”label
update page_list_fields set label = '医院编码' where label = '医院编辑';


-- 修改医院编码refer_field
update object_fields set `configurations` = '{\"refer_field\": {\"path\": \"professional.hospital.external_id\", \"type\": \"text\"}}'
where id = 'fd0820de-dad8-11ea-bc49-0215c63fce1a';

update object_fields set `configurations` = '{\"refer_field\": {\"path\": \"professional.hospital.external_id\", \"type\": \"text\"}}'
where id = '1f649e2a-db7d-11ea-bc49-0215c63fce1a';
