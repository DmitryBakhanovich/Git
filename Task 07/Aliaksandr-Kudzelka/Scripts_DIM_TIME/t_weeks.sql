drop table DIM_WEEKS cascade constraints;

/*==============================================================*/
/* Table: DIM_WEEKS                                             */
/*==============================================================*/
create table DIM_WEEKS 
(
   WEEK_ID              NUMBER               not null,
   WEEK_NUMBER_IN_YEAR  NUMBER(2),
   WEEK_BEGIN_DATE      DATE,
   WEEK_END_DATE        DATE,
   constraint PK_DIM_WEEKS primary key (WEEK_ID)
);
