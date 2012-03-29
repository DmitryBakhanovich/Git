drop user U_DIM_GOODS;

/*==============================================================*/
/* User: U_DIM_GOODS                                                */
/*==============================================================*/
create user U_DIM_GOODS 
  identified by "%PWD%"
    default tablespace ts_star_dim_goods_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_DIM_GOODS;