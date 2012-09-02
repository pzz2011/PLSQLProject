create or replace
FUNCTION ASSIGN_OFFICE
 ( p_avg_staff_per_office NUMBER ) RETURN NUMBER
IS
v_sum_staff NUMBER ;
v_office_no NUMBER ;
v_delta NUMBER ;
v_office_for_best_delta NUMBER := 100 ;
v_best_delta NUMBER ;
v_max_office NUMBER ;
v_count_o NUMBER := 100 ;
v_s_no NUMBER ;

BEGIN

  SELECT count( office_no )
  INTO v_max_office
  FROM office ;
  
  FOR i IN 1..v_max_office
  LOOP 
    SELECT COUNT(s_no) 
     INTO v_s_no
     FROM staff
     WHERE office_no = v_count_o ;
   IF v_s_no - p_avg_staff_per_office > 0
   THEN 
    v_delta := v_s_no - p_avg_staff_per_office ;
   ELSE
    v_s_no := p_avg_staff_per_office ;
   END IF ;
   
   IF v_delta < v_best_delta
   THEN
    v_best_delta := v_delta ;
    v_office_for_best_delta := v_count_o ;
   END IF ;
   v_count_o := v_count_o + 5 ;
  END LOOP ;
RETURN v_office_for_best_delta ;
END ASSIGN_OFFICE ;