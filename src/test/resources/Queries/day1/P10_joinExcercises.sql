

--1.Display all first_name and  related department_name

--- Steven    Executive
--- David        IT

select * from employees;
select  * from  DEPARTMENTS ;


select  FIRST_NAME , DEPARTMENT_NAME
    from  EMPLOYEES E inner join  DEPARTMENTS D
        on E.DEPARTMENT_ID = D.DEPARTMENT_ID ;

-- order list based firstname

select  FIRST_NAME , DEPARTMENT_NAME
    from  EMPLOYEES E inner join  DEPARTMENTS D
        on E.DEPARTMENT_ID  = D.DEPARTMENT_ID
    order by  FIRST_NAME ;


--2.Display all first_name and department_name including the  department without employee

select * from employees;
select  * from  DEPARTMENTS ;

-- RIGHT JOIN

select  FIRST_NAME , DEPARTMENT_NAME
from  EMPLOYEES E right join  DEPARTMENTS D
                              on E.DEPARTMENT_ID  = D.DEPARTMENT_ID ;



-- LEFT  JOIN

select  FIRST_NAME , DEPARTMENT_NAME
from  DEPARTMENTS D left join   EMPLOYEES E
                              on D.DEPARTMENT_ID  = E.DEPARTMENT_ID  ;


-- how many employee we have for each department name

select  DEPARTMENT_NAME , count(*) from  DEPARTMENTS D left join  EMPLOYEES E
    on D.DEPARTMENT_ID = E.DEPARTMENT_ID
group by  DEPARTMENT_NAME ;


--3.Display all first_name and department_name including the  employee without department
select * from employees;
select  * from  DEPARTMENTS ;

-- Matching portion+unique Employee  --> LEFT JOIN
select  FIRST_NAME , DEPARTMENT_NAME  from EMPLOYEES e left outer join DEPARTMENTS d
    on e.EMPLOYEE_ID = d.DEPARTMENT_ID ;


-- RIGHT JOIN
select  FIRST_NAME , DEPARTMENT_NAME  from DEPARTMENTS d right  outer join  EMPLOYEES e
                                                                       on d.DEPARTMENT_ID  = e.DEPARTMENT_ID ;



--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

select  FIRST_NAME  , DEPARTMENT_NAME from  DEPARTMENTS d full join  EMPLOYEES e
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID ;

