drop view "u_dw_data".W_MONTH;

/*==============================================================*/
/* View: W_MONTH                                                */
/*==============================================================*/
create or replace view "u_dw_data".W_MONTH as
select month_id,
       month_name,
       month_number_in_year,
       month_days_count,
       month_begin_date,
       month_end_date
from u_dw_data.T_MONTH
with read only;
