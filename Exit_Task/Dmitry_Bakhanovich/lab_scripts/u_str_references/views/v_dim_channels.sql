drop view U_STR_REFERENCES."v_dim_channels";

/*==============================================================*/
/* View: "v_dim_channels"                                       */
/*==============================================================*/
create or replace view U_STR_REFERENCES."v_dim_channels" as
select
channes_id,
channel_desc,
channel_class
from dim_channels
with read only;