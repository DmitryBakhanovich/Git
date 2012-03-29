alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

drop table "u_dw_references".SCD_DIM_GEOLOCATIONS cascade constraints;

/*==============================================================*/
/* Table: SCD_DIM_GEOLOCATIONS                                  */
/*==============================================================*/
create table "u_dw_references".SCD_DIM_GEOLOCATIONS 
(
   GEO_SUR_ID           NUMBER               not null,
   GEO_ID               NUMBER,
   GEO_COUNTRY_ID       NUMBER,
   GEO_COUNTRY_NAME     VARCHAR2(40 BYTE),
   GEO_COUNTRY_CODE2    CHAR(2 BYTE),
   GEO_COUNTRY_CODE3    CHAR(3 BYTE),
   GEO_REGION_ID        NUMBER,
   GEO_REGION_NAME      VARCHAR(20),
   GEO_REGION_CODE      VARCHAR2(3 BYTE),
   GEO_CONTINENT_ID     NUMBER,
   GEO_CONTINENT_NAME   VARCHAR2(20 BYTE),
   GEO_LEVEL_CODE       VARCHAR2(20 BYTE),
   GEO_START_DATE       DATE,
   GEO_END_DATE         DATE,
   constraint PK_SCD_DIM_GEOLOCATIONS primary key (GEO_SUR_ID)
);
