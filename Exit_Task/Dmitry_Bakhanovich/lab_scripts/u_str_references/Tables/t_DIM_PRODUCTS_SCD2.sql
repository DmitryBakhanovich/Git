drop table U_STR_REFERENCES.DIM_PRODUCTS_SCD2 cascade constraints;

/*==============================================================*/
/* Table: DIM_PRODUCTS_SCD2                                     */
/*==============================================================*/
create table U_STR_REFERENCES.DIM_PRODUCTS_SCD2 
(
   PROD_SUR_ID          NUMBER               not null,
   PROD_ID              NUMBER(6)            not null,
   PROD_NAME            VARCHAR2(50 BYTE),
   PROD_SUBCATEGORY     VARCHAR2(50 BYTE),
   PROD_SUBCATEGORY_ID  NUMBER,
   PROD_CATEGORY        VARCHAR2(50 BYTE),
   PROD_CATEGORY_ID     NUMBER,
   LEVEL_CODE           VARCHAR2(20 BYTE),
   START_DATE           DATE,
   END_DATE             DATE,
   constraint PK_DIM_PRODUCTS_SCD2 primary key (PROD_SUR_ID)
);
