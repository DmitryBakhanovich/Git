drop table "u_dw_data".T_WEEKS cascade constraints;

/*==============================================================*/
/* Table: T_WEEKS                                               */
/*==============================================================*/
create table "u_dw_data".T_WEEKS 
(
   "week_id"            NUMBER(10,0)         not null,
   "week_number_in_month" NUMBER(2,0),
   "week_number_in_year" NUMBER(2,0),
   "week_begin_date"    DATE,
   "week_ending_date"   DATE,
   constraint PK_T_WEEKS primary key ("week_id")
);
