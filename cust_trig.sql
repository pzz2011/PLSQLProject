create or replace
TRIGGER CUST_TRIG
BEFORE INSERT OR UPDATE OR UPDATE ON customer
DECLARE
 v_tbl_name VARCHAR2(50) ;
BEGIN
 SELECT table_name 
 INTO v_tbl_name
 FROM USER_TABLES 
 WHERE table_name = 'RESULTS';
 IF SQL%ROWCOUNT < 1
 THEN
  DBMS_OUTPUT.PUT_LINE( 'Creating RESULTS table' ) ;
  --CREATE TABLE results ( output VARCHAR2(50) ) ;
 END IF ;
 --INSERT INTO results ( output ) VALUES ( 'customer table was modified' || SYSDATE ) ;
END CUST_TRIG ;