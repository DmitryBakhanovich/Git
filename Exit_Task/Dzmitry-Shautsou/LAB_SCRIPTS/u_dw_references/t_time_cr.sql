create table U_DW_REFERENCES.T_DAYS 
(
   DAY_ID               NUMBER               not null,
   DAY_NUM_IN_WEEK      NUMBER,
   DAY_NUM_IN_MONTH     NUMBER,
   DAY_NUM_IN_YEAR      NUMBER,
   constraint PK_T_DAYS primary key (DAY_ID)
);
-------------------------------------------------------------
create table U_DW_REFERENCES.T_WEEKS 
(
   WEEK_ID              NUMBER               not null,
   WEEK_NUM             NUMBER,
   WEEK_BEG             DATE,
   WEEK_END             DATE,
   constraint PK_T_WEEKS primary key (WEEK_ID)
);
---------------------------------------------------------------
create table U_DW_REFERENCES.T_MONTH 
(
   MONTH_ID             NUMBER               not null,
   CALENDAR_MONTH_NUMBER NUMBER,
   MONTH_DAY_AMOUNT     NUMBER,
   MONTH_BEG            DATE,
   MONTH_END            DATE,
   constraint PK_T_MONTH primary key (MONTH_ID)
);
-------------------------------------------------------------------
create table U_DW_REFERENCES.T_QUARTERS 
(
   QUAR_ID              NUMBER               not null,
   QUARTER_NUM          NUMBER,
   QUAR_DAYS_AMOUNT     NUMBER,
   QUAR_BEG             DATE,
   QUAR_END             DATE,
   constraint PK_T_QUARTERS primary key (QUAR_ID)
);
---------------------------------------------------------------------
create table U_DW_REFERENCES.T_YEAR 
(
   YEAR_ID              NUMBER               not null,
   YEAR_NUM             NUMBER,
   YEAR_DAYS_AMOUNT     NUMBER,
   constraint PK_T_YEAR primary key (YEAR_ID)
);
