drop tablespace TS_STR_REFERENCES including contents cascade constraints;

create tablespace TS_STR_REFERENCES
datafile 'db_str_references.dat'
size 100M
 autoextend on next 50M
logging
segment space management auto;
