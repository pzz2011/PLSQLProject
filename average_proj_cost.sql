REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 07/01/2012
REM File: average_proj_cost.sql
REM ************************************

-- Q8.
-- Displays the average project cost for each customer

------------------------------------------------------
/*
TASOS: PLEASE INSTALL THE QU8 PACKAGE BEFORE RUNNING 
THIS SCRIPT

QU8_PACKAGE_INST1.SQL
QU8_PACKAGE_INST2.SQL

*/
------------------------------------------------------
SET SERVEROUTPUT ON

DECLARE
 v_cust_no customer.cust_no%TYPE ;
 v_cust_name customer.c_name%TYPE ;
 v_max_count NUMBER ;
 v_count NUMBER := 110 ;
BEGIN
 SELECT COUNT(cust_no)
 INTO v_max_count
 FROM customer;
 
 FOR i IN 1 .. v_max_count
 LOOP  
  SELECT cust_no, c_name
  INTO v_cust_no, v_cust_name
  FROM customer
  WHERE cust_no = v_count ;
  DBMS_OUTPUT.PUT_LINE( 'Customer: ' || v_cust_no || ' ' || v_cust_name ||
   'spends ' || QU8.AVERAGE_PROJ_COST( v_count )  || ' per project' ) ;
  v_count := v_count + 10 ;
 END LOOP ;
EXCEPTION
 WHEN OTHERS THEN 
  DBMS_OUTPUT.PUT_LINE( 'FAIL ' || v_count || ' ' || v_cust_no || ' ' || v_cust_name ) ;
END ;
/
