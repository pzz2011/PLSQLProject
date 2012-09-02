create or replace
FUNCTION IS_VALID_OFFICE 
 ( p_office_no IN NUMBER
  ,p_valid OUT NUMBER )
RETURN BOOLEAN IS 
BEGIN
 SELECT COUNT( office_no )
 INTO p_valid
 FROM office
 WHERE office_no = p_office_no ;
 IF p_valid > 0
 THEN
  RETURN TRUE ;
 ELSE
  DBMS_OUTPUT.PUT_LINE('Failed value: ' || p_office_no ) ;
  RETURN FALSE ;
 END IF ;
END IS_VALID_OFFICE;