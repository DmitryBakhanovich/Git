drop table "u_sal_references".dim_gen_periods cascade constraints;

/*==============================================================*/
/* Table: dim_gen_periods                                       */
/*==============================================================*/
create table "u_sal_references".dim_gen_periods 
(
   "period_surr_id"     NUMBER(10,0)         not null,
   "per_id"             NUMBER(10,0)         not null,
   "per_desc"           VARCHAR2(200 CHAR),
   "start_value"        NUMBER(8),
   "end_value"          NUMBER(8)            default TO_DATE('31/12/9999','dd/mm/yyyy'),
   "level_code"         VARCHAR2(30 CHAR),
   constraint PK_DIM_GEN_PERIODS primary key ("period_surr_id", "per_id")
);

alter table "u_sal_references".dim_gen_periods
   add constraint CKC_LEVEL_CODE_DIM_GEN_ check ("level_code" is null or ("level_code" = upper("level_code")));
