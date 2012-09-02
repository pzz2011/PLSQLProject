REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 7/1/2013
REM File: create_po_item_log.sql
REM ************************************

-- copy the table but with no data

----------------------------------------
/* TASOS
PLEASE EXECUTE THE TRIGGER SCRIPTS FIRST

DEL_ROW_TRIG.SQL
UPD_ROW_TRIG.SQL

*/
----------------------------------------

DROP TABLE po_item_log ;

CREATE TABLE po_item_log
AS
 SELECT * 
 FROM po_item 
 WHERE proj_no = 10000 ;

-- add the 'comment' column 

ALTER TABLE po_item_log
ADD ( "COMMENT" VARCHAR2(50) ) ;

Prompt *** po_item pre-delete ***

SELECT * FROM PO_ITEM ;

DELETE FROM PO_ITEM WHERE PROJ_NO = 2 ;

Prompt *** po_item post_delete ***

SELECT * FROM PO_ITEM ;

Prompt *** po_item_log ***
SELECT * FROM PO_ITEM_LOG ;

Prompt *** po_item pre-update ***

SELECT * FROM po_item ;

UPDATE po_item
SET price = price * 2 
WHERE proj_no = 4 ;

Prompt *** po_item post-update ***

SELECT * FROM po_item ;

Prompt *** po_item_log post_update ***

SELECT * FROM po_item_log ;

