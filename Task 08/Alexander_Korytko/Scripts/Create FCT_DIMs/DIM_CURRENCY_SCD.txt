alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_CURR;

drop table "u_dw_references".DIM_CURRENCY_SCD cascade constraints;

/*==============================================================*/
/* Table: DIM_CURRENCY_SCD                                      */
/*==============================================================*/
create table "u_dw_references".DIM_CURRENCY_SCD 
(
   CURRENCY_SUR_ID      NUMBER(32)           not null,
   CURRENCY_ID          NUMBER(32),
   CURRENCY_TYPE_ID     NUMBER(10),
   CURRENCY_DESC        VARCHAR2(5),
   BEGIN_EVENT          DATE,
   END_EVENT            DATE,
   LEVEL_CODE           VARCHAR2(32),
   constraint PK_DIM_CURRENCY_SCD primary key (CURRENCY_SUR_ID)
);
