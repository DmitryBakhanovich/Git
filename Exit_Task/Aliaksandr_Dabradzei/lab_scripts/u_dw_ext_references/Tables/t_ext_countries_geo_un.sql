drop table "u_dw_ext_references"."t_ext_countries_geo_un" cascade constraints;

/*==============================================================*/
/* Table: "t_ext_countries_geo_un"                              */
/*==============================================================*/
create table "u_dw_ext_references"."t_ext_countries_geo_un" 
(
   "geo_code"           NUMBER(3),
   "p_geo_code"         NUMBER(3),
   "geo_name"           VARCHAR2(60),
   "geo_type"           VARCHAR2(3)
)
organization external (
    type oracle_loader
    default directory ext_references
    access parameters (RECORDS DELIMITED BY 0x'0D0A' NOBADFILE NODISCARDFILE NOLOGFILE FIELDS TERMINATED BY ';' MISSING FIELD VALUES ARE NULL ( GEO_CODE INTEGER EXTERNAL , P_GEO_CODE INTEGER EXTERNAL , GEO_NAME CHAR( 60 ) , GEO_TYPE CHAR( 3 ) ) )
    location ('iso_3166_geo_un.tab')
)
reject limit unlimited;

comment on table "u_dw_ext_references"."t_ext_countries_geo_un" is
'External table for loading - Countries';
