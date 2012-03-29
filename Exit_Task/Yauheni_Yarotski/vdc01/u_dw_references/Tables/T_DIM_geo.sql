drop table "Dim_geo_locationss" cascade constraints;

/*==============================================================*/
/* Table: "Dim_geo_locationss"                                  */
/*==============================================================*/
create table "Dim_geo_locationss" 
(
   "Geo_id"             NUMBER(10)           not null,
   "Geo_group_id"       NUMBER(10),
   "Geo_group_desc"     VARCHAR2(200),
   "Geo_sub_group_id"   NUMBER(10),
   "Geo_dub_group_desc" VARCHAR2(200),
   "Geo_system_code"    NUMBER(10),
   "Geo_system_desc"    VARCHAR2(200),
   "Geo_region_id"      NUMBER(10),
   "Geo_region_desc"    VARCHAR2(200),
   "Geo_country_code_a2" VARCHAR2(200),
   "Geo_country_code_a3" VARCHAR2(200),
   "Geo_country_id"     NUMBER(10),
   "Geo_country_desc"   VARCHAR2(200),
   constraint PK_DIM_GEO_LOCATIONSS primary key ("Geo_id")
);
