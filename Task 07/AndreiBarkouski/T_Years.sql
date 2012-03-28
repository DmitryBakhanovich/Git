drop table "u_dw_references".T_YEARS cascade constraints;

/*==============================================================*/
/* Table: T_YEARS                                               */
/*==============================================================*/
create table "u_dw_references".T_YEARS 
(
   CALENDAR_YEAR_ID     NUMBER               not null,
   CALENDAR_YEAR        NUMBER,
   DAYS_IN_CAL_YEAR     NUMBER(3),
   BEG_OF_CAL_YEAR      DATE,
   END_OF_CAL_YEAR      DATE,
   constraint PK_T_YEARS primary key (CALENDAR_YEAR_ID)
);
