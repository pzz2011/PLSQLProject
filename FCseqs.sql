REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 30/12/2011
REM File: FCseqs.sql
REM ************************************

-- Q2.
-- SQL statements to produce required sequences

CREATE SEQUENCE office_no_seq
 START WITH 100
 INCREMENT BY 5
 NOCACHE
 NOCYCLE ;
 
CREATE SEQUENCE cust_no_seq
 START WITH 100
 INCREMENT BY 10
 NOCACHE
 NOCYCLE ;
 
CREATE SEQUENCE proj_no_seq
 START WITH 1
 INCREMENT BY 1
 NOCACHE
 NOCYCLE ;
 
CREATE SEQUENCE item_no_seq
 START WITH 1
 INCREMENT BY 1
 NOCACHE
 NOCYCLE ;