CREATE OR REPLACE FUNCTION ASSIGN_SALARY
 ( p_assigned_office NUMBER ) 
RETURN NUMBER
IS
v_sum_staff NUMBER ;
v_office_no NUMBER ;
v_delta NUMBER ;
v_off_for_best_delta NUMBER := 10;
v_best_delta NUMBER ;
v_max_office NUMBER ;
v_count_o NUMBER := 100 ;
v_avg_sal_for_office NUMBER ;

BEGIN
 SELECT AVG( salary )
 INTO v_avg_sal_for_office
 FROM STAFF
 WHERE office_no = p_assigned_office ;
 
RETURN ROUND( v_avg_sal_for_office * 0.8, -2 ) ;
END ASSIGN_SALARY ;
/