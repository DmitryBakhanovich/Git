alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_FUNE;

drop table DIM_FUNERALS cascade constraints;

/*==============================================================*/
/* Table: DIM_FUNERALS                                          */
/*==============================================================*/
create table DIM_FUNERALS 
(
   FUNERAL_ID           NUMBER(5)            not null,
   FUNERAL_TYPE         VARCHAR2(5),
   FUNERAL_PLACE        VARCHAR2(25),
   FUNERAL_PRIEST       SMALLINT,
   constraint PK_DIM_FUNERALS primary key (FUNERAL_ID)
);
