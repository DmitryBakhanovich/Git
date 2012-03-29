drop table DIM_QUARTERS cascade constraints;

/*==============================================================*/
/* Table: DIM_QUARTERS                                          */
/*==============================================================*/
create table DIM_QUARTERS 
(
   QUARTER_ID           NUMBER               not null,
   QUARTER_NUMBER_IN_YEAR NUMBER(1),
   QUARTER_DAYS_QUANTITY NUMBER(2),
   QUARTER_BEGIN_DATE   DATE,
   QUARTER_END_DATE     DATE,
   constraint PK_DIM_QUARTERS primary key (QUARTER_ID)
);
