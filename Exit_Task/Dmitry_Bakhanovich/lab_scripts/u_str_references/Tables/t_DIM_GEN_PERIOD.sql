drop table U_STR_REFERENCES.DIM_GEN_PERIOD cascade constraints;

/*==============================================================*/
/* Table: DIM_GEN_PERIOD                                        */
/*==============================================================*/
create table U_STR_REFERENCES.DIM_GEN_PERIOD 
(
   PERIOD_SUR_ID        NUMBER               not null,
   ID                   NUMBER,
   DESCRIPTION          VARCHAR2(20 BYTE),
   BEGINNING            NUMBER,
   ENDING               NUMBER,
   LEVEL_CODE           VARCHAR2(20 BYTE),
   constraint PK_DIM_GEN_PERIOD primary key (PERIOD_SUR_ID)
);
