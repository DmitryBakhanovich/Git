CREATE OR REPLACE PACKAGE pkg_load_times

AS
   
   PROCEDURE load_cls_date;
   
   -- Load All days from 01/01/2009
  PROCEDURE load_days;
   
  -- Load All weeks from 01/01/2009
  PROCEDURE load_weeks;
  
  -- Load All month from 01/01/2009
  PROCEDURE load_month;
  
  -- Load All quarters from 01/01/2009
  PROCEDURE load_quarters;
  
  -- Load All years from 01/01/2009
  PROCEDURE load_years;
  
END;
/
