drop table "u_sal_references".dim_time_day cascade constraints;

/*==============================================================*/
/* Table: dim_time_day                                          */
/*==============================================================*/
create table "u_sal_references".dim_time_day 
(
   "time_id"            NUMBER(10,0)         not null,
   "day_name"           VARCHAR2(40 CHAR),
   "day_number_in_week" NUMBER(2,0),
   "day_number_in_month" NUMBER(2,0)          not null,
   "calendar_week_number" NUMBER(2,0),
   "fiscal_week_number" NUMBER(2,0),
   "week_ending_day"    VARCHAR2(40 CHAR),
   "calendar_month_number" NUMBER(2,0)          not null,
   "fiscal_month_number" NUMBER(2,0),
   "calendar_month_desc" VARCHAR2(200 CHAR),
   "fiscal_month_desc"  VARCHAR2(200 CHAR),
   "days_in_cal_month"  NUMBER(2,0),
   "days_in_fis_month"  NUMBER(2,0),
   "end_of_cal_month"   DATE,
   "end_of_fis_month"   DATE,
   "calendar_month_name" VARCHAR2(40 CHAR),
   "fiscal_month_name"  VARCHAR2(40 CHAR),
   "calendar_quarter_desc" VARCHAR2(200 CHAR),
   "fiscal_quarter_desc" VARCHAR2(200 CHAR),
   "days_in_cal_quarter" NUMBER(2,0),
   "days_in_fis_quarter" NUMBER(2,0),
   "end_of_cal_quarter" DATE,
   "end_of_fis_quarter" DATE,
   "calendar_quarter_number" NUMBER(2,0),
   "fiscal_quarter_number" NUMBER(2,0),
   "calendar_year"      NUMBER(4)            not null,
   "fiscal_year"        NUMBER(4),
   "days_in_cal_year"   NUMBER(3),
   "days_in_fis_year"   NUMBER(3),
   "end_of_cal_year"    DATE,
   "end_of_fisc_year"   DATE,
   constraint PK_DIM_TIME_DAY primary key ("time_id")
);
