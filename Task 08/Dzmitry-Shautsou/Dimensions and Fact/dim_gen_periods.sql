drop table DIM_GEN_PERIODS cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_PERIODS                                       */
/*==============================================================*/
create table DIM_GEN_PERIODS 
(
   PERIOD_ID            NUMBER               not null,
   LEVEL_CODE           VARCHAR2(50),
   START_VALUE          NUMBER,
   END_VALUE            NUMBER,
   PERIOD_DESC          VARCHAR2(50),
   constraint PK_DIM_GEN_PERIODS primary key (PERIOD_ID)
);
