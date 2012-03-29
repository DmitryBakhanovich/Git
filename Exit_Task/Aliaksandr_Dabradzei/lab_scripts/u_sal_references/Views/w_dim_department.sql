drop view "u_sal_references".w_dim_department;

/*==============================================================*/
/* View: w_dim_department                                       */
/*==============================================================*/
create or replace view "u_sal_references".w_dim_department as
select department_id,
dept_code,
dept_desc,
dept_geo_id,
dept_manager_name
from dim_department;
