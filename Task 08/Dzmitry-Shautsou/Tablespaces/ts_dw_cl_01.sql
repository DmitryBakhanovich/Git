drop tablespace "ts_dw_cl_data_01" including contents cascade constraints;

create tablespace "ts_dw_cl_data_01"
datafile 'ts_dw_cl_data_01.dat'
size 100M
 autoextend on next 50M
nologging
segment space management auto;