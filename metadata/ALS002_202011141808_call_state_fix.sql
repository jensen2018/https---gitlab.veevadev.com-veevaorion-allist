-- VOPS-10419【艾力斯】放开SFE只能查看两天内完成状态拜访的限制
UPDATE `object_states` SET `label`='未完成' WHERE `id`='58551470-7408-11e6-85ed-5cc5d4b571d2';
UPDATE `page_list_fields` SET `deleted`='0' WHERE `id`='83751d1f-5d65-11e7-9dab-c85b76d4d416';

update page_list_conditions set deleted=1 where page_list_id='cd11034f-5d5f-11e7-9dcf-c85b76d4d416';
update page_lists set formula=null where  id='cd11034f-5d5f-11e7-9dcf-c85b76d4d416';


