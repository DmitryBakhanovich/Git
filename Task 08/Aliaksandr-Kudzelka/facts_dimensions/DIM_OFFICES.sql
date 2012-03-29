alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_OFFI;

drop table DIM_OFFICES cascade constraints;

/*==============================================================*/
/* Table: DIM_OFFICES                                           */
/*==============================================================*/
create table DIM_OFFICES 
(
   OFFICE_ID            NUMBER(5)            not null,
   OFFICE_TYPE          NUMBER(5),
   OFFICE_ADDRESS       VARCHAR(25),
   OFFICE_DESC          VARCHAR2(15),
   constraint PK_DIM_OFFICES primary key (OFFICE_ID)
);
