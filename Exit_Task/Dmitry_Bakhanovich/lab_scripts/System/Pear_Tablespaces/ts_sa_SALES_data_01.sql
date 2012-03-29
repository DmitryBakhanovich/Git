drop tablespace "ts_sa_SALES_data_01" including contents cascade constraints;

create tablespace "ts_sa_SALES_data_01"
datafile 'ts_sa_SALES_data_01.dat'
size 150M
 autoextend on next 50M
logging
segment space management auto;