drop table u_dw_ext_references."cls_countries_geo_un_con" cascade constraints;

/*==============================================================*/
/* Table: "cls_countries_geo_un_con"                            */
/*==============================================================*/
create table u_dw_ext_references."cls_countries_geo_un_con" 
(
   "con_code"           NUMBER(3),
   "con_name"           VARCHAR2(60),
   "geo_code"           NUMBER(3),
   "geo_name"           VARCHAR2(60)
)
tablespace TS_REFERENCES_EXT_DATA_01;

comment on table u_dw_ext_references."cls_countries_geo_un_con" is
'Cleansing table for loading - Countries';

comment on column u_dw_ext_references."cls_countries_geo_un_con"."con_code" is
'iso 3166 country code';

comment on column u_dw_ext_references."cls_countries_geo_un_con"."con_name" is
'iso 3166 country name';

comment on column u_dw_ext_references."cls_countries_geo_un_con"."geo_code" is
'iso 3166 country geo code';

comment on column u_dw_ext_references."cls_countries_geo_un_con"."geo_name" is
'iso 3166 country geo name';
