drop table DIM_GEO_LOCATIONS cascade constraints;

/*==============================================================*/
/* Table: DIM_GEO_LOCATIONS                                     */
/*==============================================================*/
create table DIM_GEO_LOCATIONS 
(
   GEO_SUR_ID           NUMBER               not null,
   GEO_ID               NUMBER               not null,
   YEAR_ID              NUMBER               not null,
   YEAR_NUM             NUMBER,
   YEAR_DAYS_AMOUNT     NUMBER,
   COUNTRY              VARCHAR(25),
   REGION               VARCHAR(25),
   CONTINENT            VARCHAR(25),
   GEO_ID2              NUMBER,
   COUNTRY_ID           NUMBER               not null,
   COUNTRY_NAME         VARCHAR2(40 BYTE),
   COUNTRY_CODE2        VARCHAR2(3),
   COUNTRY_CODE3        VARCHAR2(3),
   COUNTRY_SUBREGION    VARCHAR2(30 BYTE),
   COUNTRY_SUBREGION_ID NUMBER,
   COUNTRY_UNIONS       VARCHAR2(20 BYTE),
   COUNTRY_REGION_ID    NUMBER,
   COUNTRY_REGION       VARCHAR2(20 BYTE),
   COUNTRY_REGION_CODE  VARCHAR2(3),
   CONTINENT_ID         NUMBER,
   CONTINENT_DESC       VARCHAR2(20 BYTE),
   COUNTRY_ECONOMICAL_GROUPS VARCHAR2(20 BYTE),
   BEG_DATA             DATE,
   END_DATA             DATE,
   LEVEL_CODE           VARCHAR2(20 BYTE),
   constraint PK_DIM_GEO_LOCATIONS primary key (GEO_SUR_ID)
);
