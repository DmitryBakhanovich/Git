drop user "U_DW";

/*==============================================================*/
/* User: "U_DW"                                            */
/*==============================================================*/
create user "U_DW" 
  identified by "%PWD%"
    default tablespace ts_dw_data_01;

grant CONNECT,RESOURCE to "U_DW";