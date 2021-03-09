-- 修复艾力斯修改医生可以修改医院的问题
update page_layout_assignments  pa join roles r on r.id=pa.role_id left join object_record_types ot on ot.id=pa.object_record_type_id
left join object_states os on os.id=pa.object_state_id
left join page_layout_fields fp on fp.page_layout_id = pa.page_layout_id and fp.object_field_id='a1c776de-dc7f-11e6-93cb-e4b318c6b596'
set fp.is_mandatory=0,fp.is_readonly=1
 where pa.deleted=0 and ot.label='修改医生';




