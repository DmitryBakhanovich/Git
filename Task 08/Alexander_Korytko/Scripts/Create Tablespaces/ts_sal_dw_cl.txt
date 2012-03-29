drop tablespace TS_SAL_DW_CL including contents cascade constraints;

create tablespace TS_SAL_DW_CL
datafile 'db_sal_dw_cl.dat'
size 100M
 autoextend on next 50M
nologging
segment space management auto;
