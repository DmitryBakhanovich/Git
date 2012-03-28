drop table "u_dw_data".T_DAYS cascade constraints;

/*==============================================================*/
/* Table: T_DAYS                                                */
/*==============================================================*/
create table "u_dw_data".T_DAYS 
(
   "day_id"             NUMBER(10,0)         not null,
   "day_date"           DATE,
   "day_name"           VARCHAR2(40 CHAR),
   "day_number_in_week" NUMBER(2,0),
   "day_number_in_month" NUMBER(2,0),
   "day_number_in_year" NUMBER(3),
   constraint PK_T_DAYS primary key ("day_id")
);
