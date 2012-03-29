drop table "u_dw_references".T_MONTHS cascade constraints;

/*==============================================================*/
/* Table: T_MONTHS                                              */
/*==============================================================*/
create table "u_dw_references".T_MONTHS 
(
   CALENDAR_MONTH_ID    NUMBER               not null,
   CALENDAR_MONTH_NUMBER NUMBER(2),
   CALENDAR_MONTH_NAME  VARCHAR2(20 BYTE),
   DAYS_IN_CAL_MONTH    NUMBER,
   END_OF_CAL_MONTH     DATE,
   constraint PK_T_MONTHS primary key (CALENDAR_MONTH_ID)
);
