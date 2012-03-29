drop table "u_dw_references".FCT_SALES cascade constraints;

/*==============================================================*/
/* Table: FCT_SALES                                             */
/*==============================================================*/
create table "u_dw_references".FCT_SALES 
(
   QUANTITY_SOLD        NUMBER(10,2),
   AMOUNT_SOLD          NUMBER(10,2)
);

