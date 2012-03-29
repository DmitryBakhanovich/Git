alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_DIM_PROD;

drop table "u_dw_references".DIM_PRODUCTS cascade constraints;

/*==============================================================*/
/* Table: DIM_PRODUCTS                                          */
/*==============================================================*/
create table "u_dw_references".DIM_PRODUCTS 
(
   PROD_ID              NUMBER(6)            not null,
   PROD_NAME            VARCHAR2(50 BYTE),
   PROD_SUBCATEGORY     VARCHAR2(50 BYTE),
   PROD_SUBCATEGORY_ID  NUMBER,
   PROD_CATEGORY        VARCHAR2(50 BYTE),
   PROD_CATEGORY_ID     NUMBER,
   PROD_LIST_PRICE      NUMBER(8,2),
   PROD_LEVEL_CODE      VARCHAR2(30 BYTE),
   constraint PK_DIM_PRODUCTS primary key (PROD_ID)
);
