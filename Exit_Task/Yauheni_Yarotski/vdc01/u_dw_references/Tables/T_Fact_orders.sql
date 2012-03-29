--drop table "u_dw_references"."Order's_facts" cascade constraints;

/*==============================================================*/
/* Table: "Order's_facts"                                       */
/*==============================================================*/
create table "Order's_facts" 
(
   "Store_id"           NUMBER(10),
   "Store_location_id"  NUMBER(10),
   "Cust_id"            NUMBER(10),
   "Cust_education_level_id" NUMBER(10),
   "Cust_education_level3" VARCHAR2(200),
   "Geo_id"             NUMBER(10),
   "Time_id"            NUMBER(10),
   "Order's_count_for_day" NUMBER(10),
   "Order's_sum_for_day" NUMBER(10),
   "Order's_count_for_week" NUMBER(10),
   "Order's_sum_for_week" NUMBER(10)
);
