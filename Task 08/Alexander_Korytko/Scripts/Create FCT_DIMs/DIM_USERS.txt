alter table "u_dw_references".FCT_TRANSACTIONS_MONTH
   drop constraint FK_FCT_TRAN_REFERENCE_DIM_USER;

drop table "u_dw_references".DIM_USERS cascade constraints;

/*==============================================================*/
/* Table: DIM_USERS                                             */
/*==============================================================*/
create table "u_dw_references".DIM_USERS 
(
   USER_ID              NUMBER(32)           not null,
   FIRST_NAME           VARCHAR2(32 BYTE),
   LAST_NAME            VARCHAR2(32 BYTE),
   GENDER               CHAR(5 BYTE),
   YEAR_OF_BIRTH        NUMBER(10),
   USER_BALANCE         NUMBER(32),
   constraint PK_DIM_USERS primary key (USER_ID)
);
