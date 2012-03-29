drop user U_DIM_FUNERAL;

/*==============================================================*/
/* User: U_DIM_FUNERAL                                                */
/*==============================================================*/
create user U_DIM_FUNERAL 
  identified by "%PWD%"
    default tablespace ts_star_dim_funeral_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_DIM_FUNERAL;