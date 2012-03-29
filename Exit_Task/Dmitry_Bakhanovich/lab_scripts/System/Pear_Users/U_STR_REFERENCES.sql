drop user U_STR_REFERENCES;

/*==============================================================*/
/* User: U_STR_REFERENCES                                       */
/*==============================================================*/
create user U_STR_REFERENCES 
  identified by "%PWD%"
    default tablespace ts_STR_REFERENCES;

grant CONNECT,CREATE VIEW,RESOURCE to U_STR_REFERENCES;