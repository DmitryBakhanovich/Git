drop user U_SAL_CL;

/*==============================================================*/
/* User: U_SAL_CL                                               */
/*==============================================================*/
create user U_SAL_CL 
  identified by "%PWD%"
    default tablespace ts_SAL_CL;

grant CONNECT,CREATE VIEW,RESOURCE to U_SAL_CL;