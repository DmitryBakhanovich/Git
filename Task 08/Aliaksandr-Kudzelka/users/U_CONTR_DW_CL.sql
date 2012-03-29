drop user U_CONTR_DW_CL;

/*==============================================================*/
/* User: U_CONTR_DW_CL                                                */
/*==============================================================*/
create user U_CONTR_DW_CL 
  identified by "%PWD%"
    default tablespace ts_contr_dw_cl_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_CONTR_DW_CL;