drop user u_sal_dw_cl;

/*==============================================================*/
/* User: u_sal_dw_cl                                                */
/*==============================================================*/
create user u_sal_dw_cl 
  identified by "%PWD%"
    default tablespace ts_sal_dw_cl_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_sal_dw_cl;