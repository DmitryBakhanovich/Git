drop tablespace "ts_star_dim_offices_data_01" including contents cascade constraints;

create tablespace "ts_star_dim_offices_data_01"
datafile 'ts_star_dim_offices_data_01.dat'
size 100M
autoextend on next 50M
logging
segment space management auto;