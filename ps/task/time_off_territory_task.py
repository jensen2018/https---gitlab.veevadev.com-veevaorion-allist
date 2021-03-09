#!/usr/bin/env python
# -*- coding:utf-8 -*-
import logging
from django.db import connection
from orionbase.settings.celery import celery_app

logger = logging.getLogger('orion.tasks')


@celery_app.task(name='time_off_territory_auto_submit')
def time_off_territory_submit():
    with connection.cursor() as cursor:
        sql_map = """
            UPDATE time_off_territories
            SET state_id = '6fa84682-a289-11e7-8d59-02d2a924e5ba'
            WHERE
                (
                    `date` < DATE_FORMAT(NOW(), '%Y-%m-%d')
                    OR (
                        DATE_FORMAT(
                            DATE_ADD(`date`, INTERVAL 1 DAY),
                            '%Y-%m-%d'
                        ) = DATE_FORMAT(NOW(), '%Y-%m-%d')
                    )
                )
            AND state_id = '6fa53cbc-a289-11e7-8d59-02d2a924e5ba';
        """
        cursor.execute(sql_map)
