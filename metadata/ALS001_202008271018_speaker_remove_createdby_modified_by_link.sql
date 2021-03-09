-- 讲者列表及页面创建人、修改人去掉链接

-- 讲者
-- 创建人		aaeb0a6e-2f4c-4dc6-aa82-0645a871ddee
-- 修改人		c42d17b3-7c0d-4485-924e-823771d03a89
-- 讲者DCR
-- 创建人		a2e38e0b-f382-46d8-adf3-5a252bc6f573
-- 修改人		62dddb52-ea53-48fd-9980-797303117930

-- 讲者列表
update page_list_fields set disable_click = 1 where object_field_id in (
'aaeb0a6e-2f4c-4dc6-aa82-0645a871ddee',
'c42d17b3-7c0d-4485-924e-823771d03a89'
);

-- 讲者DCR详情
update page_layout_fields set disable_click = 1 where object_field_id in (
'a2e38e0b-f382-46d8-adf3-5a252bc6f573',
'62dddb52-ea53-48fd-9980-797303117930'
);

-- 讲者DCR列表
update page_list_fields set disable_click = 1 where object_field_id in (
'a2e38e0b-f382-46d8-adf3-5a252bc6f573',
'62dddb52-ea53-48fd-9980-797303117930'
);
