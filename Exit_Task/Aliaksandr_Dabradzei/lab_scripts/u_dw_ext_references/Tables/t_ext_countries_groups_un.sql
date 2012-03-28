drop table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GROUPS_UN" cascade constraints;

/*==============================================================*/
/* Table: "t_ext_countries_groups_un"                           */
/*==============================================================*/
create table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GROUPS_UN" 
(
   "grp_code"           NUMBER(3),
   "p_grp_code"         NUMBER(3),
   "grp_name"           VARCHAR2(60),
   "grp_type"           VARCHAR2(3)
)
organization external (
    type oracle_loader
    default directory ext_references
    access parameters (RECORDS DELIMITED BY 0x'0D0A' NOBADFILE NODISCARDFILE NOLOGFILE FIELDS TERMINATED BY ';' MISSING FIELD VALUES ARE NULL ( GRP_CODE INTEGER EXTERNAL , P_GRP_CODE INTEGER EXTERNAL , GRP_NAME CHAR( 60 ) , GRP_TYPE CHAR( 3 ) ) )
    location ('iso_3166_groups_un.tab')
)
reject limit unlimited;

comment on table "U_DW_EXT_REFERENCES"."T_EXT_COUNTRIES_GROUPS_UN" is
'External table for loading - Countries';
