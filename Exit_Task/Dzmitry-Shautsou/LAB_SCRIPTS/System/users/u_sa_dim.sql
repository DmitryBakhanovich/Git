drop user u_sa_dim;

/*==============================================================*/
/* User: u_sa_dim                                                */
/*==============================================================*/
create user u_sa_dim 
  identified by "%PWD%"
    default tablespace ts_sa_dim _data_01;

grant CONNECT,CREATE VIEW,RESOURCE to u_sa_dim;