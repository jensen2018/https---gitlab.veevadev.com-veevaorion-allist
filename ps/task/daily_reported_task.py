# coding=UTF-8
import logging
from django.db import connection
from orionbase.settings.celery import celery_app

logger = logging.getLogger('orion.tasks')

@celery_app.task(name='daily_reported_complete')
def daily_reported_complete():
    with connection.cursor() as cursor:
        sql_map = """
            UPDATE daily_reported_data 
                SET state_id = 'f2c5beca-97fb-4b41-82f0-03498fd6ea7e' 
                WHERE
                    state_id != 'f2c5beca-97fb-4b41-82f0-03498fd6ea7e';
        """
        cursor.execute(sql_map)
    # 自动更新销量上报状态
    with connection.cursor() as cursor:
        sql_map = """
            UPDATE custom_object_15 
                SET state_id = 'f2c5beca-97fb-4b41-82f0-03498fd6e08b' 
                WHERE
                    state_id != 'f2c5beca-97fb-4b41-82f0-03498fd6e08b';
        """
        cursor.execute(sql_map)