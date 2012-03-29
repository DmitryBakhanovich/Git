drop tablespace "ts_DW_CL" including contents cascade constraints;

create tablespace "ts_DW_CL"
datafile 'ts_DW_CL.dat'
size 100M
 autoextend on next 50M
nologging
segment space management auto;