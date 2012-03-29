drop table "u_sal_references".dim_department cascade constraints;

/*==============================================================*/
/* Table: dim_department                                        */
/*==============================================================*/
create table "u_sal_references".dim_department 
(
   "department_id"      NUMBER(10,0)         not null,
   "dept_code"          VARCHAR2(30 CHAR)    not null,
   "dept_desc"          VARCHAR2(200 CHAR),
   "dept_geo_id"        NUMBER(10,0),
   "dept_manager_name"  VARCHAR2(40 CHAR)    not null,
   constraint PK_DIM_DEPARTMENT primary key ("department_id")
);

alter table "u_sal_references".dim_department
   add constraint CKC_DEPT_CODE_DIM_DEPA check ("dept_code" = upper("dept_code"));
