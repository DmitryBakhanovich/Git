drop table "u_dw_references".DIM_GEN_TIMES cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_TIMES                                         */
/*==============================================================*/
create table "u_dw_references".DIM_GEN_TIMES 
(
   EVENT_ID             DATE                 not null,
   CALENDAR_YEAR_ID     NUMBER,
   CALENDAR_YEAR        NUMBER(4),
   DAYS_IN_CAL_YEAR     NUMBER,
   BEG_OF_CAL_YEAR      DATE,
   END_OF_CAL_YEAR      DATE,
   CALENDAR_QUARTER_ID  NUMBER,
   CALENDAR_QUARTER_NUMBER NUMBER(1),
   DAYS_IN_CAL_QUARTER  NUMBER,
   BEG_OF_CAL_QUARTER   DATE,
   END_OF_CAL_QUARTER   DATE,
   CALENDAR_MONTH_ID    NUMBER,
   CALENDAR_MONTH_NUMBER NUMBER(2),
   CALENDAR_MONTH_NAME  VARCHAR2(9 BYTE),
   DAYS_IN_CAL_MONTH    NUMBER,
   END_OF_CAL_MONTH     DATE,
   CALENDAR_WEEK_ID     NUMBER,
   CALENDAR_WEEK_NUMBER NUMBER,
   WEEK_ENDING_DATE     DATE,
   CALENDAR_DAY_ID      NUMBER,
   DAY_NAME             VARCHAR2(9 BYTE),
   DAY_NUMBER_IN_WEEK   NUMBER,
   DAY_NUMBER_IN_MONTH  NUMBER,
   DAY_NUMBER_IN_YEAR   NUMBER,
   constraint PK_DIM_GEN_TIMES primary key (EVENT_ID)
);

