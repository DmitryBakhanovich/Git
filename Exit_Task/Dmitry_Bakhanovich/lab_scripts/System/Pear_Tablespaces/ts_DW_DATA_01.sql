drop tablespace "ts_DW_DATA_01" including contents cascade constraints;

create tablespace "ts_DW_DATA_01"
datafile 'db_qpt_dw_data_01.dat'
size 150M
 autoextend on next 50M
logging
segment space management auto;