drop user "u_str_references";

/*==============================================================*/
/* User: "u_str_references"                                     */
/*==============================================================*/
create user "u_str_references" 
  identified by "%PWD%";

grant CONNECT,CREATE ANY VIEW,RESOURCE to "u_str_references";
