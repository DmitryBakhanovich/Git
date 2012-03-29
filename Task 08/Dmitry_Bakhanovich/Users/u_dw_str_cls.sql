drop user "u_dw_str_cls";

/*==============================================================*/
/* User: "u_dw_str_cls"                                         */
/*==============================================================*/
create user "u_dw_str_cls" 
  identified by "%PWD%";

grant CONNECT,RESOURCE to "u_dw_str_cls";