drop table "u_sal_references".dim_currency cascade constraints;

/*==============================================================*/
/* Table: dim_currency                                          */
/*==============================================================*/
create table "u_sal_references".dim_currency 
(
   "currency_id"        NUMBER(3,0)          not null,
   "curr_code"          VARCHAR2(30 CHAR)    not null,
   "curr_desc"          VARCHAR2(200 CHAR),
   constraint PK_DIM_CURRENCY primary key ("currency_id")
);

alter table "u_sal_references".dim_currency
   add constraint CKC_CURR_CODE_DIM_CURR check ("curr_code" = upper("curr_code"));
