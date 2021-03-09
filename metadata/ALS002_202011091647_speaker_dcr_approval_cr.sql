-- VOPS-10360 市场部讲者审批流调整配置，追加组审批，判定如果是市场部，任意一个审批通过即可向下流转
INSERT INTO `cs_bu_to_market` (`id`, `daquzongjian_name`, `daquzongjian_code`, `quyushichang_name`, `quyushichang_code`, `created_on`, `modified_on`, `created_by`, `modified_by`) VALUES 
('6', '北区SD01', '北区SD01', '区域市场经理-N2', 'localMKT-N2', '2020-11-09', '2020-11-09', '1', '1');
