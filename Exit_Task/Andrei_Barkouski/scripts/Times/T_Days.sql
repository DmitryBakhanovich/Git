drop table "u_dw_references".T_DAYS cascade constraints;

/*==============================================================*/
/* Table: T_DAYS                                                */
/*==============================================================*/
create table "u_dw_references".T_DAYS 
(
   DAY_ID               NUMBER               not null,
   DAY_NAME             VARCHAR2(10 BYTE),
   DAY_NUMBER_IN_WEEK   NUMBER(1),
   DAY_NUMBER_IN_MONTH  NUMBER(2),
   DAY_NUMBER_IN_YEAR   NUMBER(3),
   constraint PK_T_DAYS primary key (DAY_ID)
);
