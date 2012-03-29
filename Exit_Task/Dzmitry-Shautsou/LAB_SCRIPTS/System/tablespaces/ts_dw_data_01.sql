drop tablespace "ts_dw_data_01" including contents cascade constraints;

create tablespace "ts_dw_data_01"
datafile 'ts_dw_data_01.dat'
size 200M
 autoextend on next 100M
logging
segment space management auto;