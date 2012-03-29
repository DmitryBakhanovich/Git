drop table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_ISO3166" cascade constraints;

/*==============================================================*/
/* Table: "t_ext_countries_iso3166"                             */
/*==============================================================*/
create table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_ISO3166" 
(
   "con_code"           NUMBER(3),
   "con_name"           VARCHAR2(60),
   "con_3c_code"        VARCHAR2(3)
)
organization external (
    type oracle_loader
    default directory ext_references
    access parameters (RECORDS DELIMITED BY 0x'0D0A' NOBADFILE NODISCARDFILE NOLOGFILE FIELDS TERMINATED BY ';' MISSING FIELD VALUES ARE NULL ( CON_CODE INTEGER EXTERNAL , CON_NAME CHAR( 60 ) , CON_3C_CODE CHAR( 3 ) ) )
    location ('iso_3166.tab')
)
reject limit unlimited;

comment on table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_ISO3166" is
'External table for loading - Countries';
