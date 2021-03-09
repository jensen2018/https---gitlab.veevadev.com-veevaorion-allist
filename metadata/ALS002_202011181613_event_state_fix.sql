-- VOPS-10461【TK670176】艾力斯MS-会议列表页状态字段配置修复
UPDATE `page_list_fields` pf join page_lists p on p.id=pf.page_list_id  SET pf.`display_mode`='aside' 
WHERE pf.object_field_id='5ee062c7-481a-4fc4-8c89-3f7036e28825' and p.screen_size='small';
