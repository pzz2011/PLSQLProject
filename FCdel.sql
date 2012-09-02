REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 4/1/2012
REM File: FCdel.sql
REM ************************************

-- Q5.
-- Produces SQL statements after 1 x customer delete 
-- to show tables

DELETE 
FROM customer
WHERE cust_no = 240 ;

-- Show the difference 
--(nb. PAINTING THE UNIVERSITY project is no longer there - hooray!)

Prompt All table contents after cust_no 240 is deleted ...

SELECT * FROM country ;
SELECT * FROM customer ;
SELECT * FROM item ;
SELECT * FROM office ;
SELECT * FROM po_item ;
SELECT proj_no, proj_desc, cust_no FROM project ;
SELECT * FROM purchase_order ;
SELECT * FROM staff ;