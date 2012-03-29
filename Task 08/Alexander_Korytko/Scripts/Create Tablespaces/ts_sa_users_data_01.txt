drop tablespace TS_SA_USERS_DATA_01 including contents cascade constraints;

create tablespace TS_SA_USERS_DATA_01
datafile 'db_sa_users_data_01.dat'
size 100M
 autoextend on next 50M
logging
segment space management auto;
