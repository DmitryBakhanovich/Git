drop table FCT_SPENDINGS_D cascade constraints;

/*==============================================================*/
/* Table: FCT_SPENDINGS_D                                       */
/*==============================================================*/
create table FCT_SPENDINGS_D 
(
   TRAFFIC_IN           NUMBER,
   TRAFFIC_OUT          NUMBER,
   SPENDING             NUMBER,
   INOUT_PERCENT        NUMBER,
   TIME_ID              NUMBER,
   SERVER_ID            NUMBER,
   CLIENT_SUR_ID        NUMBER,
   TARIFF_ID            NUMBER,
   PERIOD_ID            NUMBER,
   GEO_SUR_ID           NUMBER,
   TRAFFIC_IN2          NUMBER,
   TRAFFIC_OUT2         NUMBER,
   SPENDING2            NUMBER,
   INOUT_PERCENT2       NUMBER
);
