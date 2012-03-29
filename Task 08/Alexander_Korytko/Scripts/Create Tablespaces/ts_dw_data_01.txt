drop tablespace TS_DW_DATA_01 including contents cascade constraints;

create tablespace TS_DW_DATA_01
datafile 'db_dw_data_01.dat'
size 300M
 autoextend on next 100M
logging
segment space management auto;
