drop table "Dim_Time" cascade constraints;

/*==============================================================*/
/* Table: "Dim_Time"                                            */
/*==============================================================*/
create table "Dim_Time" 
(
   "Time_id"            DATE                 not null,
   "Day_name"           VARCHAR2(20),
   "Day_number_in_week" NUMBER(2),
   "Day_number_in_month" NUMBER(2),
   "Calendar_week_number" NUMBER(2),
   "Fiscal_week_number" NUMBER(2),
   "Week_ending_day"    DATE,
   "Week_ending_day_id" NUMBER(10),
   "Calendar_month_number" NUMBER(10),
   "Fiscal__month_number" NUMBER(10),
   "Calendar_month_desc" VARCHAR2(20),
   "Calendar_month_id"  NUMBER(10),
   "Fiscal__month_desc" VARCHAR2(20),
   "Fiscal__month_id"   NUMBER(10),
   "Days_in_cal_month"  NUMBER(10),
   "Days_in_fis_month"  NUMBER(10),
   "End_of_cal_month"   DATE,
   "End_of_fis_month"   DATE,
   "Calendar_month_name" VARCHAR2(20),
   "Calendar_quarter_desc" VARCHAR2(20),
   "Calendar_quarter_id" NUMBER(10),
   "Fiscal_quarter_desc" VARCHAR2(20),
   "Fiscal_quarter_id"  NUMBER(10),
   "Days_in_cal_quarter" NUMBER(10),
   "Days_in_fis_quarter" NUMBER(10),
   "End_of_cal_quarter" DATE,
   "End_of_fis_quarter" DATE,
   "Calendar_quarter_number" NUMBER(10),
   "Fiscal_quarter_number" NUMBER(10),
   "Calendar_year"      NUMBER(10),
   "Calendar_year_id"   NUMBER(10),
   "Fiscal_year"        NUMBER(10),
   "Fiscal_year_id"     NUMBER(10),
   "Days_in_cal_year"   NUMBER(10),
   "Days_in_fis_year"   NUMBER(10),
   "End_of_cal_year"    DATE,
   "End_of_fis_year"    DATE,
   constraint PK_DIM_TIME primary key ("Time_id")
);
