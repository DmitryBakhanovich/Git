drop table u_dw_ext_references."cls_countries_geo_un" cascade constraints;

/*==============================================================*/
/* Table: "cls_countries_geo_un"                                */
/*==============================================================*/
create table u_dw_ext_references."cls_countries_geo_un" 
(
   "geo_code"           NUMBER(3),
   "p_geo_code"         NUMBER(3),
   "geo_name"           VARCHAR2(60),
   "geo_type"           VARCHAR2(3)
)
tablespace TS_REFERENCES_EXT_DATA_01;

comment on table u_dw_ext_references."cls_countries_geo_un" is
'Cleansing table for loading - Countries';

comment on column u_dw_ext_references."cls_countries_geo_un"."geo_code" is
'iso 3166 country geo code';

comment on column u_dw_ext_references."cls_countries_geo_un"."p_geo_code" is
'iso 3166 parent geo code';

comment on column u_dw_ext_references."cls_countries_geo_un"."geo_name" is
'iso 3166 country geo name';

comment on column u_dw_ext_references."cls_countries_geo_un"."geo_type" is
'iso 3166 country geo type';
