REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 5/1/2011
REM File: add_new_cust.sql
REM ************************************

-- Q7.
-- PL/SQL commands to create a 'add new customer procedure'

------------------------------------------------------------
-- TASOS: PLEASE RUN 

-- QU7_ISVALIDCODE.SQL 
-- QU7_ISVALIDOFFICE.SQL 

--SO THE REQUIRED FUNCTIONS ARE AVAILABLE
------------------------------------------------------------

CREATE OR REPLACE
PROCEDURE ADD_NEW_CUSTOMER
(
  p_c_name IN VARCHAR2
 ,p_c_city IN VARCHAR2
 ,p_c_telno IN VARCHAR2 DEFAULT 0
 ,p_c_faxno IN VARCHAR2 DEFAULT 0
 ,p_cust_code IN NUMBER
 ,p_office_no IN NUMBER
) AS
P_TEMP INTEGER DEFAULT 0 ;
BEGIN
 IF IS_VALID_OFFICE( p_office_no, p_temp ) AND IS_VALID_CODE( p_cust_code, p_temp ) 
  THEN
   INSERT INTO customer ( cust_no, c_name, c_city, c_telno, c_faxno, cust_code
    ,office_no ) VALUES
    ( 
      cust_no_seq.NEXTVAL
     ,p_c_name
     ,p_c_city
     ,p_c_telno
     ,p_c_faxno
     ,p_cust_code
     ,p_office_no
    ) ;
 ELSE
  DBMS_OUTPUT.PUT_LINE( 'Insert failed, constraint would be violated' ) ;
 END IF ;
EXCEPTION
 WHEN OTHERS THEN
  DBMS_OUTPUT.PUT_LINE( 'Im afraid the Add New Customer procedure failed.' ) ;
END ADD_NEW_CUSTOMER ;