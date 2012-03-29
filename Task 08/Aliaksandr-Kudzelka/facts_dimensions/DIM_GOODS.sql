alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_GOOD;

drop table DIM_GOODS cascade constraints;

/*==============================================================*/
/* Table: DIM_GOODS                                             */
/*==============================================================*/
create table DIM_GOODS 
(
   GOOD_ID              NUMBER(5)            not null,
   GOOD_NAME            VARCHAR2(10),
   GOOD_DESC            VARCHAR2(10),
   constraint PK_DIM_GOODS primary key (GOOD_ID)
);
