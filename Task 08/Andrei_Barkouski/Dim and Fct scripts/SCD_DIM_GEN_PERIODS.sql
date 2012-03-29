alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

drop table SCD_DIM_GEN_PERIODS cascade constraints;

/*==============================================================*/
/* Table: SCD_DIM_GEN_PERIODS                                   */
/*==============================================================*/
create table SCD_DIM_GEN_PERIODS 
(
   PERIOD_SUR_ID        NUMBER               not null,
   PERIOD_ID            NUMBER,
   PERIOD_DESCRIPTION   VARCHAR2(10 BYTE),
   PERIOD_START_VAL     NUMBER(2),
   PERIOD_END_VAL       NUMBER(3),
   PERIOD_LEVEL_CODE    VARCHAR2(30 BYTE),
   constraint PK_SCD_DIM_GEN_PERIODS primary key (PERIOD_SUR_ID)
);
