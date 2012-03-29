alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_DIM_GEN_;

drop table "u_dw_references".DIM_GEN_TIME cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_TIME                                          */
/*==============================================================*/
create table "u_dw_references".DIM_GEN_TIME 
(
   EVENT_ID             DATE                 not null,
   DAY_NAME             VARCHAR2(9 BYTE),
   DAY_NUMBER_IN_WEEK   NUMBER(1),
   DAY_NUMBER_IN_MONTH  NUMBER(2),
   DAY_NUMBER_IN_YEAR   NUMBER(3),
   CALENDAR_WEEK_NUMBER NUMBER(2),
   WEEK_ENDING_DATE     DATE,
   CALENDAR_MONTH_NUMBER NUMBER(2),
   DAYS_IN_CAL_MONTH    NUMBER(2),
   END_OF_CAL_MONTH     DATE,
   CALENDAR_MONTH_NAME  VARCHAR2(20 BYTE),
   DAYS_IN_CAL_QUARTER  NUMBER(2),
   BEG_OF_CAL_QUARTER   DATE,
   END_OF_CAL_QUARTER   DATE,
   CALENDAR_QUARTER_NUMBER NUMBER(1),
   CALENDAR_YEAR        NUMBER,
   DAYS_IN_CAL_YEAR     NUMBER(3),
   BEG_OF_CAL_YEAR      DATE,
   END_OF_CAL_YEAR      DATE,
   constraint PK_DIM_GEN_TIME primary key (EVENT_ID)
);
