drop user U_SA_SALES;

/*==============================================================*/
/* User: U_SA_SALES                                             */
/*==============================================================*/
create user U_SA_SALES 
  identified by "%PWD%"
    default tablespace ts_sa_SALES_data_01;

grant CONNECT,RESOURCE to U_SA_SALES;