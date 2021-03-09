# coding=UTF-8
import logging
from django.db import connection
from orionbase.settings.celery import celery_app

logger = logging.getLogger('orion.call_complete')


@celery_app.task(name='call_complete')
def call_complete():
    with connection.cursor() as cursor:
        sql_map = """
            UPDATE calls 
                SET state = '585cb58f-7408-11e6-934d-5cc5d4b571d2' 
                WHERE
                    state != '585cb58f-7408-11e6-934d-5cc5d4b571d2' 
                    AND TIMESTAMPDIFF(day,created_on, now()) >= 2;
        """
        cursor.execute(sql_map)