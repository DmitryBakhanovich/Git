drop view "u_dw_data".W_WEEKS;

/*==============================================================*/
/* View: W_WEEKS                                                */
/*==============================================================*/
create or replace view "u_dw_data".W_WEEKS as
select week_id,
       week_number_in_month,
       week_number_in_year,
       week_begin_date,
       week_ending_date
from u_dw_data.T_WEEKS
with read only;
