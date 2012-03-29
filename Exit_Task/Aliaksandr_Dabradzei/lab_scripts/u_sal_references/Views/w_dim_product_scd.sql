drop view "u_sal_references".w_dim_product_scd;

/*==============================================================*/
/* View: w_dim_product_scd                                      */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_product_scd as
select product_surr_id,
prod_id,
prod_code,
prod_desc,
prod_subcat_code,
prod_subcat_desc,
prod_cat_code,
prod_cat_desc,
prod_weight_class,
prod_pack_size,
prod_unit_of_meassure,
prod_status,
prod_min_price,
start_dt,
end_dt,
level_code
from dim_product_scd;
