drop table DIM_DAYS cascade constraints;

/*==============================================================*/
/* Table: DIM_DAYS                                              */
/*==============================================================*/
create table DIM_DAYS 
(
   DAY_ID               NUMBER               not null,
   DAY_NAME             VARCHAR2(9),
   DAY_NUMBER_IN_WEEK   NUMBER(1),
   DAY_NUMBER_IN_MONTH  NUMBER(2),
   DAY_NUMBER_IN_YEAR   NUMBER(3),
   ENDING_WEEK_DATE     DATE,
   constraint PK_DIM_DAYS primary key (DAY_ID)
);
