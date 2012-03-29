drop user "u_str_data";

/*==============================================================*/
/* User: "u_str_data"                                           */
/*==============================================================*/
create user "u_str_data" 
  identified by "%PWD%";

grant CONNECT,CREATE ANY VIEW,RESOURCE to "u_str_data";
