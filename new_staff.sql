create or replace
PROCEDURE NEW_STAFF
 ( p_nin staff.nin%TYPE DEFAULT NULL
  ,p_fname staff.fname%TYPE
  ,p_lname staff.lname%TYPE
  ,p_s_addr staff.s_addr%TYPE DEFAULT NULL
  ,p_s_telno staff.s_telno%TYPE
  ,p_gender staff.gender%TYPE
  ,p_position staff.position%TYPE DEFAULT NULL
  ,p_tax_code staff.tax_code%TYPE DEFAULT NULL
  )
IS
 v_s_no NUMBER ;
 
BEGIN
 SELECT max(s_no)
 INTO v_s_no
 FROM staff ;
 
 v_s_no := v_s_no + 5 ;
 
 INSERT INTO staff ( 
   s_no, 
   nin, 
   fname, 
   lname, 
   s_addr, 
   s_telno, 
   gender, 
   position, 
   tax_code,
   office_no,
   salary )
 VALUES (
   v_s_no
  ,p_nin
  ,p_fname
  ,p_lname
  ,p_s_addr
  ,p_s_telno
  ,p_gender
  ,p_position
  ,p_tax_code 
  ,ASSIGN_OFFICE( AVG_STAFF_PER_OFFICE )
  ,ASSIGN_SALARY(ASSIGN_OFFICE( AVG_STAFF_PER_OFFICE ))
  ) ;
END NEW_STAFF ;