-- 增加患者数上报report
INSERT INTO `reports` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `name`, `source`, `height`, `scheduled`) VALUES 
('0', '1', NOW(), '1', NOW(), '4551a2c0-1200-498c-824e-72a1e12b17e9', '销量上报数分析', 'custom', 'mini', '1');

INSERT INTO `reports_assignments` (`deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id`, `display_order`, `report_id`, `role_id`, `page_type`) VALUES 
('0', '1', NOW(), '1', NOW(), '9fd91661-f8ab-48a2-81a7-d0681b4bd667', '1', '4551a2c0-1200-498c-824e-72a1e12b17e9', '20228999-b5ff-11ea-aab5-0215c63fce1a', 'embedded'),
('0', '1', NOW(), '1', NOW(), '8074f031-23ea-48f2-8aaa-7292003853a8', '1', '4551a2c0-1200-498c-824e-72a1e12b17e9', '53de9671-1da3-11e6-93fb-5cc5d4b57136', 'embedded'),
('0', '1', NOW(), '1', NOW(), '1bfc1c71-09c1-4984-9173-7ea4fd66720a', '1', '4551a2c0-1200-498c-824e-72a1e12b17e9', 'b74845ad-b5fe-11ea-aab5-0215c63fce1a', 'embedded'),
('0', '1', NOW(), '1', NOW(), '6aab5ef9-4c11-40b3-9681-81694de1718b', '1', '4551a2c0-1200-498c-824e-72a1e12b17e9', '53de6f5e-1da3-11e6-b011-5cc5d4b57134', 'embedded'),
('0', '1', NOW(), '1', NOW(), '8ac858a1-e2c6-4d65-8941-e811ff419322', '1', '4551a2c0-1200-498c-824e-72a1e12b17e9', '5a013aaa-b5c5-11ea-aab5-0215c63fce1a', 'embedded');

-- 销量上报小报表
update page_lists set report_id = '4551a2c0-1200-498c-824e-72a1e12b17e9' where id = '0bf3eb0b-2345-475a-bcb8-e04c08d12345';



update objects set data_visibility='position' where id = '2f9fd080-ee39-418d-b320-80bb7e6d57f6';

update object_validations
set trigger_code = '
from django.utils.timezone import utc, localtime
from django.utils import timezone
import datetime
if instance and not instance.date_1:
    now_date = datetime.datetime.now().date()
    instance.date_1 = now_date
if instance.owner and not instance.position_id:
    agent_position_id = models.UserPositions.advance_objects.get(user_id=instance.owner, is_default=1).position_id
    instance.position_id = agent_position_id
'
where id = 'hxf4ef70-e980-11e9-b9aa-0298a739d7eb';


delete from page_layout_assignments where id = '0045f671-1234-9080-32c31e8da0a2';
delete from page_layout_assignments where id = '0045f671-1234-9080-32c31e8da3ec';



update custom_object_15 co15
join user_positions up on up.user_id = co15.owner and up.is_default=1 
set co15.position_id = up.position_id
where co15.deleted = 0 and co15.position_id is null;