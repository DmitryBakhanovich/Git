--DROP TABLE T_DAYS;
SELECT * FROM T_YEARS;
create table T_YEARS
as 
select 
    sq_geo_t_id.NEXTVAL YEAR_ID, 
     calendar_year,
     days_in_cal_year,
     beg_of_cal_year,
     end_of_cal_year
     
   from
(
SELECT 
  TO_CHAR( sd + rn, 'YYYY' ) calendar_year,
  ( TO_DATE( '12/31/' || TO_CHAR( sd + rn, 'YYYY' ), 'MM/DD/YYYY' )
    - TRUNC( sd + rn, 'YEAR' ) ) days_in_cal_year,
  TRUNC( sd + rn, 'YEAR' ) beg_of_cal_year,
  TO_DATE( '12/31/' || TO_CHAR( sd + rn, 'YYYY' ), 'MM/DD/YYYY' ) end_of_cal_year
FROM
  ( 
    SELECT 
      TO_DATE( '12/31/2002', 'MM/DD/YYYY' ) sd,
      rownum rn
    FROM dual
      CONNECT BY level <= 200
  )
)