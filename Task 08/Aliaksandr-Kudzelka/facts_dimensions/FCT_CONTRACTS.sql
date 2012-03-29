alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_GOOD;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_GEN_;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_CLIE;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_OFFI;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_LOCA;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_TIME;

alter table FCT_CONTRACTS
   drop constraint FK_FCT_CONT_REFERENCE_DIM_FUNE;

drop table FCT_CONTRACTS cascade constraints;

/*==============================================================*/
/* Table: FCT_CONTRACTS                                         */
/*==============================================================*/
create table FCT_CONTRACTS 
(
   EVENT_ID             DATE,
   OFFICE_ID            NUMBER(5)            not null,
   FUNERAL_ID           NUMBER(5),
   GOOD_ID              NUMBER(5),
   PERIOD_ID            NUMBER,
   CLIENT_SUR_ID        NUMBER,
   STATE_ID             NUMBER(5),
   SUMM_OF_CONTRACT     NUMBER(10)           not null,
   constraint PK_FCT_CONTRACTS primary key ()
);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_GOOD foreign key (GOOD_ID)
      references DIM_GOODS (GOOD_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_GEN_ foreign key (PERIOD_ID)
      references DIM_GEN_PERIODS (PERIOD_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_CLIE foreign key (CLIENT_SUR_ID)
      references DIM_CLIENTS_SCD2 (CLIENT_SUR_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_OFFI foreign key (OFFICE_ID)
      references DIM_OFFICES (OFFICE_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_LOCA foreign key (STATE_ID)
      references DIM_LOCATIONS (STATE_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_TIME foreign key (EVENT_ID)
      references DIM_TIME (EVENT_ID);

alter table FCT_CONTRACTS
   add constraint FK_FCT_CONT_REFERENCE_DIM_FUNE foreign key (FUNERAL_ID)
      references DIM_FUNERALS (FUNERAL_ID);
