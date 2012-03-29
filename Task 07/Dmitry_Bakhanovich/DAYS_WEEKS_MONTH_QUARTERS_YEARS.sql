
drop table "u_dw_references"."DW.T_DAYS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_DAYS"                                           */
/*==============================================================*/
create table "u_dw_references"."DW.T_DAYS" 
(
   DAY_ID               NUMBER               not null,
   DAY_NUMBER_IN_WEEK   NUMBER,
   DAY_NUMBER_IN_MONTH  NUMBER,
   DAY_NUMBER_IN_YEAR   NUMBER,
   constraint "PK_DW.T_DAYS" primary key (DAY_ID)
);

--------------------------------------------------------------------------------

drop table "u_dw_references"."DW.T_WEEKS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_WEEKS"                                          */
/*==============================================================*/
create table "u_dw_references"."DW.T_WEEKS" 
(
   WEEK_ID              NUMBER               not null,
   CALENDAR_WEEK_NUMBER NUMBER,
   WEEK_ENDING_DATE     DATE,
   constraint "PK_DW.T_WEEKS" primary key (WEEK_ID)
);

--------------------------------------------------------------------------------

drop table "u_dw_references"."DW.T_MONTH" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_MONTH"                                          */
/*==============================================================*/
create table "u_dw_references"."DW.T_MONTH" 
(
   MONTH_ID             NUMBER               not null,
   CALENDAR_MONTH_NUMBER NUMBER,
   DAYS_IN_CAL_MONTH    NUMBER,
   END_OF_CAL_MONTH     DATE,
   BEG_OF_CAL_MONTH     DATE,
   constraint "PK_DW.T_MONTH" primary key (MONTH_ID)
);

--------------------------------------------------------------------------------

drop table "u_dw_references"."DW.T_QUARTERS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_QUARTERS"                                       */
/*==============================================================*/
create table "u_dw_references"."DW.T_QUARTERS" 
(
   QUARTER_ID           NUMBER               not null,
   CALENDAR_QUARTER_NUMBER NUMBER,
   DAYS_IN_CAL_QUARTER  NUMBER,
   END_OF_CAL_QUARTER   DATE,
   BEG_OF_CAL_QUARTER   DATE,
   constraint "PK_DW.T_QUARTERS" primary key (QUARTER_ID)
);

--------------------------------------------------------------------------------

drop table "u_dw_references"."DW.T_YEAR" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_YEAR"                                           */
/*==============================================================*/
create table "u_dw_references"."DW.T_YEAR" 
(
   YEAR_ID              NUMBER               not null,
   DAYS_IN_CAL_YEAR     NUMBER,
   BEG_OF_CAL_YEAR      DATE,
   END_OF_CAL_YEAR      DATE,
   CALENDAR_YEAR        NUMBER,
   constraint "PK_DW.T_YEAR" primary key (YEAR_ID)
);
