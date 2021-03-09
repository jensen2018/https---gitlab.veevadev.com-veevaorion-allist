-- VOPS-10641 协访报表配置问题修复
update reports set python_config='{"timeline_field":"coaching_date","limit_months":null,"record_types":["call","event","coaching","guide_call","synergy_call"],"states":["sent_approval","approved","draft"]}' where id='72bfbfb5-2856-4f2b-9843-e07f7e469b09';

