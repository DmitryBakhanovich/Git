drop view "u_sal_references".w_dim_gen_period;

/*==============================================================*/
/* View: w_dim_gen_period                                       */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_gen_period as
select period_surr_id,
per_id,
per_desc,
start_value,
end_value,
level_code
from dim_gen_period;
