drop view "u_dw_data".W_DAYS;

/*==============================================================*/
/* View: W_DAYS                                                 */
/*==============================================================*/
create or replace view "u_dw_data".W_DAYS as
select day_id,
       day_date,
       day_name,
       day_number_in_week,
       day_number_in_month,
       day_number_in_year
from u_dw_data.T_DAYS
with read only;
