drop table "u_dw_references".T_WEEKS cascade constraints;

/*==============================================================*/
/* Table: T_WEEKS                                               */
/*==============================================================*/
create table "u_dw_references".T_WEEKS 
(
   CALENDAR_WEEK_ID     NUMBER               not null,
   CALENDAR_WEEK_NUMBER NUMBER(2),
   WEEK_ENDING_DATE     DATE,
   constraint PK_T_WEEKS primary key (CALENDAR_WEEK_ID)
);
