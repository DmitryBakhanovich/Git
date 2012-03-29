drop user u_dw_cl;

/*==============================================================*/
/* User: u_dw_cl                                                */
/*==============================================================*/
create user u_dw_clL 
  identified by "%PWD%"
    default tablespace ts_dw_cl_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_dw_cl;