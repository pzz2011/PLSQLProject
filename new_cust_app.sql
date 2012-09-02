REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 5/1/2011
REM File: new_cust_app.sql
REM ************************************

-- Q7.
-- PL/SQL new customer app

SET SERVEROUTPUT ON

DECLARE
p_temp NUMBER(3);
p_valid BOOLEAN ;
BEGIN
 p_valid := IS_VALID_OFFICE( 100, p_temp ) ;
 ADD_NEW_CUSTOMER( '&name','&city','&telno','&faxno','&custcode','&office_no') ;
 ADD_NEW_CUSTOMER( '&name','&city','&telno','&faxno','&custcode','&office_no') ;
END ;
/