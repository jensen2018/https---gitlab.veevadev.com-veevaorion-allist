-- 增加患者数上报report
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES 
('0', '1', NOW(), '1', NOW(), '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', '日新增患者数分析', 'custom', 'mini', '1');

INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES 
('0', '1', NOW(), '1', NOW(), 'f4ab480d-700e-4348-a64c-6792d5bd7423', '1', '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'embedded'),
('0', '1', NOW(), '1', NOW(), 'bac6c965-0bf1-4689-b586-831ff03d94a8', '1', '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'embedded'),
('0', '1', NOW(), '1', NOW(), '30b66db2-7112-4484-9193-7d6f97fe4acc', '1', '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'embedded'),
('0', '1', NOW(), '1', NOW(), '62755fcf-7593-41ea-bc25-2e93372b251c', '1', '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'embedded'),
('0', '1', NOW(), '1', NOW(), 'eda465c2-57b5-44b4-9e72-30efac75b0a7', '1', '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'embedded');

-- 日报小报表
update page_lists set report_id = '1e85f4f9-7a1a-4fd2-91f5-cd5d236dbc7a' where id = '5d7cd557-34f5-4c6d-91e3-14c43326ade9';

-- copy按钮
insert into page_layout_actions(id,page_layout_id,object_action_id,display_mode,`order`,deleted,created_by,created_on,modified_by,modified_on,style,is_need_pre_check,pre_check_label,configurations,label) values 
	('dbdd370d-6aff-4c7f-8a73-5318e297f5ac','20dc90d9-364b-4641-adf0-c83845468017','e511cc46-b970-41a1-a9e7-738ec06ed762','view',3,'0',1,'11/25/2020 6:35:17 AM',1,'11/25/2020 6:35:17 AM',null,0,null,null,null);
