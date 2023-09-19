
--- SELECT ---
select * from employees;
-- Single line comments
-- SQL language is NOT CASE SENSITIVE
-- Tables/columns may or not

select * FROM eMpLoYeeS;

-- display all information from countries table
select  REGION_ID , COUNTRY_NAME , COUNTRY_ID from  countries ;
select  *  from  countries ;


-- display firstname from employees table

select  FIRST_NAME from  EMPLOYEES ;
-- it returns  107



-- display firstname,lastname and salary from employees table
select  FIRST_NAME , LAST_NAME , SALARY from  EMPLOYEES ;


--- DISTINCT ---
/*
 it show different values from query result based provided column
 Original data still stays in database
 */

-- display all different names from employees
select  distinct  FIRST_NAME from  EMPLOYEES ;
-- it return 91 result as a different names

--display different department_ids from employees table
select  distinct  DEPARTMENT_ID from  EMPLOYEES ;


--- WHERE ---

/*
 -- Which keyword we are using in JAVA to filter ?
    -- if statement


 -- To filter individual results from database while we are running query
     we are gonna use WHERE keyword
 */


select * from EMPLOYEES
where FIRST_NAME='David';

--> '' it is case SENSITIVE

-- display firstname,lastname,salary where firstname is Peter
select  FIRST_NAME , LAST_NAME , SALARY from  EMPLOYEES
where  FIRST_NAME = 'Peter' ;


-- display firstname,lastname,salary where firstname is David and last_name is Austin
select  FIRST_NAME , LAST_NAME , SALARY from  EMPLOYEES
where  FIRST_NAME = 'David' and LAST_NAME = 'Austin' ;


-- display all information from employees where salary is bigger than 3000
select  * from  EMPLOYEES
where  SALARY > 3000 ;


-- display all info from employees  who is making more than 3000 and department id is 10 ;
select  * from  EMPLOYEES
where SALARY > 3000 and DEPARTMENT_ID = 10 ;


-- display all info from employees where salary  equals or more than 5000  and salary  equals or less than 8000
select  * from  EMPLOYEES
where SALARY >= 5000 and SALARY <= 8000 ;



-- BETWEEN lower and upper --> boundries are INCLUDED
-- it will give result within this range
select  * from  EMPLOYEES
where SALARY between 5000 and 8000;


-- display all info from employees where employee_id between 100 and 120
select  * from  EMPLOYEES
where EMPLOYEE_ID between 100 and 120;


-- OR --
-- display all info from employees who is working as IT_PROG or MK_MAN or SA_REP
-- solution 1
select  * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'MK_MAN' or JOB_ID = 'SA_REP';



-- IN CLAUSES --
-- it uses or logic
-- it checks jobIDs from IN paranthesis to see condition is matching
-- solution 2
select  * from EMPLOYEES
where JOB_ID in('IT_PROG',  'MK_MAN',  'SA_REP')


-- display all employees name except who is working as IT_PROG or MK_MAN or SA_REP
select  * from EMPLOYEES
where JOB_ID not  in('IT_PROG',  'MK_MAN',  'SA_REP') ;



-- IS NULL
-- display all information from employees where manager id is null
select  * from  EMPLOYEES
where MANAGER_ID is null ;
--> 1 result it is Steven King


-- IS NOT NULL
-- display all information from employees where manager id is not null
select  * from  EMPLOYEES
where MANAGER_ID is not  null ;
--> 106 employees has manager



