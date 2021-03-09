-- 修改销量导入时字段名称
alter table cs_sales_datas change  column date yearmonth varchar(24);