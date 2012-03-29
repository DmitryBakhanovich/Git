alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_TIME;

drop table DIM_TIME cascade constraints;

/*==============================================================*/
/* Table: DIM_TIME                                              */
/*==============================================================*/
create table DIM_TIME 
(
   EVENT_ID             DATE                 not null,
   DAY_NAME             VARCHAR2(9),
   DAY_NUMBER_IN_WEEK   NUMBER(1),
   DAY_NUMBER_IN_MONTH  NUMBER(2),
   DAY_NUMBER_IN_YEAR   NUMBER(3),
   ENDING_WEEK_DATE     DATE,
   WEEK_NUMBER_IN_YEAR  NUMBER(2),
   WEEK_BEGIN_DATE      DATE,
   WEEK_END_DATE        DATE,
   MONTH_NAME           VARCHAR2(9),
   MONTH_NUMBER_IN_YEAR NUMBER(2),
   MONTH_DAYS_QUANTITY  NUMBER(2),
   MONTH_BEGIN_DATE     DATE,
   MONTH_END_DATE       DATE,
   QUARTER_NUMBER_IN_YEAR NUMBER(1),
   QUARTER_DAYS_QUANTITY NUMBER(2),
   QUARTER_BEGIN_DATE   DATE,
   QUARTER_END_DATE     DATE,
   YEAR                 NUMBER(4),
   YEAR_DAYS_QUANTITY   NUMBER(3),
   YEAR_BEGIN_DATE      DATE,
   YEAR_END_DATE        DATE,
   constraint PK_DIM_TIME primary key (EVENT_ID)
);
