drop view "u_sal_references".w_dim_geo_location;

/*==============================================================*/
/* View: w_dim_geo_location                                     */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_geo_location as
select location_surr_id,
loct_geo_id,
loct_country_id,
loct_country_desc,
loct_country_code2,
loct_country_code3,
loct_region_id,
loct_region_desc,
loct_region_code,
loct_continent_id,
loct_continent_desc,
level_code
from dim_geo_location;
