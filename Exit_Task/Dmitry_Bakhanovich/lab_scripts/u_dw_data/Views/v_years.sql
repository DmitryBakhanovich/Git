drop view "u_dw_data".W_YEARS;

/*==============================================================*/
/* View: W_YEARS                                                */
/*==============================================================*/
create or replace view "u_dw_data".W_YEARS as
select year_id,
       year_number,
       year_day_count,
       year_begin_date,
       year_end_date
from u_dw_data.T_YEARS
with read only;
