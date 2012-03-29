alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_GEN_;

drop table DIM_GEN_PERIODS cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_PERIODS                                       */
/*==============================================================*/
create table DIM_GEN_PERIODS 
(
   PERIOD_ID            NUMBER               not null,
   LEVEL_CODE           VARCHAR2(10),
   START_VALUE          NUMBER,
   END_VALUE            NUMBER,
   PERIOD_DESC          VARCHAR2(15),
   constraint PK_DIM_GEN_PERIODS primary key (PERIOD_ID)
);
