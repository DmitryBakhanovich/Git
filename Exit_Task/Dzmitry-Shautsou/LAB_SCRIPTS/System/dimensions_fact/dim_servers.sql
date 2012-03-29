drop table DIM_SERVERS cascade constraints;

/*==============================================================*/
/* Table: DIM_SERVERS                                           */
/*==============================================================*/
create table DIM_SERVERS 
(
   SUR_ID               NUMBER               not null,
   SERVER_ID            NUMBER               not null,
   SERVER_NAME          VARCHAR(50),
   SERVER_DESC          VARCHAR2(250),
   CPU_MHZ              NUMBER,
   RAM_MB               NUMBER,
   CPU_AMOUNT           NUMBER,
   COUNTRY_ID           NUMBER,
   TYPE_ID              NUMBER,
   TYPE_DESC            VARCHAR2(25),
   constraint PK_DIM_SERVERS primary key (SUR_ID),
   constraint AK_KEY_1_DIM_SERV unique ()
);
