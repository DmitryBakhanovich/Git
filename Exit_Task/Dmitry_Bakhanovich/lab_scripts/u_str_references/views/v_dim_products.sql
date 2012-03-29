drop view U_STR_REFERENCES."v_dim_products";

/*==============================================================*/
/* View: "v_dim_products"                                       */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_products" as
select
PROD_SUR_ID,
   PROD_ID,
   PROD_NAME,
   PROD_SUBCATEGORY,
   PROD_SUBCATEGORY_ID,
   PROD_CATEGORY,
   PROD_CATEGORY_ID,
   LEVEL_CODE,
   START_DATE,
   END_DATE
   from dim_products

with read only;