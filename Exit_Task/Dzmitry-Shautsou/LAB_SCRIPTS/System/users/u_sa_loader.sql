drop user u_sa_loader;

/*==============================================================*/
/* User: u_sa_loader                                                */
/*==============================================================*/
create user u_sa_loader 
  identified by "%PWD%"
    default tablespace ts_sa_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_sa_loader;