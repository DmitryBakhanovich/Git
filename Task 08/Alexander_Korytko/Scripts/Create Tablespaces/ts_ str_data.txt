drop tablespace TS_STR_DATA including contents cascade constraints;

create tablespace TS_STR_DATA
datafile 'db_str_data.dat'
size 100M
 autoextend on next 50M
logging
segment space management auto;
