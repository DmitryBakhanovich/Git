drop table "u_dw_references"."Customers_relatives" cascade constraints;

/*==============================================================*/
/* Table: "Customers_relatives"                                 */
/*==============================================================*/
create table "u_dw_references"."Customers_relatives" 
(
   "Relative_id"        NUMBER(10)           not null,
   "Relativet_First_Name" VARCHAR2(200),
   "Order_id2"          VARCHAR2(200),
   "Order_id3"          VARCHAR2(1),
   "Order_id4"          DATE,
   "Relative_education_level_id" NUMBER(10),
   "Relative_education_level" VARCHAR2(200),
   "Cust_education_level3" NUMBER(200),
   "Cust_education_level2" VARCHAR2(200),
   constraint PK_CUSTOMERS_RELATIVES primary key ("Relative_id")
);
