alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_LOCA;

drop table DIM_LOCATIONS cascade constraints;

/*==============================================================*/
/* Table: DIM_LOCATIONS                                         */
/*==============================================================*/
create table DIM_LOCATIONS 
(
   STATE_ID             NUMBER(5)            not null,
   STATE_NAME           VARCHAR2(10),
   STATE_CITY           VARCHAR2(7),
   STATE_CITY_ID        NUMBER(5),
   constraint PK_DIM_LOCATIONS primary key (STATE_ID)
);
