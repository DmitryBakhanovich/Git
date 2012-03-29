alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_OPER;

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_GEN_;

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_GEO;

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_USER;

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_GEN_;

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_CURR;

drop table "u_dw_references".FCT_TRANSACTIONS_MONTH cascade constraints;

/*==============================================================*/
/* Table: FCT_TRANSACTIONS_MONTH                                */
/*==============================================================*/
create table "u_dw_references".FCT_TRANSACTIONS_MONTH 
(
   OPERATION_ID         NUMBER(32),
   PERIOD_SUR_ID        NUMBER(32),
   GEO_SUR_ID           NUMBER(32),
   USER_ID              NUMBER(32),
   EVENT_DT             DATE,
   CURRENCY_SUR_ID      NUMBER(32),
   FCT_AMOUNT           NUMBER(32),
   constraint PK_FCT_TRANSACTIONS_MONTH primary key ()
);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_OPER foreign key (OPERATION_ID)
      references "u_dw_references".DIM_OPERATIONS (OPERATION_ID);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_GEN_ foreign key (PERIOD_SUR_ID)
      references "u_dw_references".DIM_GEN_PERIOD (PERIOD_SUR_ID);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_GEO foreign key (GEO_SUR_ID)
      references "u_dw_references".DIM_GEO (GEO_SUR_ID);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_USER foreign key (USER_ID)
      references "u_dw_references".DIM_USERS (USER_ID);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_GEN_ foreign key (EVENT_DT)
      references "u_dw_references".DIM_GEN_TIMES (EVENT_DT);

alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   add constraint FK_FCT_TRAN_REFERENCE_DIM_CURR foreign key (CURRENCY_SUR_ID)
      references "u_dw_references".DIM_CURRENCY_SCD (CURRENCY_SUR_ID);
