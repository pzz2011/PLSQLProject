REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 7/1/2012
REM File: cust_ex.sql
REM ************************************

-- Q10 B.
-- test cust_trig

create table results ( output VARCHAR2(50) ) ;

update customer
set c_city = 'WESTMINSTER'
where cust_no = 100 ;

select * from results ;