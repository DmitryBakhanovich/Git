drop user U_DW_CL_CLIENTS;

/*==============================================================*/
/* User: U_DW_CL_CLIENTS                                                */
/*==============================================================*/
create user U_DW_CL_CLIENTS 
  identified by "%PWD%"
    default tablespace ts_dw_cl_clients_data_01;

grant CONNECT, CREATE TABLE, DROP TABLE, CREATE VIEW, DROP VIEW, RESOURCE to U_DW_CL_CLIENTS;