-- VOPS-10350【TK666016】 艾力斯MS-讲者账户信息维护银行卡校验(问题修复)
UPDATE `object_fields` SET `regexp_validation`='^([1-9])(\\d{11}|\\d{14}|\\d{15}|\\d{16}|\\d{17}|\\d{18})$' WHERE `id`='dd85b6d1-18bd-44c0-900f-f1d2708682c3';
UPDATE `object_fields` SET `regexp_validation`='^([1-9])(\\d{11}|\\d{14}|\\d{15}|\\d{16}|\\d{17}|\\d{18})$' WHERE `id`='488658fc-88f0-419e-9031-c81e29ef7eae';


