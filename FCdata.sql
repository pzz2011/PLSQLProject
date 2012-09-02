REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 30/12/2011
REM File: FCdata.sql
REM ************************************

-- Q3.
-- SQL statements to produce required data

Prompt  *** populating country table ***

INSERT INTO country VALUES
 ( 'GBR'
  ,'GREAT BRITAIN'
 ) ;

INSERT INTO country VALUES
 ( 'FRA'
  ,'FRANCE'
 ) ;
 
INSERT INTO country VALUES
 ( 'GER'
  ,'GERMANY'
 ) ;
 
INSERT INTO country VALUES
 ( 'RUS'
  ,'RUSSIA'
 ) ;
 
INSERT INTO country VALUES
 ( 'GRC'
  ,'GREECE'
 ) ;
 
INSERT INTO country VALUES
 ( 'HOL'
  ,'HOLLAND'
 ) ;
 
 
Prompt *** populating office table ***

INSERT INTO office VALUES
 ( office_no_seq.NEXTVAL
  ,'17 CROMWELL ROAD, ENGLAND'
  ,'0208 283993'
  ,'0208 283994'
  ,'GBR'
 ) ;

INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'18 RUE DE MARSEILLAISE, FRANCE'
  ,'FRA'
 ) ;
 
INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'22 AUTOBAHN STRASSE, GERMANY'
  ,'GER'
 ) ;
 
INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'110 GORBACHEV AVENUE, RUSSIA'
  ,'RUS'
 ) ;
 
INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'29 AMSTERDAM ROAD, HOLLAND'
  ,'HOL'
 ) ;
 
INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'68 LEXINGTON DRIVE, ENGLAND'
  ,'GBR'
 ) ;
 
INSERT INTO office ( office_no, o_addr, country_id ) VALUES
 ( office_no_seq.NEXTVAL
  ,'2900 RUE DE GAULLE, FRANCE'
  ,'FRA'
 ) ;
 
 
Prompt *** Populating staff table ***
 
-- circular key reference 
-- temporarily desable foreign key constraint

ALTER TABLE staff
 DISABLE CONSTRAINT s_office_no_fk ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'ED'
  ,'M'
  ,'SMITH'
  ,1
  ,100
  ,'MANAGER'
  ,30000
  ,'LONDON'
 ) ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'TED'
  ,'M'
  ,'BLACKSMITH'
  ,2
  ,110
  ,'CLERK'
  ,10000
  ,'LONDON'
 ) ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'DEREK'
  ,'M'
  ,'HOLNESS'
  ,3
  ,105
  ,'MANAGER'
  ,30000
  ,'KENT'
 ) ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'BORIS'
  ,'M'
  ,'JONES'
  ,4
  ,120
  ,'IT_MANAGER'
  ,50000
  ,'BISHOP STORTFORD'
 ) ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'KERRY'
  ,'F'
  ,'PEGG'
  ,5
  ,100
  ,'MARKETING GURU'
  ,25000
  ,'LONDON'
 ) ;
 
INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'JASMINDER'
  ,'M'
  ,'GUPTA'
  ,6
  ,105
  ,'IT DBA'
  ,30000
  ,'MANCHESTER'
 ) ;

INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'JOE'
  ,'M'
  ,'FLEMING'
  ,7
  ,100
  ,'IT SUPPORT'
  ,30000
  ,'LUTON'
 ) ;

INSERT INTO staff ( fname, gender, lname, s_no, office_no, position, salary, s_addr ) 
VALUES
 ( 'GEOFF'
  ,'M'
  ,'SANDWICH'
  ,8
  ,105
  ,'COO'
  ,60000
  ,'CAMBRIDGE'
 ) ;
 
-- Re-enable the foreign key constraint
 
ALTER TABLE staff
 ENABLE CONSTRAINT s_office_no_fk ;
 
ALTER TABLE customer
 DISABLE CONSTRAINT c_office_no_fk ;
 
Prompt *** Populating customer table ***

INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'A+'
   ,'LONDON'
   ,'ABCO'
   ,105
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'A'
   ,'LONDON'
   ,'TELMART'
   ,120
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'B1'
   ,'LONDON'
   ,'VISUALSOFT'
   ,105
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'A'
   ,'LONDON'
   ,'TELEMART'
   ,110
  ) ;
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'B2'
   ,'LONDON'
   ,'GOSOFT'
   ,100
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'C1'
   ,'LONDON'
   ,'BEEHIVE_HOUSES'
   ,125
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'C2'
   ,'LONDON'
   ,'ZOOSOFT'
   ,110
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'NULL'
   ,'LONDON'
   ,'KENCO'
   ,105
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'A'
   ,'LONDON'
   ,'SUGAR LTD'
   ,100
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'B1'
   ,'LONDON'
   ,'ICEBERG SHIPS CO'
   ,120
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'C2'
   ,'LONDON'
   ,'TED BAKER SHOES'
   ,115
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'C2'
   ,'LONDON'
   ,'JO MALONE LTD'
   ,130
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'A+'
   ,'LONDON'
   ,'GERMANY FOOTBALL CO'
   ,120
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'B2'
   ,'LONDON'
   ,'TABCO'
   ,105
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'NULL'
   ,'EAST ANGLIA'
   ,'ED ROTTERDAMS LTD'
   ,120
  ) ;
  
