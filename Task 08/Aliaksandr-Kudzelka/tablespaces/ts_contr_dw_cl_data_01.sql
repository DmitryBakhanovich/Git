drop tablespace "ts_contr_dw_cl_data_01" including contents cascade constraints;

create tablespace "ts_contr_dw_cl_data_01"
datafile 'ts_contr_dw_cl_data_01.dat'
size 150M
 autoextend on next 50
nologging
segment space management auto;