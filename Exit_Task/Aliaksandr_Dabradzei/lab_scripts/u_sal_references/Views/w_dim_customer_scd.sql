drop view "u_sal_references".w_dim_customer_scd;

/*==============================================================*/
/* View: w_dim_customer_scd                                     */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_customer_scd as
select customer_surr_id,
cust_id,
cust_first_name,
cust_last_name,
cust_year_of_birth,
cust_gender,
cust_martial_status,
cust_income_level,
cust_credit_limit,
cust_city_name,
start_dt,
end_dt,
level_code 
from dim_customer_scd;
