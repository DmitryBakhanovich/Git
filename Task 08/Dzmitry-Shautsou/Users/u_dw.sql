drop user u_dw;

/*==============================================================*/
/* User: u_dw                                               */
/*==============================================================*/
create user u_dw 
  identified by "%PWD%"
    default tablespace ts_dw_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_dw;