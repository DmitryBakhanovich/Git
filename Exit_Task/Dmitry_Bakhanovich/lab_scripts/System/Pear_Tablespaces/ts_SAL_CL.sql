drop tablespace "ts_SAL_CL" including contents cascade constraints;

create tablespace "ts_SAL_CL"
datafile 'ts_SAL_CL.dat'
size 200M
 autoextend on next 50M
nologging
segment space management auto;