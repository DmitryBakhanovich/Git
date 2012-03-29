drop user "u_sa_operations";

/*==============================================================*/
/* User: "u_sa_operations"                                      */
/*==============================================================*/
create user "u_sa_operations" 
  identified by "%PWD%";

grant CONNECT,CREATE TABLE,CREATE VIEW,RESOURCE to "u_sa_operations";
