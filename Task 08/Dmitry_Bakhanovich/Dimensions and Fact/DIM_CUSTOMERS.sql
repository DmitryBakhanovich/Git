drop table "u_dw_references".DIM_CUSTOMERS cascade constraints;

/*==============================================================*/
/* Table: DIM_CUSTOMERS                                         */
/*==============================================================*/
create table "u_dw_references".DIM_CUSTOMERS 
(
   CUST_SUR_ID          NUMBER               not null,
   CUST_ID              NUMBER               not null,
   CUST_FIRST_NAME      VARCHAR2(20 BYTE),
   CUST_LAST_NAME       VARCHAR2(40 BYTE),
   CUST_GENDER          CHAR(1 BYTE),
   CUST_YEAR_OF_BIRTH   NUMBER(4),
   CUST_MARITAL_STATUS  VARCHAR2(20 BYTE),
   CUST_STREET_ADDRESS  VARCHAR2(40 BYTE),
   CUST_POSTAL_CODE     VARCHAR2(10 BYTE),
   CUST_CITY            VARCHAR2(30 BYTE),
   CUST_CITY_ID         NUMBER,
   CUST_EMAIL           VARCHAR2(30 BYTE),
   constraint PK_DIM_CUSTOMERS primary key (CUST_SUR_ID)
);

