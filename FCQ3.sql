REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 5/1/2013
REM File: FCseqs.sql
REM ************************************

-- Q6.
-- SQL statement items ordered for jobs placed by all publishers
-- served by company's office in Germany.

SELECT * 
FROM item
WHERE it_no = ( SELECT i.it_no
                FROM item i, po_item pi, project p, customer cu, office o, country c
                WHERE c.country_name = 'GER' ) ; 
                
