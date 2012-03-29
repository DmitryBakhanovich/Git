drop table "u_sal_data".fct_contracts_dd cascade constraints;

/*==============================================================*/
/* Table: FCT_CONTRACTS_DD                                      */
/*==============================================================*/
create table "u_sal_data".fct_contracts_dd 
(
   "event_dt"           NUMBER(10,0)         not null,
   "period_surr_id"     NUMBER(10,0)         not null,
   "customer_surr_id"   NUMBER(10,0)         not null,
   "product_surr_id"    NUMBER(10,0)         not null,
   "currency_id"        NUMBER(3,0)          not null,
   "department_id"      NUMBER(10,0)         not null,
   "location_surr_id"   NUMBER(10,0)         not null,
   "contract_code"      VARCHAR2(30 CHAR)    not null,
   "quantity_sold"      NUMBER(5)            not null,
   "amount_sold"        NUMBER(8,2)          not null,
   constraint PK_FCT_CONTRACTS_DD primary key ("event_dt", "period_surr_id", "customer_surr_id", "product_surr_id", "currency_id", "department_id", "location_surr_id")
)
PARTITION BY RANGE("event_dt") 
INTERVAL (NUMTOYMINTERVAL(1,'YEAR'))
SUBPARTITION BY HASH("product_surr_id")
SUBPARTITIONS 4
( PARTITION p1 VALUES LESS THAN (to_date('2010/01/01','yyyy/mm/dd')) 
 STORAGE (INITIAL 100M NEXT 50M) 
(SUBPARTITION sp_01 TABLESPACE ts_sal_data_011), 
(SUBPARTITION sp_02 TABLESPACE ts_sal_data_012), 
(SUBPARTITION sp_03 TABLESPACE ts_sal_data_013), 
(SUBPARTITION sp_04 TABLESPACE ts_sal_data_014));

alter table "u_sal_data".fct_contracts_dd
   add constraint CKC_CONTRACT_CODE_FCT_CONT check ("contract_code" = upper("contract_code"));
