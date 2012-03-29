drop tablespace TS_DW_CL including contents cascade constraints;

create tablespace TS_DW_CL
datafile 'db_dw_cl.dat'
size 200M
 autoextend on next 50M
nologging
segment space management auto;