INSERT INTO customer ( cust_no, cust_code, c_city, c_name, office_no ) 
 VALUES
  ( cust_no_seq.NEXTVAL
   ,'C2'
   ,'LONDON'
   ,'BABCOX'
   ,120
  ) ;
  
ALTER TABLE customer
 ENABLE CONSTRAINT c_office_no_fk ;
 
Prompt *** Populating project table ***

ALTER TABLE project
 DISABLE CONSTRAINT p_s_no_fk ;
 
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '28-APR-2011', 'dd-mon-yyyy' )
   ,'BUILDING JOB'
   ,'building'
   ,'ongoing'
   ,2
   ,100
  ) ;
 
 
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '18-FEB-2011', 'dd-mon-yyyy' )
   ,'ELECTRICAL JOB'
   ,'electrical'
   ,'planning'
   ,1
   ,110
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '02-AUG-2011', 'dd-mon-yyyy' )
   ,'PLUMBING JOB'
   ,'plumbing'
   ,'completed'
   ,3
   ,150
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '09-NOV-2011', 'dd-mon-yyyy' )
   ,'DECORATION JOB'
   ,'decoration'
   ,'planning'
   ,5
   ,160
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '27-JAN-2011', 'dd-mon-yyyy' )
   ,'PLUMBING JOB'
   ,'plumbing'
   ,'completed'
   ,3
   ,170
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ,'ELECTRICAL MAINTENANCE'
   ,'electrical'
   ,'completed'
   ,4
   ,200
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '19-JUN-2011', 'dd-mon-yyyy' )
   ,'PAINTING THE UNIVERSITY'
   ,'other'
   ,'ongoing'
   ,6
   ,240
  ) ;
  
INSERT INTO project ( proj_no, proj_date, proj_desc, proj_type, proj_status, s_no, cust_no ) 
 VALUES 
  ( proj_no_seq.NEXTVAL
   ,TO_DATE( '04-APR-2011', 'dd-mon-yyyy' )
   ,'ELECTRICAL INSTALLATION JOB'
   ,'electrical'
   ,'planning'
   ,2
   ,200
  ) ;  
ALTER TABLE project
 ENABLE CONSTRAINT p_s_no_fk ;
 
Prompt *** Populating Purchase_order table ***

INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 1
   ,55
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
  
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 2
   ,5
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 3
   ,7
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 4
   ,5
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 5
   ,8
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 6
   ,10
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 7
   ,2
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
INSERT INTO purchase_order ( proj_no, po_no, po_date ) 
 VALUES 
  ( 8
   ,11
   ,TO_DATE( '18-JUN-2011', 'dd-mon-yyyy' )
   ) ;
   
Prompt *** Populating Po_item table ***

INSERT INTO po_item ( proj_no, po_no, it_no, qty, price )
 VALUES
  ( 1
   ,55
   ,1
   ,20
   ,7.50
   ) ;
   
INSERT INTO po_item ( proj_no, po_no, it_no, qty, price )
 VALUES
  ( 2
   ,5
   ,4
   ,10
   ,27.50
   ) ;
   
INSERT INTO po_item ( proj_no, po_no, it_no, qty, price )
 VALUES
  ( 3
   ,7
   ,2
   ,120
   ,98.50
   ) ;
   
INSERT INTO po_item ( proj_no, po_no,  it_no,qty, price )
 VALUES
  ( 4
   ,5
   ,5
   ,20
   ,1.50
   ) ;
   
INSERT INTO po_item ( proj_no, po_no,  it_no,qty, price )
 VALUES
  ( 5
   ,8
   ,1
   ,6
   ,67.50
   ) ;
   
INSERT INTO po_item ( proj_no, po_no,  it_no,qty, price )
 VALUES
  ( 6
   ,10
   ,2
   ,20
   ,37.00
   ) ;
   
INSERT INTO po_item ( proj_no, po_no, it_no, qty, price )
 VALUES
  ( 2
   ,55
   ,4
   ,40
   ,17.50
   ) ;

INSERT INTO po_item ( proj_no, po_no, it_no, qty, price )
 VALUES
  ( 2
   ,81
   ,1
   ,10
   ,17.50
   ) ;
   
Prompt *** Populating Item table ***

INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 1,
    'BRICK'
  ) ;
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 2,
    'WIRE'
  ) ;  
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 3,
    'GLUE'
  ) ;
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 4,
    'CEMENT'
  ) ;
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 5,
    'SOLDER'
  ) ;
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 6,
    'PAINT'
  ) ;
  
INSERT INTO item ( it_no, it_desc ) 
 VALUES
  ( 7,
    'PIPE'
  ) ;
  
COMMIT ;