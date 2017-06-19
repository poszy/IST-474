-- PART TWO
ALTER USER hr ACCOUNT UNLOCK;
ALTER USER hr IDENTIFIED BY password123;

-- PART THREE

-- list rows of the department table
decribe departments;
select * from departments;

-- Outputs 107 Employees 
SELECT COUNT(EMPLOYEE_ID) FROM EMPLOYEES; 

-- OUTPUTS SLARY GREATER TAHN 15000
SELECT EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY FROM EMPLOYEES WHERE SALARY BETWEEN 15000 AND 10000000000; 




-- were hired between January 1, 2002 and January 1, 2005, 
SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE BETWEEN TO_DATE ('2002/01/01', 'yyyy/mm/dd') AND TO_DATE ('2005/01/01', 'yyyy/mm/dd');

-- Have Phone Number that doesent star with 515
select phone_number from employees where phone_number not like '515%';


-- select department_name from departments;
    -- select first_name,  last_name from employees ORDER BY FIRST_NAME DESC where department_id='100';  
    -- select first_name ||  last_name from employees ORDER BY FIRST_NAME DESC;
    -- select first_name ||  last_name from employees where department_id='100' ORDER BY FIRST_NAME ASC; 

SELECT TRIM(TRIM(FIRST_NAME || ' ' || LAST_NAME)) FROM EMPLOYEES WHERE DEPARTMENT_ID='100';

-- Select all from Asia
select locations.city, locations.state_province, countries.country_name from locations, countries, regions
where regions.region_name = 'Asia'
and countries.region_id = regions.region_id
and locations.country_id = countries.country_id;

-- exclude state_province
select state_province from locations where state_province is not null;
--select * from locations;

-- Dual table
-- this table only contained one column, Dummy 
describe dual;
select * from dual;
-- this table can be useful for beginers trying out new commands
-- also to verify some system commands like these
select sysdate from dual;
select user from dual;


-- PART FOUR
create user luis identified by password123


 grant CREATE SESSION, ALTER SESSION, CREATE DATABASE LINK, -
  CREATE MATERIALIZED VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, -
  CREATE ROLE, CREATE SEQUENCE, CREATE SYNONYM, CREATE TABLE, - 
  CREATE TRIGGER, CREATE TYPE, CREATE VIEW, UNLIMITED TABLESPACE -
  to luis;

  
  -- PART 5
  
  
