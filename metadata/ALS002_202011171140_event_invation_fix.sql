-- VOPS-10434 邀请函主题修改
UPDATE `event_invitation_template` SET `share_logo`=NULL, `refer_fields`='{\"event_topic\": \"cs_event_theme\"}' WHERE `id`='2';
