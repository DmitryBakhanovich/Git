drop table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GEO_UN_CON" cascade constraints;

/*==============================================================*/
/* Table: "t_ext_countries_geo_un_con"                          */
/*==============================================================*/
create table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GEO_UN_CON" 
(
   "con_code"           NUMBER(3),
   "con_name"           VARCHAR2(60),
   "geo_code"           NUMBER(3),
   "geo_name"           VARCHAR2(60)
)
organization external (
    type oracle_loader
    default directory ext_references
    access parameters (RECORDS DELIMITED BY 0x'0D0A' NOBADFILE NODISCARDFILE NOLOGFILE FIELDS TERMINATED BY ';' MISSING FIELD VALUES ARE NULL ( CON_CODE INTEGER EXTERNAL , CON_NAME CHAR( 60 ) , GEO_CODE INTEGER EXTERNAL , GEO_NAME CHAR( 60 ) , ) )
    location ('iso_3166_geo_un_contries.tab')
)
reject limit unlimited;

comment on table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GEO_UN_CON" is
'External table for loading - Countries';
