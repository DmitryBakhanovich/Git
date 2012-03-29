drop user U_SA_USERS;

/*==============================================================*/
/* User: U_SA_USERS                                                */
/*==============================================================*/
create user U_SA_USERS 
  identified by "%PWD%"
    default tablespace ts_sa_users_data_01;

grant CONNECT, CREATE TABLE, CREATE VIEW, RESOURCE to U_SA_USERS;