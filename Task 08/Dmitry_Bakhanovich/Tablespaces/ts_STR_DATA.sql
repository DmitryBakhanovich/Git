drop tablespace "ts_STR_DATA" including contents cascade constraints;

create tablespace "ts_STR_DATA"
datafile 'ts_STR_DATA.dat'
size 200M
 autoextend on next 50M
logging
segment space management auto;