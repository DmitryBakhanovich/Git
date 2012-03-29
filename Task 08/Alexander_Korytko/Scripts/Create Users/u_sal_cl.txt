drop user "u_sal_cl";

/*==============================================================*/
/* User: "u_sal_cl"                                             */
/*==============================================================*/
create user "u_sal_cl" 
  identified by "%PWD%";

grant CONNECT,CREATE ANY TABLE,CREATE ANY VIEW,RESOURCE to "u_sal_cl";
