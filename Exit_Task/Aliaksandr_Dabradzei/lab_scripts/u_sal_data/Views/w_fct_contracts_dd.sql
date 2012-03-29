drop view "u_sal_data".w_fct_contracts_dd;

/*==============================================================*/
/* View: w_fct_contracts_dd                                     */
/*==============================================================*/
create or replace view "u_sal_data".w_fct_contracts_dd as
select event_dt,
period_surr_id,
customer_surr_id,
product_surr_id,
currency_id,
department_id,
location_surr_id,
contract_code,
quantity_sold,
amount_sold
from "u_sal_data".fct_contracts_dd;
