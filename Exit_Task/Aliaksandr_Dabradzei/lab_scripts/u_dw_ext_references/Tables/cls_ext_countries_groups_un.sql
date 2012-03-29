drop table u_dw_ext_references."cls_countries_groups_un" cascade constraints;

/*==============================================================*/
/* Table: "cls_countries_groups_un"                             */
/*==============================================================*/
create table u_dw_ext_references."cls_countries_groups_un" 
(
   "grp_code"           NUMBER(3),
   "p_grp_code"         NUMBER(3),
   "grp_name"           VARCHAR2(60),
   "grp_type"           VARCHAR2(3)
)
tablespace TS_REFERENCES_EXT_DATA_01;

comment on table u_dw_ext_references."cls_countries_groups_un" is
'Cleansing table for loading - Countries';

comment on column u_dw_ext_references."cls_countries_groups_un"."grp_code" is
'iso 3166 country group code';

comment on column u_dw_ext_references."cls_countries_groups_un"."p_grp_code" is
'iso 3166 parent group code';

comment on column u_dw_ext_references."cls_countries_groups_un"."grp_name" is
'iso 3166 country group name';

comment on column u_dw_ext_references."cls_countries_groups_un"."grp_type" is
'iso 3166 country group type';
