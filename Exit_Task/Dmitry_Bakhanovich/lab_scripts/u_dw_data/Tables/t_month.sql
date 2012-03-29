drop table "u_dw_data".T_MONTH cascade constraints;

/*==============================================================*/
/* Table: T_MONTH                                               */
/*==============================================================*/
create table "u_dw_data".T_MONTH 
(
   "month_id"           NUMBER(10,0)         not null,
   "month_name"         VARCHAR2(40 CHAR),
   "month_number_in_year" NUMBER(2,0),
   "month_days_count"   NUMBER(2,0),
   "month_begin_date"   DATE,
   "month_end_date"     DATE,
   constraint PK_T_MONTH primary key ("month_id")
);
