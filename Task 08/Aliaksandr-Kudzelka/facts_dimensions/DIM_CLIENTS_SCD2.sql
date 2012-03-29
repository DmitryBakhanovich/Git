alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_CLIE;

drop table DIM_CLIENTS_SCD2 cascade constraints;

/*==============================================================*/
/* Table: DIM_CLIENTS_SCD2                                      */
/*==============================================================*/
create table DIM_CLIENTS_SCD2 
(
   CLIENT_ID            NUMBER(5),
   CLIENT_SUR_ID        NUMBER               not null,
   FIRST_NAME           VARCHAR2(10),
   LAST_NAME            VARCHAR2(10),
   DATE_OF_BIRTH        DATE,
   GENDER               CHAR(1),
   EMAIL                VARCHAR2(15),
   PHONE                NUMBER(15),
   PROFESSION           VARCHAR2(10),
   SOCIAL_STATUS        VARCHAR(15),
   constraint PK_DIM_CLIENTS_SCD2 primary key (CLIENT_SUR_ID)
);
