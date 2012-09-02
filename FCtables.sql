REM ************************************
REM EBSY702
REM MINI_PROJECT
REM Created By: Tom Geary
REM Date: 30/12/2011
REM File: FCtables.sql
REM ************************************

-- Q1.
-- Produces SQL statements to produce required tables

DROP TABLE country ;
DROP TABLE staff;
DROP TABLE office;
DROP TABLE customer;
DROP TABLE project;
DROP TABLE purchase_order;
DROP TABLE po_item;
DROP TABLE item;

CREATE TABLE country
 ( country_id CHAR(3) 
    CONSTRAINT c_country_id_pk PRIMARY KEY
  ,country_name VARCHAR2(30)
    CONSTRAINT c_country_name_ck CHECK ( country_name = UPPER( country_name ))
 ) ;
 
CREATE TABLE office
 ( office_no NUMBER(3) 
    CONSTRAINT o_office_no_pk PRIMARY KEY
  ,o_addr VARCHAR2(100)
    CONSTRAINT o_addr_ck CHECK ( o_addr = UPPER( o_addr ))
  ,o_telno VARCHAR2(20)
  ,o_faxno VARCHAR2(20)
  ,country_id CHAR(3) 
    CONSTRAINT o_country_id_fk REFERENCES country( country_id )
 ) ;
 
CREATE TABLE staff
 ( s_no NUMBER(5) 
    CONSTRAINT s_no_pk PRIMARY KEY
  ,fname VARCHAR2(20)
    CONSTRAINT s_fname_ck CHECK ( fname = UPPER( fname ))
  ,lname VARCHAR2(20)
    CONSTRAINT s_lname_ck CHECK ( lname = UPPER( lname ))
  ,s_addr VARCHAR2(100)
    CONSTRAINT s_s_addr_ck CHECK ( s_addr = UPPER( s_addr ))
  ,s_telno VARCHAR2(20)
  ,gender CHAR(1) 
    CONSTRAINT s_gender_nn NOT NULL
  ,position VARCHAR2(20)
    CONSTRAINT s_position_ck CHECK ( position = UPPER( position ))
  ,nin VARCHAR2(9)
  ,salary NUMBER(7,2)
    CONSTRAINT s_salary_ck CHECK ( salary > 0 )
  ,tax_code VARCHAR2(4)
  ,office_no NUMBER(3) 
    CONSTRAINT s_office_no_fk REFERENCES office( office_no )
 ) ;
 
CREATE TABLE customer
 ( cust_no NUMBER(10) 
    CONSTRAINT c_cust_no_pk PRIMARY KEY
  ,c_name VARCHAR2(30)
    CONSTRAINT c_c_name_ck CHECK ( c_name = UPPER( c_name ))
  ,c_city VARCHAR2(20)
    CONSTRAINT c_c_city_ck CHECK ( c_city = UPPER( c_city ))
  ,c_telno VARCHAR2(20)
  ,c_faxno VARCHAR2(20)
  ,cust_code CHAR(4)
    CONSTRAINT c_cust_code_ck CHECK ( cust_code IN ( 'A+','A','B1','B2','C1','C2','NULL' ))
  ,office_no NUMBER(3)
    CONSTRAINT c_office_no_fk REFERENCES office( office_no )
 ) ;
 
CREATE TABLE project
 ( proj_no NUMBER(10) 
    CONSTRAINT p_proj_no_pk PRIMARY KEY
  ,proj_date DATE
  ,proj_desc VARCHAR2(30)
    CONSTRAINT p_proj_desc_ck CHECK ( proj_desc = UPPER( proj_desc ))
  ,proj_type VARCHAR2(10)
    CONSTRAINT p_proj_type_ck CHECK ( proj_type IN 
     ( 'NULL', 'building', 'electrical', 'plumbing', 'decoration', 'other' ))
   ,proj_status VARCHAR2(9)
     CONSTRAINT p_proj_status_ck CHECK ( proj_status IN
      ( 'planning', 'ongoing', 'completed' ))
   ,s_no NUMBER(5) 
     CONSTRAINT p_s_no_fk REFERENCES staff( s_no )
   ,cust_no NUMBER(10)
     CONSTRAINT p_cust_no_fk REFERENCES customer( cust_no ) 
      ON DELETE CASCADE
  ) ;
    
CREATE TABLE purchase_order
 ( proj_no NUMBER(10)
  ,po_no NUMBER(10)
  ,po_date DATE
  , CONSTRAINT po_key_pk PRIMARY KEY ( proj_no, po_no )
  ) ;
  
CREATE TABLE po_item
 ( proj_no NUMBER(10)
  ,po_no NUMBER(10)
  ,it_no NUMBER(10)
  ,qty NUMBER(5)
   CONSTRAINT pi_qty_ck CHECK ( qty > 0 )
  ,price NUMBER(8,2)
   CONSTRAINT pi_price_ck CHECK ( price > 0 )
  ,CONSTRAINT pi_key_pk PRIMARY KEY ( proj_no, po_no )
 ) ;
 
CREATE TABLE item
 ( it_no NUMBER(10) 
    CONSTRAINT i_item_pk PRIMARY KEY
  ,it_desc VARCHAR2(30)
    CONSTRAINT i_it_desc_ck CHECK ( it_desc = UPPER( it_desc ))
 ) ;