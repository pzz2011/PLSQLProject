REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 07/01/2012
REM File: new_staff_app.sql
REM ************************************

-- Q9.
-- PL/SQL App to test new_staff procedure

-----------------------------------------
/*
TASOS: PLEASE RUN SCRIPTS:

ASSIGN_OFFICE.SQL
ASSIGN_STAFF.SQL

TO HAVE ACCESS TO THE REQUIRED FUNCTIONS
*/
-----------------------------------------

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 v_gender staff.gender%TYPE := '&gender' ;
 e_invalid_gender EXCEPTION ;
BEGIN
 IF v_gender NOT IN ('m','f','M','F')
 THEN
  RAISE e_invalid_gender ;
 END IF ;
 NEW_STAFF( p_fname => '&fname', p_lname => '&lname', p_s_telno => '&s_telno', p_gender => v_gender ) ;
EXCEPTION
 WHEN e_invalid_gender THEN
 DBMS_OUTPUT.PUT_LINE( 'FAIL: invalid gender - ' || v_gender ) ;
END ;
/
  