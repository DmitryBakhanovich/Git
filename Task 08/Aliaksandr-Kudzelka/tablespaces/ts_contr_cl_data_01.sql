drop tablespace "ts_contr_cl_data_01" including contents cascade constraints;

create tablespace "ts_contr_cl_data_01"
datafile 'ts_contr_cl_data_01.dat'
size 200M
 autoextend on next 50M
nologging
segment space management auto;