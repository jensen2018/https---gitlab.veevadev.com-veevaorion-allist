-- 大区对应的区域市场经理的关系表
CREATE TABLE `cs_bu_to_market` (
  `id` int(11) NOT NULL COMMENT '主键',
  `daquzongjian_name` varchar(50) DEFAULT NULL COMMENT '大区总监的岗位名称',
  `daquzongjian_code` varchar(50) DEFAULT NULL COMMENT '大区总监的岗位code',
  `quyushichang_name` varchar(50) DEFAULT NULL COMMENT '对应区域市场经理的岗位名称',
  `quyushichang_code` varchar(50) DEFAULT NULL COMMENT '对应区域市场经理的岗位code',
  `created_on` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `modified_on` datetime(6) DEFAULT NULL COMMENT '修改时间',
  `created_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `modified_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 插入定时任务的执行周期，每1小时
INSERT INTO `djcelery_intervalschedule` (`id`, `every`, `period`)
VALUES
	(3, 1, 'hours');
-- 插入定时任务，提醒超过三天未处理的审批人
INSERT INTO `djcelery_periodictask` (`id`, `name`, `task`, `args`, `kwargs`, `queue`, `exchange`, `routing_key`, `expires`, `enabled`, `last_run_at`, `total_run_count`, `date_changed`, `description`, `crontab_id`, `interval_id`)
VALUES
	(16, 'notifications_for_pending_approval_event', 'notifications_for_pending_approval_event', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2020-08-17 16:21:56.204716', 0, '2020-08-17 16:22:30.032664', '', NULL, 3);


-- 增加提醒信息fields，到所有报告阶段的审批中状态的会议查看页面
INSERT INTO `page_layout_fields` (`id`, `page_layout_id`, `type`, `object_field_id`, `label`, `order`, `colspan`, `is_mandatory`, `is_readonly`, `display_mode`, `configurations`, `deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`, `is_header`, `is_with_stars_mask`, `is_hidden`, `is_highlight`, `if_affect_others`, `disable_click`, `note_field`, `hint_text`, `report_id`)
select uuid(),
       t.page_layout_id,
       'field',
       '322d92cd-d175-4b15-9b76-cae503d20fde',
       '审批对比信息',
       200,
       6,
       0,
       1,
       'view',
       NULL,
       0,
       1,
       '2020-08-22 11:11:11',
       1,
       '2020-08-22 11:11:11',
       NULL,
       0,
       NULL,
       NULL,
       NULL,
       NULL,
       NULL,
       NULL,
       NULL
from
  (select DISTINCT page_layout_id
   from page_layout_assignments
   where object_state_id = 'ba956880-5eee-11e6-8728-5cc5d4d378cb'
     and object_record_type_id in ('05b19885-efe9-11e9-b9aa-0298a739dec0',
                                   '52903a16-d238-437a-a480-23cd2a5ad741',
                                   'a2ae2ac5-c93a-4fcf-8834-e3592fe4ad48',
                                   'cffbdab8-101f-4775-96b7-3fa8baccd036',
                                   '21f2482f-e35f-11e9-b9aa-0298a739dec0')) t ;