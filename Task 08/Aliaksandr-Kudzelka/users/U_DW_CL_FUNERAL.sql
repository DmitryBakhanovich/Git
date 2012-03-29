drop user U_DW_CL_FUNERAL;

/*==============================================================*/
/* User: U_DW_CL_FUNERAL                                                */
/*==============================================================*/
create user U_DW_CL_FUNERAL 
  identified by "%PWD%"
    default tablespace ts_dw_cl_funeral_data_01;

grant CONNECT, CREATE TABLE, DROP TABLE, CREATE VIEW, DROP VIEW, RESOURCE to U_DW_CL_FUNERAL;