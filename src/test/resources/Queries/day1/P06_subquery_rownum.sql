

select * from employees;

-- give me all information  who is getting max  salary

-- max salary
select  max(SALARY) from  EMPLOYEES ;-- 24K


-- if we know max salary can we find who is getting
select  * from  EMPLOYEES
where  SALARY = 24000 ; -- it is hardcode


-- if the Steven King salary changes we cant find person who is getting max salary

-- SOLUTION --> make it dynamic
select  * from  EMPLOYEES
where  SALARY = (select  max(SALARY) from  EMPLOYEES ) ;



-- give me all information  who is getting min salary


-- min salary
select  min(SALARY) from  EMPLOYEES ; -- 21K


-- if we know min  salary can we find who is getting

select  * from  EMPLOYEES
where  SALARY = 2100;




-- SOLUTION --> make it dynamic
select  * from  EMPLOYEES
where  SALARY = (select  min(SALARY) from  EMPLOYEES ) ;

-- display all information who is getting second highest salary ?

-- find max salary
select  max(SALARY) from  EMPLOYEES ; --24K

-- second highest
select  max(SALARY) from  EMPLOYEES
where  SALARY < 24000 ; --17K


-- find second highest dynamicly
select  max(SALARY) from  EMPLOYEES
where  SALARY < (select  max(SALARY) from  EMPLOYEES) ;


-- find me who is getting 2nd highest salary
select  * from  EMPLOYEES
where SALARY  = 17000 ;


-- make it dynamic
select  * from  EMPLOYEES
where SALARY=( select  max(SALARY) from  EMPLOYEES
                where SALARY < (select  max(SALARY) from  EMPLOYEES) ) ;





-- display all information who is getting more than average ?
-- find avg salary
    select round(avg(SALARY)) from  EMPLOYEES ; --6462

-- display who is getting over avg
    select  * from  EMPLOYEES
    where SALARY > 6462  ;


-- SOLUTION --> make it dynamic
    select  * from  EMPLOYEES
    where  SALARY > (select round(avg(SALARY)) from  EMPLOYEES) ;


-- HOMEWORK --> display all information who is getting second minimum salary ?

    select  min(SALARY) from  EMPLOYEES ;-- 2100

    select  min(SALARY) from  EMPLOYEES
    where  SALARY > 2100;  -- 2200

    select * from  EMPLOYEES
    where  SALARY = (select  min(SALARY) from  EMPLOYEES
                     where  SALARY >(select min(SALARY) from  EMPLOYEES) );


-- ROWNUM ---
/*
 it limits rows based on provided number
 */

 select  * from  EMPLOYEES
where  ROWNUM < 11 ;




--display all information from employees who is getting first 5 highest salary

-- BAD PRACTICE
-- It is getting data before order them based salary and
-- cut the list from line 6 then it tries to order them between first 5 rows
-- That is why we are getting WRONG LIST
select  * from  EMPLOYEES
where  ROWNUM < 6
order by SALARY desc  ;


-- CORRECT ANSWER
select  * from (select  * from  EMPLOYEES order by  SALARY desc )
where  ROWNUM < 6 ;


-- display all information who is getting 5th highest salary
--display all different salaries in desc order
select  distinct  SALARY from  EMPLOYEES order by SALARY desc ;


-- display 5th highest salary
select  min(SALARY) from (select  distinct  SALARY from  EMPLOYEES order by SALARY desc )
where  ROWNUM < 6 ; -- 13K


-- who is getting 5th highest salary
select  * from  EMPLOYEES
    where  SALARY  = 13000 ; -- it is hardcode

select  * from  EMPLOYEES
where  SALARY = (select  min(SALARY) from (select  distinct  SALARY from  EMPLOYEES order by SALARY desc )
                 where  ROWNUM < 6 ) ;





-- IQ -->  display all information who is getting 213th highest salary
--  display all information who is getting 4th highest salary

select  * from  EMPLOYEES
where  SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
    where rownum < 5) ;



-- HOMEWORK -->  display all information who is getting 3th lowest salary


select  max(SALARY) from (select  distinct  SALARY from  EMPLOYEES order by SALARY asc )
where  ROWNUM < 4 ; -- 2400

select  * from  EMPLOYEES
where  SALARY = (select  max(SALARY) from (select  distinct  SALARY from  EMPLOYEES order by SALARY asc )
                 where  ROWNUM < 4 ) ;






