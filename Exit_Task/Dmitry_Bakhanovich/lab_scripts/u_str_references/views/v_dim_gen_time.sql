drop view U_STR_REFERENCES."v_dim_gen_time";

/*==============================================================*/
/* View: "v_dim_gen_time"                                       */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_gen_time" as
select
EVENT_ID,
   CALENDAR_YEAR_ID,
   CALENDAR_YEAR,
   DAYS_IN_CAL_YEAR,
   BEG_OF_CAL_YEAR,
   END_OF_CAL_YEAR,
   CALENDAR_QUARTER_ID,
   CALENDAR_QUARTER_NUMBER,
   DAYS_IN_CAL_QUARTER,
   BEG_OF_CAL_QUARTER,
   END_OF_CAL_QUARTER,
   CALENDAR_MONTH_ID,
   CALENDAR_MONTH_NUMBER,
   CALENDAR_MONTH_NAME,
   DAYS_IN_CAL_MONTH,
   END_OF_CAL_MONTH,
   CALENDAR_WEEK_ID,
   CALENDAR_WEEK_NUMBER,
   WEEK_ENDING_DATE,
   CALENDAR_DAY_ID,
   DAY_NAME,
   DAY_NUMBER_IN_WEEK,
   DAY_NUMBER_IN_MONTH,
   DAY_NUMBER_IN_YEAR
   from dim_gen_times
with read only;