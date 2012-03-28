drop table "u_dw_data".T_QUARTERS cascade constraints;

/*==============================================================*/
/* Table: T_QUARTERS                                            */
/*==============================================================*/
create table "u_dw_data".T_QUARTERS 
(
   "quarter_id"         NUMBER(10,0)         not null,
   "quarter_number_in_year" NUMBER(2,0),
   "quarter_day_count"  NUMBER(2,0),
   "quarter_begin_date" DATE,
   "quarter_end_date"   DATE,
   constraint PK_T_QUARTERS primary key ("quarter_id")
);
