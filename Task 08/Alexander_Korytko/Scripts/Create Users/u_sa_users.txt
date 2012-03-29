drop user "u_sa_users";

/*==============================================================*/
/* User: "u_sa_users"                                           */
/*==============================================================*/
create user "u_sa_users" 
  identified by "%PWD%";

grant CONNECT,CREATE TABLE,CREATE VIEW,RESOURCE to "u_sa_users";
