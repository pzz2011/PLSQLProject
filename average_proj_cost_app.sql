REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 07/01/2012
REM File: average_proj_cost.sql
REM ************************************

-- Q8.
-- Displays the average project cost for each customer
SET SERVEROUTPUT ON

DECLARE
 v_cust_no customer.cust_no%TYPE := 120 ;
 v_cust_name customer.c_name%TYPE ;
 v_max_count NUMBER ;
 v_count NUMBER := 100 ;
BEGIN
 SELECT MAX(cust_no)
 INTO v_max_count
 FROM customer;
 
 --FOR i IN 100 .. v_max_count
 --LOOP 
  DBMS_OUTPUT.PUT_LINE( QU8.AVERAGE_PROJ_COST( v_cust_no ) ) ;
  --v_cust_no := v_cust_no + 10 ;
 --END LOOP ;
END ;
/

s