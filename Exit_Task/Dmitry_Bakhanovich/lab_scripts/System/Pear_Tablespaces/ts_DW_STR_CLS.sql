drop tablespace "ts_DW_STR_CLS" including contents cascade constraints;

create tablespace "ts_DW_STR_CLS"
datafile 'ts_DW_STR_CLS.dat'
size 150M
 autoextend on next 50
nologging
segment space management auto;