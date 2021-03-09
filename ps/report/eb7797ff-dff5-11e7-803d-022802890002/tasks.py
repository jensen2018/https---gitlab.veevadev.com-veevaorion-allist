import logging
# from django.db import connection
# import MySQLdb
logger = logging.getLogger(__name__)


def run(connection):
    # try:
    #     cursor = connection.cursor()

    with connection.cursor() as cursor:
        cursor.execute('TRUNCATE cs_underling; ')
        insert_sql1 = """
            REPLACE INTO cs_underling (position_id,underling_position_ids, updated_on)
                SELECT dsm.parent_id,dsm.underling_position_ids,NOW() FROM (
                    SELECT 
                        p.parent_id, 
                        GROUP_CONCAT(p.id) AS underling_position_ids
                    FROM 
                        positions  p
                    LEFT JOIN 
                        positions p2 
                            ON p.parent_id = p2.id 
                    WHERE 
                        p.deleted = 0 
                        AND p2.deleted = 0
                    GROUP BY 
                        p.parent_id
                ) AS dsm"""
        cursor.execute(insert_sql1)

    connection.commit()

#         connection.commit()
#     finally:
#         connection.close()
#
#
# if __name__ == "__main__":
#     import os
#     import MySQLdb
#     from django.conf import settings
#
#     os.environ.setdefault("DJANGO_SETTINGS_MODULE", "ps.test.settings")
#     conn = MySQLdb.connect(host="54.223.238.167",  # your host, usually localhost
#                            user="veevaps",  # your username
#                            passwd="xiaO&)5BuPyv",  # your password
#                            db="PSEdding")
#     run(conn)