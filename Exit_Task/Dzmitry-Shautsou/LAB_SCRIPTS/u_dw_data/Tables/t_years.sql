drop table "u_dw_data".T_YEARS cascade constraints;

/*==============================================================*/
/* Table: T_YEARS                                               */
/*==============================================================*/
create table "u_dw_data".T_YEARS 
(
   "year_id"            NUMBER(10,0)         not null,
   "year_number"        NUMBER(4),
   "year_day_count"     NUMBER(3),
   "year_begin_date"    DATE,
   "year_end_date"      DATE,
   constraint PK_T_YEARS primary key ("year_id")
);
