alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_DIM_CHAN;

alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_DIM_PROD;

alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_DIM_GEN_;

alter table "u_dw_references".FCT_SALES
   drop constraint FK_FCT_SALE_REFERENCE_SCD_DIM_;

drop table "u_dw_references".FCT_SALES cascade constraints;

/*==============================================================*/
/* Table: FCT_SALES                                             */
/*==============================================================*/
create table "u_dw_references".FCT_SALES 
(
   PROD_ID              NUMBER(6),
   EVENT_ID             DATE,
   CHANNEL_ID           NUMBER,
   CUST_SUR_ID          NUMBER,
   PERIOD_SUR_ID        NUMBER,
   GEO_SUR_ID           NUMBER,
   QUANTITY_SOLD        NUMBER(10,2),
   AMOUNT_SOLD          NUMBER(10,2)
);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_DIM_CHAN foreign key (CHANNEL_ID)
      references "u_dw_references".DIM_CHANNELS (CHANNEL_ID);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_DIM_PROD foreign key (PROD_ID)
      references "u_dw_references".DIM_PRODUCTS (PROD_ID);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_SCD_DIM_ foreign key (PERIOD_SUR_ID)
      references SCD_DIM_GEN_PERIODS (PERIOD_SUR_ID);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_SCD_DIM_ foreign key (CUST_SUR_ID)
      references "u_dw_references".SCD_DIM_CUSTOMERS (CUST_SUR_ID);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_DIM_GEN_ foreign key (EVENT_ID)
      references "u_dw_references".DIM_GEN_TIME (EVENT_ID);

alter table "u_dw_references".FCT_SALES
   add constraint FK_FCT_SALE_REFERENCE_SCD_DIM_ foreign key (GEO_SUR_ID)
      references "u_dw_references".SCD_DIM_GEOLOCATIONS (GEO_SUR_ID);
