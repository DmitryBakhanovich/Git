drop table "u_dw_references"."DW.T_DAYS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_DAYS"                                           */
/*==============================================================*/
create table "u_dw_references"."DW.T_DAYS" 
(
   DAY_ID               NUMBER(10)           not null,
   DAY_DESC             NUMBER(10),
   DAY_NUMBER_IN_WEEK   NUMBER(10),
   DAY_NUMBER_IN_MONTH  NUMBER(10),
   DAY_NUMBER_IN_YEAR   NUMBER(10),
   constraint "PK_DW.T_DAYS" primary key (DAY_ID)
);

drop table "u_dw_references"."DW.T_WEEKS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_WEEKS"                                          */
/*==============================================================*/
create table "u_dw_references"."DW.T_WEEKS" 
(
   WEEK_ID              NUMBER(10)           not null,
   CALENDAR_WEEK_NUMBER NUMBER(10),
   WEEK_ENDING_DATE     DATE,
   constraint "PK_DW.T_WEEKS" primary key (WEEK_ID)
);

drop table "u_dw_references"."DW.T_QUARTERS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_QUARTERS"                                       */
/*==============================================================*/
create table "u_dw_references"."DW.T_QUARTERS" 
(
   QUARTER_ID           NUMBER(10)           not null,
   CALENDAR_QUARER_NUMBER NUMBER(10),
   DAYS_IN_CAL_QUARTER  NUMBER(10),
   BEGIN_OF_CAL_QUARTER DATE,
   END_OF_CAL_QUARTER   DATE,
   constraint "PK_DW.T_QUARTERS" primary key (QUARTER_ID)
);

drop table "u_dw_references"."DW.T_MONTH" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_MONTH"                                          */
/*==============================================================*/
create table "u_dw_references"."DW.T_MONTH" 
(
   MONTH_ID             NUMBER(10)           not null,
   CALENDAR_MONTH_NUMBER NUMBER(10),
   DAYS_IN_CAL_MONTH    DATE,
   END_OF_CAL_MONTH     DATE,
   constraint "PK_DW.T_MONTH" primary key (MONTH_ID)
);

drop table "u_dw_references"."DW.T_YEARS" cascade constraints;

/*==============================================================*/
/* Table: "DW.T_YEARS"                                          */
/*==============================================================*/
create table "u_dw_references"."DW.T_YEARS" 
(
   YEAR_ID              NUMBER(10)           not null,
   CALENDAR_YEAR        NUMBER(32),
   DAYS_IN_CAL_YEAR     NUMBER(32),
   BEGIN_OF_CAL_MONTH   DATE,
   END_OF_CAL_MONTH     DATE,
   constraint "PK_DW.T_YEARS" primary key (YEAR_ID)
);
