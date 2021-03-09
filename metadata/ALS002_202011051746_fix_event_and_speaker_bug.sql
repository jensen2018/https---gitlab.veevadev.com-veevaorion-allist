-- VOPS-10341【TKX】艾力斯MS-讲者和会议若干问题修复
-- 开放讲者国家级和区域级级别
delete from role_to_picklist_values where picklist_id='92e9913e-1f6e-4da3-ad7a-664ecb1ec846';

UPDATE `picklist_values` SET `deleted`='0' WHERE `id`='381e52da-48b1-4ade-9bab-c21b6c65666b';
UPDATE `picklist_values` SET `deleted`='0' WHERE `id`='a01a7caf-5414-4da9-8dd0-57899b62b1c4';

-- 修复商务总监无法看到审批会议的会议日程问题
update role_to_object_permissions set allow_read_all=1 where id='d901da95-f0b7-11e9-b9aa-0298a739dec0';

