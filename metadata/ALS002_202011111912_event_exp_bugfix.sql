-- VOPS-10395 修复市场总监因为没有分配权限无法显示相关费用问题以及费用分组显示异常问题
update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section=ot.label
where  ot.label='第三方费用';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='交通费'
where  ot.label='其他交通费';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='住宿费'
where ot.label='住宿费';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='礼品费'
where  ot.label='礼品费';


update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='餐费'
where ot.label='餐费';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='交通费'
where  ot.label='交通费';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='其他'
where ot.label='其他';

update page_layout_assignments pa join page_layouts pl on pl.id=pa.page_layout_id and pl.page_id='b007a49f-2168-4ad5-ad4b-5d54ac61a14d'
join object_record_types ot on ot.id=pa.object_record_type_id join object_states os on os.id=pa.object_state_id
join roles r on r.id=pa.role_id
set pa.mini_layout_section='讲课费'
where ot.label='讲课费';

insert IGNORE into page_layout_assignments(id, role_id, object_record_type_id, object_state_id, page_layout_id, deleted, created_by, created_on, modified_by, modified_on, is_locked_by_state, allow_enter_mini_layout, mini_layout_section) values
('2f9f6fca-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','7539ddde-0985-4396-b4ca-641ae1e291a7','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f70c4-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','23a4e271-ea73-11e9-b9aa-0298a739dec0','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f713c-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f71aa-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','422631a3-ea73-11e9-b9aa-0298a739dec0','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f720e-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','f2e05b32-9f7f-4818-9947-a369b085c9ae','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f7272-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','f3f66e1d-14e0-4527-8bae-b72c1f15ef31','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f72d6-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','70fa1f05-8700-4cab-99d6-9e9cbe471867','4f5e8057-ef91-4af0-a940-3d6b438293c6','2eb6aecf-daee-4079-8385-a7dffa0515b8','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f733a-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','23a4e271-ea73-11e9-b9aa-0298a739dec0','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f739e-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','f2e05b32-9f7f-4818-9947-a369b085c9ae','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f7402-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','f3f66e1d-14e0-4527-8bae-b72c1f15ef31','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f7466-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','4f5e8057-ef91-4af0-a940-3d6b438293c6','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f74c0-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','7539ddde-0985-4396-b4ca-641ae1e291a7','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f7524-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','422631a3-ea73-11e9-b9aa-0298a739dec0','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f757e-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','50ed0562-e030-11ea-bc49-0215c63fce1a','ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c','50ed05a4-e030-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','设备租赁费'), 
('2f9f75e2-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f763c-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','4f5e8057-ef91-4af0-a940-3d6b438293c6','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f76a0-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','f2e05b32-9f7f-4818-9947-a369b085c9ae','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f7704-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','7539ddde-0985-4396-b4ca-641ae1e291a7','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f775e-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','23a4e271-ea73-11e9-b9aa-0298a739dec0','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f77c2-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','f3f66e1d-14e0-4527-8bae-b72c1f15ef31','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f781c-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','89f0ab23-8b04-422c-9f73-260d2f0ebe96','422631a3-ea73-11e9-b9aa-0298a739dec0','67e7f99e-f5af-4b7a-908b-f688e166f6e3','0','1',Now(),'1',Now(),NULL,'1','场地费'), 
('2f9f7880-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','23a4e271-ea73-11e9-b9aa-0298a739dec0','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f78e4-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','f3f66e1d-14e0-4527-8bae-b72c1f15ef31','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f793e-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','ac3d97d2-14d8-4ab1-b6b9-99d2fc2df51c','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f79a2-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','7539ddde-0985-4396-b4ca-641ae1e291a7','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f79fc-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','f2e05b32-9f7f-4818-9947-a369b085c9ae','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f7a60-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','4f5e8057-ef91-4af0-a940-3d6b438293c6','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f7ac4-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','e7b29cc6-e05c-11ea-bc49-0215c63fce1a','422631a3-ea73-11e9-b9aa-0298a739dec0','e7b29e8c-e05c-11ea-bc49-0215c63fce1a','0','1',Now(),'1',Now(),NULL,'1','第三方费用'), 
('2f9f7b28-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','c27358e6-ea66-11e9-b9aa-0298a739dec0','23a4e271-ea73-11e9-b9aa-0298a739dec0','e9328113-ea6a-11e9-b9aa-0298a739dec0','0','1',Now(),'1',Now(),NULL,'1','交通费'), 
('2f9f7b82-240e-11eb-b046-0a80ff2603de','b72453fc-efdb-11e9-b9aa-0298a739dec0','c27358e6-ea66-11e9-b9aa-0298a739dec0','f2e05b32-9f7f-4818-9947-a369b085c9ae','e9328113-ea6a-11e9-b9aa-0298a739dec0','0','1',Now(),'1',Now(),NULL,'1','交通费');
