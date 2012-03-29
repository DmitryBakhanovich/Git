drop table DIM_CLIENTS_SCD cascade constraints;

/*==============================================================*/
/* Table: DIM_CLIENTS_SCD                                       */
/*==============================================================*/
create table DIM_CLIENTS_SCD 
(
   CLIENT_SUR_ID        NUMBER               not null,
   CLIENT_ID            NUMBER,
   FIRST_NAME           VARCHAR(25),
   LAST_NAME            VARCHAR(25),
   AGE                  NUMBER,
   GENDER               SMALLINT,
   TARIFF_ID            NUMBER,
   TARIFF_NAME          VARCHAR2(25),
   DATE_BEG             DATE,
   DATE_END             DATE,
   constraint PK_DIM_CLIENTS_SCD primary key (CLIENT_SUR_ID)
);
