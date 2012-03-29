alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_OPER;

drop table "u_dw_references".DIM_OPERATIONS cascade constraints;

/*==============================================================*/
/* Table: DIM_OPERATIONS                                        */
/*==============================================================*/
create table "u_dw_references".DIM_OPERATIONS 
(
   OPERATION_ID         NUMBER(32)           not null,
   OPERATION_TYPE_ID    NUMBER(32),
   OPERATION_TYPE_DESC  VARCHAR2(5),
   OPERATION_TYPE_METHOD_ID NUMBER(5),
   OPERATION_TYPE_METHOD_DESC VARCHAR2(5),
   OPERATION_TYPE_MAX_AMOUNT NUMBER(32),
   OPERATION_TYPE_MIN_AMOUNT NUMBER(32),
   constraint PK_DIM_OPERATIONS primary key (OPERATION_ID)
);
