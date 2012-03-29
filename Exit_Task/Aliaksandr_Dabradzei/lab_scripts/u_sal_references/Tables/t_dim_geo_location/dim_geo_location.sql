drop table "u_sal_references".dim_geo_location cascade constraints;

/*==============================================================*/
/* Table: dim_geo_location                                      */
/*==============================================================*/
create table "u_sal_references".dim_geo_location 
(
   "location_surr_id"   NUMBER(10,0)         not null,
   "loct_geo_id"        NUMBER(10,0)         not null,
   "loct_country_id"    NUMBER(10,0)         not null,
   "loct_country_desc"  VARCHAR2(200 CHAR),
   "loct_country_code2" VARCHAR2(30 CHAR),
   "loct_country_code3" VARCHAR2(30 CHAR),
   "loct_region_id"     NUMBER(10,0)         not null,
   "loct_region_desc"   VARCHAR2(200 CHAR),
   "loct_region_code"   VARCHAR2(30 CHAR),
   "loct_continent_id"  NUMBER(10,0)         not null,
   "loct_continent_desc" VARCHAR2(200 CHAR),
   "level_code"         VARCHAR2(30 CHAR),
   constraint PK_DIM_GEO_LOCATION primary key ("location_surr_id", "loct_geo_id")
);

alter table "u_sal_references".dim_geo_location
   add constraint CKC_LOCT_COUNTRY_CODE_DIM_GEO_ check ("loct_country_code2" is null or ("loct_country_code2" = upper("loct_country_code2")));

alter table "u_sal_references".dim_geo_location
   add constraint CKC_LOCT_COUNTRY_CODE_DIM_GEO_ check ("loct_country_code3" is null or ("loct_country_code3" = upper("loct_country_code3")));

alter table "u_sal_references".dim_geo_location
   add constraint CKC_LOCT_REGION_CODE_DIM_GEO_ check ("loct_region_code" is null or ("loct_region_code" = upper("loct_region_code")));

alter table "u_sal_references".dim_geo_location
   add constraint CKC_LEVEL_CODE_DIM_GEO_ check ("level_code" is null or ("level_code" = upper("level_code")));
