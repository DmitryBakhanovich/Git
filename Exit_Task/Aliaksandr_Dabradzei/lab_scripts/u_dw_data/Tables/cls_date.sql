drop table "u_dw_data"."cls_date" cascade constraints;

/*==============================================================*/
/* Table: "cls_date"                                            */
/*==============================================================*/
create table "u_dw_data"."cls_date" 
(
   "day_id"             NUMBER(10,0)         not null,
   "day_name"           VARCHAR2(40 CHAR),
   "day_number_in_week" NUMBER(2,0),
   "day_number_in_month" NUMBER(2,0),
   "day_number_in_year" NUMBER(3),
   "week_id"            NUMBER(10,0)         not null,
   "week_number_in_month" NUMBER(2,0),
   "week_begin_date"    DATE,
   "week_ending_date"   DATE,
   "month_id"           NUMBER(10,0)         not null,
   "month_name"         VARCHAR2(40 CHAR),
   "month_number_in_year" NUMBER(2,0),
   "month_days_count"   NUMBER(2,0),
   "month_begin_date"   DATE,
   "month_end_date"     DATE,
   "quarter_id"         NUMBER(10,0)         not null,
   "quarter_number_in_year" NUMBER(2,0),
   "quarter_day_count"  NUMBER(2,0),
   "quarter_begin_date" DATE,
   "quarter_end_date"   DATE,
   "year_id"            NUMBER(10,0)         not null,
   "year_day_count"     NUMBER(3),
   "year_begin_date"    DATE,
   "year_end_date"      DATE
);
