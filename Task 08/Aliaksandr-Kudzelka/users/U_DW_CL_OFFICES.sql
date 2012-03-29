drop user U_DW_CL_OFFICES;

/*==============================================================*/
/* User: U_DW_CL_OFFICES                                                */
/*==============================================================*/
create user U_DW_CL_OFFICES 
  identified by "%PWD%"
    default tablespace ts_dw_cl_offices_data_01;

grant CONNECT, CREATE TABLE, DROP TABLE, CREATE VIEW, DROP VIEW, RESOURCE to U_DW_CL_OFFICES;