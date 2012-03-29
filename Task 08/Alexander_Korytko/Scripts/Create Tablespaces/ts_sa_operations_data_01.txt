drop tablespace TS_SA_OPERATIONS_DATA_01 including contents cascade constraints;

create tablespace TS_SA_OPERATIONS_DATA_01
datafile 'db_sa_operations_data_01.dat'
size 100M
 autoextend on next 50M
logging
segment space management auto;
