drop table "u_dw_references".DIM_CHANNELS cascade constraints;

/*==============================================================*/
/* Table: DIM_CHANNELS                                          */
/*==============================================================*/
create table "u_dw_references".DIM_CHANNELS 
(
   CHANNEL_ID           NUMBER               not null,
   CHANNEL_DESC         VARCHAR2(20 BYTE),
   CHANNEL_CLASS        VARCHAR2(20 BYTE),
   constraint PK_DIM_CHANNELS primary key (CHANNEL_ID)
);