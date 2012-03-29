drop user U_DIM_CLIENTS;

/*==============================================================*/
/* User: U_DIM_CLIENTS                                                */
/*==============================================================*/
create user U_DIM_CLIENTS 
  identified by "%PWD%"
    default tablespace ts_star_dim_clientss_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_DIM_CLIENTS;