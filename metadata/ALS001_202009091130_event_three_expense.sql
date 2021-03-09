
-- 第三方费用修改 添加预付款 和尾款字段
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = '4d86b1ca-d846-431e-8c0a-0dda43a6b651');
UPDATE `object_database_columns` SET `used` = '1' WHERE (`id` = 'd6991a7b-bf01-459f-8092-99254401ffac');
UPDATE `object_fields` SET `name` = 'cs_imprest', `label` = '预付款' WHERE (`id` = 'a43290ae-4cbf-4775-8d2e-e2cc48fb5f30');
UPDATE `object_fields` SET `name` = 'cs_final_payment', `label` = '尾款' WHERE (`id` = 'bca9a5be-ed43-4cd4-b0c9-e5bfead2f3f4');


UPDATE `page_layout_fields` SET `label` = '总金额' WHERE (`id` = '3fe0e546-e0ff-11ea-bc49-0215c63fce1a');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('aad77d64-eb76-11ea-bc49-0215c63fce1a', 'e7b29e8c-e05c-11ea-bc49-0215c63fce1a', 'field', 'a43290ae-4cbf-4775-8d2e-e2cc48fb5f30', '预付款', '7', '12', '1', '0', 'both', '0', '1', '2020-02-27 00:00:00', '1', '2020-03-05 08:55:55');
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES ('aad781c8-eb76-11ea-bc49-0215c63fce1a', 'e7b29e8c-e05c-11ea-bc49-0215c63fce1a', 'field', 'bca9a5be-ed43-4cd4-b0c9-e5bfead2f3f4', '尾款', '9', '12', '0', '1', 'both', '0', '1', '2020-02-27 00:00:00', '1', '2020-03-05 08:55:55');
UPDATE `page_layout_fields` SET `order` = '11' WHERE (`id` = 'aad78449-eb76-11ea-bc49-0215c63fce1a');

UPDATE `object_validations` SET `trigger_code` = 'from orionbase.common import models\nfrom decimal import Decimal\n\nif isinstance(instance, models.Events):\n    event = instance\nelse:\n    event = instance.event\nclass ExpenseChecker(object):\n    @classmethod\n    def _avg(self, divisor, dividend):\n        return round(Decimal(divisor) / Decimal(dividend), 2)\n\n    @classmethod\n    def _sum(self, divisor, dividend):\n        return round(Decimal(divisor) * Decimal(dividend), 2)\n\n    @classmethod\n    def _sub(self, divisor, dividend):\n        return round(Decimal(divisor) - Decimal(dividend), 2)\n# 费用类型\nexpense_type = models.ObjectRecordTypes.objects.get(id=instance.record_type_id)\n\n# 会议类型名称\n\nif expense_type.name in (\'hotel_fee\', \'meal_fee\'):\n    # 会议，单价=金额/人数\n    if instance.total_expense and instance.number_1:\n        avg_expense = ExpenseChecker._avg(instance.total_expense, instance.number_1)\n        instance.number_2 = avg_expense\nelif expense_type.name in (\'cs_three_expense\'):\n    # 尾款 = 总金额 - 预付款\n    if instance.total_expense and instance.number_3:\n        sub_expense = ExpenseChecker._sub(instance.total_expense, instance.number_3)\n        instance.number_4 = sub_expense' WHERE (`id` = '4ef57ae1-e537-11e7-9372-186590dcd3c9');


UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = '5c1746aa-740e-4b5b-bdc5-f372ca294549');
UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'a43290ae-4cbf-4775-8d2e-e2cc48fb5f30');
UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'bca9a5be-ed43-4cd4-b0c9-e5bfead2f3f4');
UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'c0934862-f8e8-4ecd-bee6-bce2c4093b0a');
UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'f2468003-ea19-4790-a7db-34e988d22128');

UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'b5dad330-5ed9-11e6-b7c1-5cc5d4d378cb');
UPDATE `object_fields` SET `min_value` = '0' WHERE (`id` = 'b67c434f-5ed9-11e6-8b66-5cc5d4d378cb');
