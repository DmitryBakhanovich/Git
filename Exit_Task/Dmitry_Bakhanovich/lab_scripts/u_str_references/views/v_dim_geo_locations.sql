drop view U_STR_REFERENCES."v_dim_geo_locations";

/*==============================================================*/
/* View: "v_dim_geo_locations"                                  */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_geo_locations" as
select
EO_SUR_ID,
   GEO_ID,
   COUNTRY_ID,
   COUNTRY_NAME,
   COUNTRY_CODE2,
   COUNTRY_CODE3,
   COUNTRY_SUBREGION,
   COUNTRY_SUBREGION_ID,
   COUNTRY_REGION_ID,
   COUNTRY_REGION,
   COUNTRY_REGION_CODE,
   CONTINENT_ID,
   CONTINENT_DESC,
   COUNTRY_UNIONS,
   COUNTRY_ECONOMICAL_GROUPS,
   BEG_DATA,
   END_DATA,
   LEVEL_CODE
   from dim_geo_locations
with read only;