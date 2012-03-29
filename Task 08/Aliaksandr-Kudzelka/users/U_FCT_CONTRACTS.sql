drop user U_FCT_CONTRACTS;

/*==============================================================*/
/* User: U_FCT_CONTRACTS                                                */
/*==============================================================*/
create user U_FCT_CONTRACTS 
  identified by "%PWD%"
    default tablespace ts_star_fct_contr_data_01;

grant CONNECT,CREATE VIEW,RESOURCE to U_FCT_CONTRACTS;