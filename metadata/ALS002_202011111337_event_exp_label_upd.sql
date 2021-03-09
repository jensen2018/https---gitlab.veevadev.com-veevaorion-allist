-- VOPS-10384【TK667808】艾力斯MS-会议费用类型名称调整
-- 设备租赁费改为设备租赁及其他费用
UPDATE `object_record_types` SET  `label`='设备租赁及其他费用', `modified_on`='2020-11-11 05:34:03' WHERE `id`='50ed0562-e030-11ea-bc49-0215c63fce1a' LIMIT 1 ;
