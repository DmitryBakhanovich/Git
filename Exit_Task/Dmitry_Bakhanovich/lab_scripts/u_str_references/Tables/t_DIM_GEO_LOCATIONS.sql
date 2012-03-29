drop table U_STR_REFERENCES.DIM_GEO_LOCATIONS cascade constraints;

/*==============================================================*/
/* Table: DIM_GEO_LOCATIONS                                     */
/*==============================================================*/
create table U_STR_REFERENCES.DIM_GEO_LOCATIONS 
(
   GEO_SUR_ID           NUMBER               not null,
   GEO_ID               NUMBER,
   COUNTRY_ID           NUMBER               not null,
   COUNTRY_NAME         VARCHAR2(40 BYTE),
   COUNTRY_CODE2        CHAR(2 BYTE),
   COUNTRY_CODE3        CHAR(2 BYTE),
   COUNTRY_SUBREGION    VARCHAR2(30 BYTE),
   COUNTRY_SUBREGION_ID NUMBER,
   COUNTRY_REGION_ID    NUMBER,
   COUNTRY_REGION       VARCHAR2(20 BYTE),
   COUNTRY_REGION_CODE  CHAR(2 BYTE),
   CONTINENT_ID         NUMBER,
   CONTINENT_DESC       VARCHAR2(20 BYTE),
   COUNTRY_UNIONS       VARCHAR2(20 BYTE),
   COUNTRY_ECONOMICAL_GROUPS VARCHAR2(20 BYTE),
   BEG_DATA             DATE,
   END_DATA             DATE,
   LEVEL_CODE           VARCHAR2(20 BYTE),
   constraint PK_DIM_GEO_LOCATIONS primary key (GEO_SUR_ID)
);
