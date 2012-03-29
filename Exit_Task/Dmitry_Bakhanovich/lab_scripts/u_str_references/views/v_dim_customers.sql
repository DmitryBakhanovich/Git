drop view U_STR_REFERENCES."v_dim_customers";

/*==============================================================*/
/* View: "v_dim_customers"                                      */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_customers" as
select
UST_SUR_ID,
   CUST_ID,
   CUST_FIRST_NAME,
   CUST_LAST_NAME,
   CUST_GENDER,
   CUST_YEAR_OF_BIRTH,
   CUST_MARITAL_STATUS,
   CUST_STREET_ADDRESS,
   CUST_POSTAL_CODE,
   CUST_CITY,
   CUST_CITY_ID,
   CUST_EMAIL
   from dim_customers
with read only;
