drop view "u_sal_references".w_dim_time_day;

/*==============================================================*/
/* View: w_dim_time_day                                         */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_time_day as
select time_id,
day_name,
day_number_in_week,
day_number_in_month,
calendar_week_number,
fiscal_week_number,
week_ending_day,
calendar_month_number,
fiscal_month_number,
calendar_month_desc,
fiscal_month_desc,
days_in_cal_month,
days_in_fis_month,
end_of_cal_month,
end_of_fis_month,
calendar_month_name,
fiscal_month_name,
calendar_quarter_desc,
fiscal_quarter_desc,
days_in_cal_quarter,
days_in_fis_quarter,
end_of_cal_quarter,
end_of_fis_quarter,
calendar_quarter_number,
fiscal_quarter_number,
calendar_year,
fiscal_year,
days_in_cal_year,
days_in_fis_year,
end_of_cal_year,
end_of_fisc_year
from dim_time_day;
