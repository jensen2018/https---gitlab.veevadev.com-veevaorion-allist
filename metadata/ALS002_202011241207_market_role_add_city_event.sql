-- VOPS-10430【TK669639】艾力斯MS-区域市场经理开通城市会申办权限
-- 删除重复授权
delete from role_to_object_permissions where id in (select * from ( select id from role_to_object_permissions where deleted=0  GROUP BY role_id,object_id HAVING count(1) > 1) T);
-- 追加授权
INSERT INTO `role_to_object_record_types`(`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ed711ee8-a045-4be3-b4fc-8f40885eb952', 'b72453fc-efdb-11e9-b9aa-0298a739deb2', 'd9536480-5eed-11e6-8920-5cc5d4d378cb', '0', '0', '1', '2020-11-24 03:36:11', '1', '2020-11-24 03:36:11') ;
INSERT INTO `role_to_object_record_types`(`id`, `role_id`, `object_record_type_id`, `is_default`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('ed711ef2-a045-4be3-b4fc-8f40885eb952', 'a99fcd69-b5ff-11ea-aab5-0215c63fce1a', 'd9536480-5eed-11e6-8920-5cc5d4d378cb', '0', '0', '1', '2020-11-24 03:36:11', '1', '2020-11-24 03:36:11') ;

