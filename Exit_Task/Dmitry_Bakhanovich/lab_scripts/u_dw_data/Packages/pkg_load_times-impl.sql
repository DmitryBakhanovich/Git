CREATE OR REPLACE PACKAGE BODY pkg_load_times

 AS
  PROCEDURE load_cls_date AS
  BEGIN
    --truncate cleansing tables
    EXECUTE IMMEDIATE 'TRUNCATE TABLE cls_data';
    --insert days
    INSERT INTO u_dw_data.cls_date
      (day_id
      ,day_name
      ,day_number_in_week
      ,day_number_in_month
      ,day_number_in_year
      ,week_id
      ,week_number_in_month
      ,week_begin_date
      ,week_end_date
      ,month_id
      ,month_name
      ,month_number_in_year
      ,month_days_count
      ,month_begin_date
      ,month_end_date
      ,quarter_id
      ,quarter_number_in_year
      ,quarter_day_count
      ,quarter_begin_date
      ,quarter_end_date
      ,year_id
      ,year_day_count
      ,year_begin_date
      ,year_end_date)
    
      SELECT TO_CHAR(sd + rn, 'yyyy-MM-dd') day_id
            ,TO_CHAR(sd + rn, 'fmDay') day_name
            ,TO_CHAR(sd + rn, 'D') day_number_in_week
            ,TO_CHAR(sd + rn, 'DD') day_number_in_month
            ,TO_CHAR(sd + rn, 'DDD') day_number_in_year
             
            ,TO_CHAR(sd + rn, 'yyyy-MM-W') week_id
            ,TO_CHAR(sd + rn, 'W') week_number_in_month
            ,(CASE
               WHEN TO_CHAR(sd + rn, 'D') IN (2, 3, 4, 5, 6, 7) THEN
                NEXT_DAY(sd + rn - 7, 'SUNDAY')
               ELSE
                (sd + rn)
             END) week_begin_date
            ,(CASE
               WHEN TO_CHAR(sd + rn, 'D') IN (1, 2, 3, 4, 5, 6) THEN
                NEXT_DAY(sd + rn, 'SATURDAY')
               ELSE
                (sd + rn)
             END) week_end_date
             
            ,TO_CHAR(sd + rn, 'yyyy-MM') month_id
            ,TO_CHAR(sd + rn, 'FMMonth') month_name
            ,TO_CHAR(sd + rn, 'MM') month_number_in_year
            ,TO_CHAR(LAST_DAY(sd + rn), 'DD') month_days_count
            ,TRUNC(sd + rn, 'MM') month_begin_date
            ,LAST_DAY(sd + rn) month_end_date
             
            ,TO_CHAR(sd + rn, 'yyyy-Q') quarter_id
            ,TO_CHAR(sd + rn, 'Q') quarter_number_in_year
            ,((CASE
               WHEN TO_CHAR(sd + rn, 'Q') = 1 THEN
                TO_DATE('03/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 2 THEN
                TO_DATE('06/30/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 3 THEN
                TO_DATE('09/30/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 4 THEN
                TO_DATE('12/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
             END) - TRUNC(sd + rn, 'Q') + 1) quarter_day_count
            ,TRUNC(sd + rn, 'Q') quarter_begin_date
            ,(CASE
               WHEN TO_CHAR(sd + rn, 'Q') = 1 THEN
                TO_DATE('03/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 2 THEN
                TO_DATE('06/30/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 3 THEN
                TO_DATE('09/30/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
               WHEN TO_CHAR(sd + rn, 'Q') = 4 THEN
                TO_DATE('12/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY')
             END) quarter_end_date
             
            ,TO_CHAR(sd + rn, 'YYYY') year_id
            ,(TO_DATE('12/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY') -
             TRUNC(sd + rn, 'YEAR')) year_day_count
            ,TRUNC(sd + rn, 'YEAR') year_begin_date
            ,TO_DATE('12/31/' || TO_CHAR(sd + rn, 'YYYY'), 'MM/DD/YYYY') year_end_date
        FROM (SELECT TO_DATE('12/31/2008', 'MM/DD/YYYY') sd, rownum rn
                FROM dual
              CONNECT BY LEVEL <= 2000);
    --Commit Data
    COMMIT;
  END load_cls_date;

  /*****/
  -- Load All days from 01/01/2009
  PROCEDURE load_days AS
  BEGIN
    INSERT INTO u_dw_data.t_days
      (day_id
      ,day_name
      ,day_number_in_week
      ,day_number_in_month
      ,day_number_in_year)
      SELECT DISTINCT day_id
                     ,day_name
                     ,day_number_in_week
                     ,day_number_in_month
                     ,day_number_in_year
        FROM u_dw_data.cls_date;
    COMMIT;
  END load_days;

  /*****/
  -- Load All weeks from 01/01/2009
  PROCEDURE load_weeks AS
  BEGIN
    INSERT INTO u_dw_data.t_weeks
      (week_id, week_number_in_month, week_begin_date, week_end_date)
      SELECT DISTINCT week_id
                     ,week_number_in_month
                     ,week_begin_date
                     ,week_end_date
        FROM u_dw_data.cls_date;
    COMMIT;
  END load_weeks;

  /*****/
  -- Load All month from 01/01/2009
  PROCEDURE load_month AS
  BEGIN
    INSERT INTO u_dw_data.t_month
      (month_id
      ,month_name
      ,month_number_in_year
      ,month_days_count
      ,month_begin_date
      ,month_end_date)
      SELECT DISTINCT month_id
                     ,month_name
                     ,month_number_in_year
                     ,month_days_count
                     ,month_begin_date
                     ,month_end_date
        FROM u_dw_data.cls_date;
    COMMIT;
  END load_month;

  /*****/
  -- Load All quarters from 01/01/2009
  PROCEDURE load_quarters AS
  BEGIN
    INSERT INTO u_dw_data.t_quarters
      (quarter_id
      ,quarter_number_in_year
      ,quarter_day_count
      ,quarter_begin_date
      ,quarter_end_date)
      SELECT DISTINCT quarter_id
                     ,quarter_number_in_year
                     ,quarter_day_count
                     ,quarter_begin_date
                     ,quarter_end_date
        FROM u_dw_data.cls_date;
    COMMIT;
  END load_quarters;

  /*****/
  -- Load All years from 01/01/2009
  PROCEDURE load_years AS
  BEGIN
    INSERT INTO u_dw_data.t_years
      (year_id, year_day_count, year_begin_date, year_end_date)
      SELECT DISTINCT year_id
                     ,year_day_count
                     ,year_begin_date
                     ,year_end_date
        FROM u_dw_data.cls_date;
    COMMIT;
  END load_years;

END;
/
