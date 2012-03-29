drop user U_DIM_OFFICES;

/*==============================================================*/
/* User: U_DIM_OFFICES                                                */
/*==============================================================*/
create user U_DIM_OFFICES 
  identified by "%PWD%"
    default tablespace ts_star_dim_offices_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_DIM_OFFICES;