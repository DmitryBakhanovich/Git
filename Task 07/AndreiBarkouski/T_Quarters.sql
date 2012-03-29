drop table "u_dw_references".T_QUARTERS cascade constraints;

/*==============================================================*/
/* Table: T_QUARTERS                                            */
/*==============================================================*/
create table "u_dw_references".T_QUARTERS 
(
   CALENDAR_QUARTER_ID  NUMBER               not null,
   CALENDAR_QUARTER_NUMBER NUMBER(1),
   BEG_OF_CAL_QUARTER   DATE,
   END_OF_QUARTER_NUMBER DATE,
   DAYS_IN_CAL_QUARTER  NUMBER(2),
   constraint PK_T_QUARTERS primary key (CALENDAR_QUARTER_ID)
);
