drop view "u_dw_data".W_QUARTERS;

/*==============================================================*/
/* View: W_QUARTERS                                             */
/*==============================================================*/
create or replace view "u_dw_data".W_QUARTERS as
select quarter_id,
       quarter_number_in_year,
       quarter_day_count,
       quarter_begin_date,
       quarter_end_date
from u_dw_data.T_QUARTERS
with read only;
