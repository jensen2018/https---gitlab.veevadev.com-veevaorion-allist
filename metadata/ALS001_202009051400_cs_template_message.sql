-- 新建cs_template_message
CREATE TABLE `cs_template_message` (
  `key` text DEFAULT NULL,
  `value` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 区分测试环境和正式环境mp中的id
-- 测试环境
-- truncate table cs_template_message;
-- INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('event_invitation','hJcfZemADiYeG61CRwCaGQ6Y1nGgISkbm50v_mn69Mc','1',now(),'0');
-- INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('electronic-document','bpYULYva1rFvfqEsqgRZdFDICjgJ96iMxL15bZniHP4','1',now(),'0');
-- INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('mp_app','wxb498218e83a3ee65','1',now(),'0');

-- 生产环境
truncate table cs_template_message;
INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('event_invitation','78YlpLynBFpFRLKbiopx7J9e9QjKlZf24QI5LxRNWd0','1',now(),'0');
INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('electronic-document','ikFed_F7UXFJ5O1900YuDgwD7n0nugjxz4hax_UUGoA','1',now(),'0');
INSERT INTO cs_template_message (`key`, `value`,  `created_by`,`created_on`,`deleted`) VALUES ('mp_app','wx1e370f9bb0bb8051','1',now(),'0');
