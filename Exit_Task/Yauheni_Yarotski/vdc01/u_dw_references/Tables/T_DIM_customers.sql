drop table "Dim_Customers" cascade constraints;

/*==============================================================*/
/* Table: "Dim_Customers"                                       */
/*==============================================================*/
create table "Dim_Customers" 
(
   "Cust_id"            NUMBER(10)           not null,
   "Cust_First_Name"    VARCHAR2(200),
   "Order_id2"          VARCHAR2(200),
   "Order_id3"          VARCHAR2(1),
   "Order_id4"          DATE,
   "Cust_education_level_id" NUMBER(10),
   "Cust_education_level" VARCHAR2(200),
   "Cust_education_level3" NUMBER(200),
   "Cust_education_level2" VARCHAR2(200),
   "Cust_location_id"   NUMBER(10),
   "Relative_id"        NUMBER(10),
   constraint PK_DIM_CUSTOMERS primary key ("Cust_id")
);
