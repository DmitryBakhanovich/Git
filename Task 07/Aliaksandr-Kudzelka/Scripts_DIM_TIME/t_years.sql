drop table DIM_YEARS cascade constraints;

/*==============================================================*/
/* Table: DIM_YEARS                                             */
/*==============================================================*/
create table DIM_YEARS 
(
   YEAR_ID              NUMBER               not null,
   YEAR                 NUMBER(4),
   YEAR_DAYS_QUANTITY   NUMBER(3),
   YEAR_BEGIN_DATE      DATE,
   YEAR_END_DATE        DATE,
   constraint PK_DIM_YEARS primary key (YEAR_ID)
);
