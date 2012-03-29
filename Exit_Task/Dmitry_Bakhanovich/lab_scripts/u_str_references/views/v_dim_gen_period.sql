drop view U_STR_REFERENCES."v_dim_gen_period";

/*==============================================================*/
/* View: "v_dim_gen_period"                                     */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_gen_period" as
select
PERIOD_SUR_ID ,
   ID,
   DESCRIPTION ,
   BEGINNING,
   ENDING,
   LEVEL_CODE
 from dim_gen_period 
with read only;