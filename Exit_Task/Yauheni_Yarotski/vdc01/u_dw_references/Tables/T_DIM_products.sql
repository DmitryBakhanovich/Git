drop table "Products" cascade constraints;

/*==============================================================*/
/* Table: "Products"                                            */
/*==============================================================*/
create table "Products" 
(
   "Prod_id"            NUMBER(10)           not null,
   "Prod_code"          VARCHAR2(200)        not null,
   "Prod_desc"          VARCHAR2(200)        not null,
   "Prod_type_id"       NUMBER(10)           not null,
   "Prod_conf_name"     VARCHAR2(200),
   "Prod_sub_type_id"   NUMBER(10)           not null,
   "Prod_type"          VARCHAR2(200)        not null,
   "Prod_conf_name_id"  NUMBER(10),
   "Prod_sub_type"      VARCHAR2(200)        not null,
   "Prod_apear_year"    DATE,
   constraint PK_PRODUCTS primary key ("Prod_id")
);
