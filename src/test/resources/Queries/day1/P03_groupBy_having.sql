

--- GROUP BY ---

-- Task1 : display average salary for IT_PROG
select  avg(SALARY) from  EMPLOYEES
where JOB_ID = 'IT_PROG' ;


-- Task 2  : display average salary for SA_REP
select  avg(SALARY) from  EMPLOYEES
where JOB_ID = 'SA_REP' ;


-- Task 3  : display average salary for MK_MAN
select  avg(SALARY) from  EMPLOYEES
where JOB_ID = 'MK_MAN' ;


-- how many different job id we have ?
select  count(distinct  JOB_ID) from EMPLOYEES ;


/*
    INSTEAD OF TYING SAME QUERY FOR 19 DIFFERENT JOB IDs
    We are gonna group them based on JOB ID and get average salary in one shot
 */

 select  FIRST_NAME , LAST_NAME , JOB_ID , SALARY from  EMPLOYEES ;



-- get me AVG salary for EACH job_id from Employees table
select  JOB_ID , avg(SALARY) from  EMPLOYEES
group by  JOB_ID ;

select  JOB_ID , avg(SALARY)  , min(SALARY)  , max(SALARY) , sum(SALARY)  , count(*) from  EMPLOYEES
    group by JOB_ID ;


-- get me total salary for EACH department from Employees table
select DEPARTMENT_ID , sum(SALARY)  , count(*)  , max(SALARY) , min(SALARY)  , round(avg(SALARY)) from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID ;



-- order results based on employees count in desc
select DEPARTMENT_ID , sum(SALARY)  , count(*)  , max(SALARY) , min(SALARY)  , round(avg(SALARY)) from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by count(*) desc ;



-- order results based on department id in asc
select DEPARTMENT_ID , sum(SALARY)  , count(*)  , max(SALARY) , min(SALARY)  , round(avg(SALARY)) from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID asc ;

-- order results based on avg(salary) in desc
select DEPARTMENT_ID , sum(SALARY)  , count(*)  , max(SALARY) , min(SALARY)  , round(avg(SALARY)) from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by avg(SALARY) desc ;


--- HAVING ---
-- display department_ids where their avg salary is more than 5K
select DEPARTMENT_ID , sum(SALARY)  , count(*)  , max(SALARY) , min(SALARY)  , round(avg(SALARY)) from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having avg(SALARY) > 5000  -- else if
order by avg(SALARY) desc ;





-- display department id where employees count is bigger than 5
select DEPARTMENT_ID , count(*)  from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having count(*) > 5;


-- order them based on number of employees in desc
select DEPARTMENT_ID , count(*)  from EMPLOYEES
where  DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having count(*) > 5
order by count(*) desc ;


-- IQ --> display duplicated ( more than one) firstnames from employees table
select  FIRST_NAME , count(*) from  EMPLOYEES
group by  FIRST_NAME
having count(*) > 1
order by count(*)  ;

