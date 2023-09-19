/*
 ---ORDERBY---

    - It allows us to sort data based on provided column
    - AS A DEFAULT it will order the result ASCENDING ORDER (A-Z,0-9)
    - If you wanna sort it DESCENDING order we need specify right after column name

 */
-- display all employees based salary in asc order
select  * from  EMPLOYEES
order by SALARY ;


select  * from  EMPLOYEES
order by SALARY asc ;
-- NOTE :BOTH query will give same result

-- display all employees based salary in desc order (9-0 ) ( high to low )
select  * from  EMPLOYEES
order by SALARY desc  ;


-- display all employees based firstname in desc order (Z-A)
select  * from  EMPLOYEES
order by  FIRST_NAME desc ;


-- display all information from employees
-- where job ids are IT_PROG and order them based on salary asc order
select  * from  EMPLOYEES
where JOB_ID = 'IT_PROG'
order by SALARY desc  ;


-- display all information from employees and order them based firstname asc
select  * from EMPLOYEES
order by FIRST_NAME  ;


--IQ -->  display all information from employees and order them based firstname asc and based on lastname desc
select  * from EMPLOYEES
order by FIRST_NAME , LAST_NAME desc ;




/*
 it will first order result based on firstname
 after getting result if we have same names it will order them based lastname in desc order

 David Austin
 David Berstein
 David Lee

 --After execution
 David Lee
 David Berstein
 David Austin

 */


/*


   - Percent ( % ) for matching any sequence of characters. (0 or more )
   - Underscore ( _ ) for matching any single character.

   - contains
   - startswith
   - endswith

*/

---LIKE---

-- display all employees where first_name STARTSWITH A
select  * from  EMPLOYEES
where FIRST_NAME like 'A%' ;



-- display all employees where first_name STARTSWITH A and length of it 4 letter
select  * from  EMPLOYEES
where FIRST_NAME like 'A___' ;



-- display 5 letter first names from employees ENDSWITH  m
select  * from  EMPLOYEES
where FIRST_NAME like '____m' ;


-- it gives all firstnames ENDSWITH  m
select  * from  EMPLOYEES
where FIRST_NAME like '%m' ;


-- display firstnames where second letter is a
select  * from  EMPLOYEES
where FIRST_NAME like '_a%' ;


-- display all employees where job id CONTAINS IT
select  * from  EMPLOYEES
where JOB_ID like '%IT%' ;



--> IQ --> What are the wilcard characters in SQL
--> % --> it refers any sequence of characters. (0 or more )
--> _ --> it refers any single char


/*
 AGGREATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS

- count  --> it will count rows
- max    --> it will max value
- min    --> it will min value
- sum    --> it will give total value
- avg    --> it will give average values

 Aggreate functions takes multi row and return one result

 NOTE --> All aggreate functions will ignore NULL values
 */

-- How many departments we have ?
select  * from  DEPARTMENTS;
select  count(*) from  DEPARTMENTS ;

-- How many locations we have ?
select  * from  LOCATIONS;
select  count(*) from  LOCATIONS ;



-- NULL VALUES


-- count(*) will count all rows after execution that why we have result as 1
select  * from  EMPLOYEES;

select  count(*) from  EMPLOYEES
where  DEPARTMENT_ID is null ;


-- count(DEPARTMENT_ID) will count only department IDs  after execution we have only one department ID which null
-- Since all aggreagate functions ignore NULL values it will give result as 0
select  count(DEPARTMENT_ID)  from  EMPLOYEES
where  DEPARTMENT_ID is null ;




-- BOTH EXECUTION will give same result since we dont have any null values for department ID






-- how many different firstname we have ?
select  COUNT(distinct  FIRST_NAME) from  EMPLOYEES ;

-- how many employees working as IT_PROG or SA_REP
select  count(*) from  EMPLOYEES
where JOB_ID ='IT_PROG' or JOB_ID ='SA_REP' ;

select  count(*) from  EMPLOYEES
where JOB_ID  in ('IT_PROG' ,  'SA_REP' )  ;




-- how many employees getting salary more than 6000
select  count(*) from  EMPLOYEES
where SALARY > 6000 ;



-- MAX--
select  FIRST_NAME , SALARY from  EMPLOYEES
order by  SALARY desc  ;
select  max(SALARY) from  EMPLOYEES ;



-- MIN--
select  min(SALARY) from  EMPLOYEES ;


-- AVG--
select  avg(SALARY) from  EMPLOYEES ;

select  round(avg(SALARY)) from  EMPLOYEES ;
select  round(avg(SALARY) , 1) from  EMPLOYEES ;
select  round(avg(SALARY) , 2) from  EMPLOYEES ;
select  round(avg(SALARY) , 3) from  EMPLOYEES ;



-- SUM --
select  sum(SALARY) from  EMPLOYEES ;
