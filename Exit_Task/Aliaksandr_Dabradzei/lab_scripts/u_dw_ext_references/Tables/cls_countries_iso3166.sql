drop table u_dw_ext_references."cls_countries_iso3166" cascade constraints;

/*==============================================================*/
/* Table: "cls_countries_iso3166"                               */
/*==============================================================*/
create table u_dw_ext_references."cls_countries_iso3166" 
(
   "con_code"           NUMBER(3),
   "con_name"           VARCHAR2(60),
   "con_3c_code"        VARCHAR2(3)
)
tablespace TS_REFERENCES_EXT_DATA_01;

comment on table u_dw_ext_references."cls_countries_iso3166" is
'Cleansing table for loading - Countries';

comment on column u_dw_ext_references."cls_countries_iso3166"."con_code" is
'iso 3166 country code';

comment on column u_dw_ext_references."cls_countries_iso3166"."con_name" is
'iso 3166 country name';

comment on column u_dw_ext_references."cls_countries_iso3166"."con_3c_code" is
'iso 3166 country 3c code';
