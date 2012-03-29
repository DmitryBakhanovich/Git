drop table "u_dw_references"."Sub_Stores" cascade constraints;

/*==============================================================*/
/* Table: "Sub_Stores"                                          */
/*==============================================================*/
create table "u_dw_references"."Sub_Stores" 
(
   "Sub_Store_id"       NUMBER(10)           not null,
   "Sub_Store_code"     NUMBER(10),
   "Order_id2"          VARCHAR2(200),
   "Order_id3"          NUMBER(10),
   constraint PK_SUB_STORES primary key ("Sub_Store_id")
);
