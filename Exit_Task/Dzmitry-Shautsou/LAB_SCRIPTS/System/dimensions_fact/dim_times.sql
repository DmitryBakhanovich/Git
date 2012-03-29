drop table DIM_TIMES cascade constraints;

/*==============================================================*/
/* Table: DIM_TIMES                                             */
/*==============================================================*/
create table DIM_TIMES 
(
   TIME_ID              NUMBER               not null,
   DAY_NUM_IN_WEEK      NUMBER,
   DAY_NUM_IN_MONTH     NUMBER,
   DAY_NUM_IN_YEAR      NUMBER,
   WEEK_NUM             NUMBER,
   WEEK_BEG             DATE,
   WEEK_END             DATE,
   CALENDAR_MONTH_NUMBER NUMBER,
   MONTH_DAY_AMOUNT     NUMBER,
   MONTH_BEG            DATE,
   MONTH_END            DATE,
   QUARTER_NUM          NUMBER,
   QUAR_DAYS_AMOUNT     NUMBER,
   QUAR_BEG             DATE,
   QUAR_END             DATE,
   YEAR_NUM             NUMBER,
   YEAR_DAYS_AMOUNT     NUMBER,
   constraint PK_DIM_TIMES primary key (TIME_ID)
);
