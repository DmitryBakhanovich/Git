drop user U_DW_CL;

/*==============================================================*/
/* User: U_DW_CL                                                */
/*==============================================================*/
create user U_DW_CL 
  identified by "%PWD%"
    default tablespace ts_DW_CL;

grant CONNECT,CREATE VIEW,RESOURCE to U_DW_CL;