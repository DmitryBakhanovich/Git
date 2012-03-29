drop table "u_dw_references"."Stores" cascade constraints;

/*==============================================================*/
/* Table: "Stores"                                              */
/*==============================================================*/
create table "u_dw_references"."Stores" 
(
   "Store_id"           NUMBER(10)           not null,
   "Store_code"         NUMBER(10),
   "Order_id2"          VARCHAR2(200),
   "Order_id3"          NUMBER(10),
   "Store_sub_store_id" CHAR(10),
   constraint PK_STORES primary key ("Store_id")
);
