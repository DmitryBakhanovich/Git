drop table DIM_MONTHS cascade constraints;

/*==============================================================*/
/* Table: DIM_MONTHS                                            */
/*==============================================================*/
create table DIM_MONTHS 
(
   MONTH_ID             NUMBER               not null,
   MONTH_NAME           VARCHAR2(9),
   MONTH_NUMBER_IN_YEAR NUMBER(2),
   MONTH_DAYS_QUANTITY  NUMBER(2),
   MONTH_BEGIN_DATE     DATE,
   MONTH_END_DATE       DATE,
   constraint PK_DIM_MONTHS primary key (MONTH_ID)
);
