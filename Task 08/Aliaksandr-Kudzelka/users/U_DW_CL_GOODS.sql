drop user U_DW_CL_GOODS;

/*==============================================================*/
/* User: U_DW_CL_GOODS                                                */
/*==============================================================*/
create user U_DW_CL_GOODS
  identified by "%PWD%"
    default tablespace ts_dw_cl_goods_data_01;

grant CONNECT, CREATE TABLE, DROP TABLE, CREATE VIEW, DROP VIEW, RESOURCE to U_DW_CL_GOODS;