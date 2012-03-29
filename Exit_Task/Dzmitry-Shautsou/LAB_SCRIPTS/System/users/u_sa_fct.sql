drop user u_sa_fct;

/*==============================================================*/
/* User: u_sa_fct                                                */
/*==============================================================*/
create user u_sa_fct 
  identified by "%PWD%"
    default tablespace ts_sa_fct _data_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_sa_fct;