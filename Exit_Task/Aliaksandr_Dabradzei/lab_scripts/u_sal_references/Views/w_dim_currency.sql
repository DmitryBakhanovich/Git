drop view "u_sal_references".w_dim_currency;

/*==============================================================*/
/* View: w_dim_currency                                         */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_currency as
select currency_id,
curr_code,
curr_desc
from dim_currency;
