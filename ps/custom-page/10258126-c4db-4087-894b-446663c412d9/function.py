# coding=UTF-8
from django.db.models import Q
from orion.customsetting import get_setting
from orionbase.common import models
from orionbase.common.orion_enum import encoding
from orionbase.utils.utils import Convert
from django.db import connection
from orionbase.middelware.common import get_request

class CustomPageClass(object):
    def __init__(self):
        self.tenant = get_request().environ['HTTP_ORIGIN']

    
    def index(self, *args):

        sql_getgroup_str = """ select id,`module_label` from cs_standardization_implementation where `node_type`='group' order by `order`  ; """
        sql_get_is_fist = " select id from `PSCommonDev`.`cs_standardization_summary` where tenant ='{0}'; ".format(self.tenant)
        with connection.cursor() as cursor:
            cursor.execute(sql_get_is_fist)
            row_g = cursor.fetchall()
            # if row_g:
            #     sql_getmodule_str = """ select csi.id,`module_label`, ifnull(css.id,0)  ,`parent_id` from cs_standardization_implementation csi left join `PSCommonDev`.`cs_standardization_summary` css on csi.id = css.`standardization_implementation_id` and css.`tenant`='common' where `node_type`='module' ; """
            # else:
            #     sql_getmodule_str = """ select id,`module_label`,is_recommend ,`parent_id` from cs_standardization_implementation where `node_type`='module'; """
            if row_g:
                sql_getmodule_str = """ select distinct csi.module_name,`module_label`, ifnull(css.id,0)  ,`parent_id` from cs_standardization_implementation csi left join `PSCommonDev`.`cs_standardization_summary` css on csi.module_name = css.`standardization_implementation_module_name` and css.`tenant`='{0}' where `node_type`='module' order by `order`  ; """.format(self.tenant)
            else:
                sql_getmodule_str = """ select distinct module_name,`module_label`,is_recommend ,`parent_id` from cs_standardization_implementation where `node_type`='module' order by `order`  ; """
  
        with connection.cursor() as cursor:
            cursor.execute(sql_getgroup_str)
            row_g = cursor.fetchall()
            res = []
            cursor.execute(sql_getmodule_str)
            row_m = cursor.fetchall()
            marr = []
            if row_m:
                for g in row_g:
                    lm = []
                    for m in row_m:
                        if g[0] == m[3]:
                            bl = m[2]>0
                            rm = {"id":str(m[0]),"isTrue":str(bl).lower(),"name":m[1]}
                            lm.append(rm)
                            # marr.append(m[1])
                    rg = {"id":str(g[0]),"title":g[1],"list":lm}
             
                    res.append(rg)
        return res

    def save(self, *args):
        # args的参数可能继续向后扩展，如果你喜欢这样的写法，请使用切片，切记！！！如下：
        result='success'
        message=u'操作成功'
        try:
            params, request_data, request_user, request_method = args[:4]
            assert request_method == 'POST'
            request_data = request_data or []
            sql_insert = """ delete from PSCommonDev.`cs_standardization_summary` where tenant='{0}';  """.format(self.tenant)
            if request_data:
                sql_insert += """ INSERT INTO PSCommonDev.`cs_standardization_summary` ( `standardization_implementation_module_name`, `tenant`, `created_on`, `modified_on`, `created_by`, `modified_by`) VALUES """
                
                for l in request_data:
                    for m in request_data[l]:
                        sql_insert += """ ('{0}', '{1}', now(), now(), 1, 1), """.format(m['id'],self.tenant)
            sql_insert = sql_insert[:-1]
        
            with connection.cursor() as cursor:
                cursor.execute(sql_insert[:-1])
            sql_sign = """ 	 delete from metadata_migrate_history where `key` in (select`metadata_upgrade_history_key` from cs_standardization_implementation csi left join `PSCommonDev`.`cs_standardization_summary` css on csi.module_name = css.`standardization_implementation_module_name` where `node_type`='module' and css.`tenant`='{0}'); """.format(self.tenant)
            with connection.cursor() as cursor:
                cursor.execute(sql_sign)
            print 'request_data'
        except (Exception)as e:
            result = 'fail'
            message = u'操作失败'
        return {'result': result, 'message': message}
