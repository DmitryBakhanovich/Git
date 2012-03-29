drop table DIM_TARIFFS cascade constraints;

/*==============================================================*/
/* Table: DIM_TARIFFS                                           */
/*==============================================================*/
create table DIM_TARIFFS 
(
   TARIFF_ID            NUMBER               not null,
   TARIFF_NAME          VARCHAR2(25),
   TARIFF_DESC          VARCHAR2(1024),
   IN_COST              NUMBER,
   OUT_COST             NUMBER,
   FEE                  NUMBER,
   constraint PK_DIM_TARIFFS primary key (TARIFF_ID)
);
