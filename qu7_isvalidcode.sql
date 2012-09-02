create or replace
FUNCTION IS_VALID_CODE
 ( p_cust_code IN CHAR
  ,p_valid OUT NUMBER )
RETURN BOOLEAN IS 
BEGIN
 SELECT COUNT( cust_code )
 INTO p_valid
 FROM customer
 WHERE cust_code = p_cust_code ;
 IF p_valid > 0
 THEN
  RETURN TRUE ;
 ELSE
  DBMS_OUTPUT.PUT_LINE('Failed value: ' || p_cust_code ) ;
  RETURN FALSE ;
 END IF ;
END IS_VALID_CODE ;