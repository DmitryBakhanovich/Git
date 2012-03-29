alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_GEN_;

drop table "u_dw_references".DIM_GEN_PERIOD cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_PERIOD                                        */
/*==============================================================*/
create table "u_dw_references".DIM_GEN_PERIOD 
(
   PERIOD_SUR_ID        NUMBER(32)           not null,
   PERIOD_ID            NUMBER(32),
   PERIOD_DESC          VARCHAR2(32),
   BEGIN_VALUE          DATE,
   END_VALUE            DATE,
   LEVEL_CODE           VARCHAR2(32),
   constraint PK_DIM_GEN_PERIOD primary key (PERIOD_SUR_ID)
);
