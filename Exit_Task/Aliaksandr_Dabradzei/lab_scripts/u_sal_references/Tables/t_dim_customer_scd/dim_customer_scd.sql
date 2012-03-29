drop table "u_sal_references".dim_customer_scd cascade constraints;

/*==============================================================*/
/* Table: dim_customer_scd                                      */
/*==============================================================*/
create table "u_sal_references".dim_customer_scd 
(
   "customer_surr_id"   NUMBER(10,0)         not null,
   "cust_id"            NUMBER(10,0)         not null,
   "cust_first_name"    VARCHAR2(40 CHAR)    not null,
   "cust_last_name"     VARCHAR2(40 CHAR)    not null,
   "cust_year_of_birth" DATE                 not null,
   "cust_gender"        INTEGER              not null,
   "cust_martial_status" VARCHAR2(30),
   "cust_income_level"  NUMBER(8,2),
   "cust_credit_limit"  NUMBER(8,2),
   "cust_city_name"     VARCHAR2(40 CHAR),
   "start_dt"           DATE                 not null,
   "end_dt"             DATE                 default 'TO_DATE(''31/12/9999'',''dd/mm/yyyy'')' not null,
   "level_code"         VARCHAR2(30 CHAR)    not null,
   constraint PK_DIM_CUSTOMER_SCD primary key ("customer_surr_id", "cust_id")
);

alter table "u_sal_references".dim_customer_scd
   add constraint CKC_CUST_GENDER_DIM_CUST check ("cust_gender" in (1,0,-98,-99));

alter table "u_sal_references".dim_customer_scd
   add constraint CKC_LEVEL_CODE_DIM_CUST check ("level_code" = upper("level_code"));
