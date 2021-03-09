# -*- coding: UTF-8 -*-
import logging
from orionbase.common.orion_function import get_connection
import MySQLdb
from dateutil.relativedelta import relativedelta
from django.utils import timezone
import datetime
from orionbase.common import models
logger = logging.getLogger(__name__)


def run(connection):
    yearmonth_list = is_first_cal()
    for yearmonth in yearmonth_list:
        current_year, current_month = [int(x) for x in yearmonth.split("-")]
        last_month = get_month(yearmonth, -1)
        lastyear_month = get_month(yearmonth, -12)
        this_quarter = get_quarter_month(yearmonth, 0)
        last_quarter = get_quarter_month(yearmonth, -1)
        lastyear_quarter = get_quarter_month(yearmonth, -4)
        current_ytd = get_ytd_month(current_year, current_month)
        lastyear_ytd = get_ytd_month(current_year - 1, current_month)
        # cs_type : A - 金额   B - 数量
        sql_insert_A_1 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_month,created_on)
        SELECT 
            S1.yearmonth AS yearmonth,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth,)
            cursor.execute(sql_insert_A_1, sql_args)

        sql_insert_A_2 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_last_month,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_last_month = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth,last_month)
            cursor.execute(sql_insert_A_2, sql_args)

        sql_insert_A_3 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_month_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_month_of_last_year = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_month)
            cursor.execute(sql_insert_A_3, sql_args)

        sql_insert_A_4 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_month,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.amount),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth = %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_month = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, yearmonth)
            cursor.execute(sql_insert_A_4, sql_args)

        sql_insert_A_5 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_quarter = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth,this_quarter)
            cursor.execute(sql_insert_A_5, sql_args)

        sql_insert_A_6 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_last_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_last_quarter = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, last_quarter)
            cursor.execute(sql_insert_A_6, sql_args)

        sql_insert_A_7 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_quarter_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_quarter_of_last_year = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_quarter)
            cursor.execute(sql_insert_A_7, sql_args)

        sql_insert_A_8 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.amount),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth in %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_quarter = S1.cs_sum_month;
                """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, this_quarter)
            cursor.execute(sql_insert_A_8, sql_args)

        sql_insert_A_9 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_ytd,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_ytd = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, current_ytd)
            cursor.execute(sql_insert_A_9, sql_args)

        sql_insert_A_10 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_ytd_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity * price),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_ytd_of_last_year = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_ytd)
            cursor.execute(sql_insert_A_10, sql_args)

        sql_insert_A_11 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_ytd,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'A',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.amount),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth in %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_ytd = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, current_ytd)
            cursor.execute(sql_insert_A_11, sql_args)

        sql_insert_B_1 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_month,created_on)
        SELECT 
            S1.yearmonth AS yearmonth,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth,)
            cursor.execute(sql_insert_B_1, sql_args)

        sql_insert_B_2 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_last_month,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_last_month = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, last_month)
            cursor.execute(sql_insert_B_2, sql_args)

        sql_insert_B_3 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_month_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth = %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_month_of_last_year = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_month)
            cursor.execute(sql_insert_B_3, sql_args)

        sql_insert_B_4 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_month,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.quantity),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth = %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_month = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, yearmonth)
            cursor.execute(sql_insert_B_4, sql_args)

        sql_insert_B_5 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_quarter = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, this_quarter)
            cursor.execute(sql_insert_B_5, sql_args)

        sql_insert_B_6 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_last_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_last_quarter = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, last_quarter)
            cursor.execute(sql_insert_B_6, sql_args)

        sql_insert_B_7 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_quarter_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_quarter_of_last_year = S1.cs_sum_month;
        """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_quarter)
            cursor.execute(sql_insert_B_7, sql_args)

        sql_insert_B_8 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_quarter,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.quantity),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth in %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_quarter = S1.cs_sum_month;
                """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, this_quarter)
            cursor.execute(sql_insert_B_8, sql_args)

        sql_insert_B_9 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_ytd,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_ytd = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, current_ytd)
            cursor.execute(sql_insert_B_9, sql_args)

        sql_insert_B_10 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_sum_ytd_of_last_year,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    sda.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(sda.confirmed_quantity),0.0) as cs_sum_month
            FROM
                sales_data_allocations sda
            LEFT JOIN accounts a ON a.id = sda.account_id
            LEFT JOIN packages pg ON pg.id = sda.package_id
            LEFT JOIN positions p ON p.id = sda.position_id 
            WHERE sda.yearmonth in %s
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_sum_ytd_of_last_year = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, lastyear_ytd)
            cursor.execute(sql_insert_B_10, sql_args)

        sql_insert_B_11 = """
        INSERT INTO cs_sales_data_summary(yearmonth,hospital_id,package_id,position_id,cs_type,cs_target_ytd,created_on)
        SELECT 
            %s,
            S1.a_id AS hospital_id,
            S1.pg_id AS package_id,
            S1.id AS position_id,
            'B',
            S1.cs_sum_month,
            NOW()
        FROM
            (SELECT 
                    st.yearmonth as yearmonth,
                    a.id AS a_id,
                    pg.id AS pg_id,
                    p.id,
                    IFNULL(SUM(st.quantity),0.0) as cs_sum_month
            FROM
                sales_targets st
            LEFT JOIN accounts a ON a.id = st.hospital_id
            LEFT JOIN packages pg ON pg.id = st.package_id
            LEFT JOIN positions p ON p.id = st.position_id 
            LEFT JOIN object_record_types ort ON ort.id = st.record_type_id 
            LEFT JOIN objects o ON o.id = ort.object_id 
            WHERE st.yearmonth in %s and ort.name='position_target' and o.name='sales_target'
            group by a.id,pg.id,p.id) AS S1
            ON DUPLICATE KEY UPDATE cs_target_ytd = S1.cs_sum_month;
            """
        with get_connection().cursor() as cursor:
            sql_args = (yearmonth, current_ytd)
            cursor.execute(sql_insert_B_11, sql_args)

def is_first_cal():
    current_yearmonth = datetime.date.today().strftime('%Y-%m')
    day = datetime.datetime.now().day
    yearmonth_list = []
    with get_connection().cursor() as cursor:
        cursor.execute("""select count(1) from cs_sales_data_summary""")
        row = cursor.fetchone()
        # 第一执行该task需要执行所有月份数据
        if row[0]==0:
            yearmonth_list = list(set(models.SalesDataAllocations.objects.filter(deleted=0).values_list('yearmonth',flat=True)))
        # 如果是当月1号，则还需要重新计算上个月销量和指标
        elif int(day) == 1:
            for i in range(-1,1):
                month = get_month(current_yearmonth,i)
                yearmonth_list.append(month)
        # 其余情况下只计算当月销量和指标
        else:
            yearmonth_list.append(current_yearmonth)
        logger.info('Start to delete data.')
        sql_deleted = """DELETE FROM `cs_sales_data_summary` WHERE `yearmonth` IN  %s"""
        cursor.execute(sql_deleted, (yearmonth_list,))
    return yearmonth_list

def get_month(yearmonth,data):
    current_yearmonth = datetime.datetime.strptime(yearmonth,"%Y-%m")
    calyearmonth = (current_yearmonth + relativedelta(months=data)).strftime('%Y-%m')
    return  calyearmonth

def get_quarter_month(current_yearmonth,data):
    current_year, current_month = [x for x in current_yearmonth.split("-")]
    quarter_list = [['01', '02', '03'],
                    ['04', '05', '06'],
                    ['07', '08', '09'],
                    ['10', '11', '12']]
    # 计算当前季度
    this_quarter = (int(current_month) - 1) // 3
    quarter = int(this_quarter) + int(data)
    cal_year = int(current_year) + int(quarter // 4)
    cal_quarter = quarter % 4
    month_list = ['%s-%s' % (cal_year, mon) for mon in quarter_list[cal_quarter]]
    return month_list

def get_ytd_month(year,month):
    months = ['%s-%s' % (year, '{:02d}'.format(mon+1)) for mon in range(month)]
    return months




if __name__ == "__main__":
    import os
    import MySQLdb
    from django.conf import settings

    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")
    conn = MySQLdb.connect(host=settings.DATABASES['default']['HOST'],
                           user=settings.DATABASES['default']['USER'],
                           passwd=settings.DATABASES['default']['PASSWORD'],
                           port=int(settings.DATABASES['default']['PORT']),
                           db=settings.DATABASES['default']['NAME'])
    run()
    conn.commit()