alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

drop table "u_dw_references".SCD_DIM_CUSTOMERS cascade constraints;

/*==============================================================*/
/* Table: SCD_DIM_CUSTOMERS                                     */
/*==============================================================*/
create table "u_dw_references".SCD_DIM_CUSTOMERS 
(
   CUST_SUR_ID          NUMBER               not null,
   CUST_ID              NUMBER,
   CUST_FIRST_NAME      VARCHAR2(20 BYTE),
   CUST_LAST_NAME       VARCHAR2(40 BYTE),
   CUST_GENDER          CHAR(1 BYTE),
   CUST_YEAR_OF_BIRTH   NUMBER(4),
   CUST_MARITAL_STATUS  VARCHAR2(20 BYTE),
   CUST_EMAIL           VARCHAR2(30 BYTE),
   CUST_START_DATE      DATE,
   CUST_END_DATE        DATE,
   CUST_LEVEL_CODE      VARCHAR2(30 BYTE),
   constraint PK_SCD_DIM_CUSTOMERS primary key (CUST_SUR_ID)
);
