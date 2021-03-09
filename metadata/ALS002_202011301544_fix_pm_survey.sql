-- 修复目标医生申请问卷未能生效到目标医生数据问题
UPDATE `object_fields` SET `configurations`='{\"survey_mate_field\": \"evaluation\", \"survey_display_mode\": \"view\"}' WHERE `id`='01b6e770-7664-qe3d-bc45-5cc5d4d378cb';
