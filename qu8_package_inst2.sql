create or replace
PACKAGE BODY QU8 AS

  FUNCTION AVERAGE_PROJ_COST( p_cust_no NUMBER ) RETURN NUMBER  AS
 
    v_proj_no NUMBER ;
    v_tot_cost NUMBER := 0 ;
    v_max_projs NUMBER ;
    v_count NUMBER := 1 ;
    
  BEGIN
   SELECT COUNT(proj_no)
   INTO v_max_projs
   FROM project ;
   FOR i IN 1..v_max_projs
   LOOP
    SELECT proj_no
    INTO v_proj_no
    FROM project
    WHERE cust_no = p_cust_no ;
    v_count := v_count + 1 ;
    v_tot_cost := v_tot_cost + COST_OF_PROJECT( v_proj_no ) ;
   END LOOP ;
   RETURN v_tot_cost / NO_OF_PROJECTS( p_cust_no ) ;
 EXCEPTION
  WHEN OTHERS THEN
   RETURN 100 ;

  END AVERAGE_PROJ_COST;

  FUNCTION COST_OF_PROJECT( p_proj_no NUMBER ) RETURN NUMBER  AS
  
  v_proj_cost NUMBER := 0 ;
  BEGIN
    SELECT SUM( price * qty )
    INTO v_proj_cost
    FROM po_item 
    WHERE proj_no = p_proj_no ;
    RETURN v_proj_cost ;
  END COST_OF_PROJECT;

  FUNCTION NO_OF_PROJECTS( p_cust_no NUMBER ) RETURN NUMBER  AS
  
  v_count NUMBER := 0 ;
  BEGIN
    SELECT COUNT(proj_no)
    INTO v_count
    FROM project
    WHERE cust_no = p_cust_no ;
    RETURN v_count ;
  END NO_OF_PROJECTS;

END QU8;