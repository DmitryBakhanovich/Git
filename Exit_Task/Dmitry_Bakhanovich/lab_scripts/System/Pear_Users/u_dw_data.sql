drop user "u_dw_data";

/*==============================================================*/
/* User: "u_dw_data"                                            */
/*==============================================================*/
create user "u_dw_data" 
  identified by "%PWD%"
    default tablespace TS_DW_DATA_01;

grant CONNECT,RESOURCE to "u_dw_data";