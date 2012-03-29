drop user "U_CONTR_CL";

/*==============================================================*/
/* User: "U_CONTR_CL"                                             */
/*==============================================================*/
create user "U_CONTR_CL" 
  identified by "%PWD%";

grant CONNECT,CREATE ANY TABLE,CREATE ANY VIEW,RESOURCE to "U_CONTR_CL";