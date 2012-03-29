drop tablespace "ts_STR_REFERENCES" including contents cascade constraints;

create tablespace "ts_STR_REFERENCES"
datafile 'ts_STR_REFERENCES.dat'
size 150M
 autoextend on next 50M
logging
segment space management auto;