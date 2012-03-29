drop table "u_sal_references".dim_product_scd cascade constraints;

/*==============================================================*/
/* Table: dim_product_scd                                       */
/*==============================================================*/
create table "u_sal_references".dim_product_scd 
(
   "product_surr_id"    NUMBER(10,0)         not null,
   "prod_id"            NUMBER(10,0)         not null,
   "prod_code"          VARCHAR2(30 CHAR)    not null,
   "prod_desc"          VARCHAR2(200 CHAR),
   "prod_subcat_code"   VARCHAR2(30 CHAR)    not null,
   "prod_subcat_desc"   VARCHAR2(200 CHAR),
   "prod_cat_code"      VARCHAR2(30 CHAR)    not null,
   "prod_cat_desc"      VARCHAR2(200 CHAR),
   "prod_weight_class"  VARCHAR2(200 CHAR),
   "prod_pack_size"     NUMBER(8,2),
   "prod_unit_of_meassure" VARCHAR2(200 CHAR),
   "prod_status"        VARCHAR2(200 CHAR)   not null,
   "prod_min_price"     NUMBER(8,2),
   "start_dt"           DATE,
   "end_dt"             DATE                 default 'TO_DATE(''31/12/9999'',''dd/mm/yyyy'')',
   "level_code"         VARCHAR2(30 CHAR),
   constraint PK_DIM_PRODUCT_SCD primary key ("product_surr_id", "prod_id")
);

alter table "u_sal_references".dim_product_scd
   add constraint CKC_PROD_CODE_DIM_PROD check ("prod_code" = upper("prod_code"));

alter table "u_sal_references".dim_product_scd
   add constraint CKC_PROD_SUBCAT_CODE_DIM_PROD check ("prod_subcat_code" = upper("prod_subcat_code"));

alter table "u_sal_references".dim_product_scd
   add constraint CKC_PROD_CAT_CODE_DIM_PROD check ("prod_cat_code" = upper("prod_cat_code"));

alter table "u_sal_references".dim_product_scd
   add constraint CKC_LEVEL_CODE_DIM_PROD check ("level_code" is null or ("level_code" = upper("level_code")));
