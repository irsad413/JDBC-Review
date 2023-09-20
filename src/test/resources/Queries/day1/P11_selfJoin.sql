-- Display manager name of 'Neena'

-- manager_id for Neena

select  MANAGER_ID from  EMPLOYEES
where  FIRST_NAME = 'Neena' ;


-- manager firstname and lastname for Neena

select  FIRST_NAME , LAST_NAME from  EMPLOYEES
where  EMPLOYEE_ID = (select  MANAGER_ID from  EMPLOYEES
                             where FIRST_NAME = 'Neena') ;


-- all employees with firstname,lastname,manager_id

select EMPLOYEE_ID , FIRST_NAME , LAST_NAME , MANAGER_ID from  EMPLOYEES ;



-- display all employees and their managers

select  Workers.first_name  ,  Workers.last_name , MANAGERS.first_name , MANAGERS.last_name
    from  EMPLOYEES workers inner join EMPLOYEES managers
        on workers.MANAGER_ID = managers.EMPLOYEE_ID ;


-- Where is STEVEN ?

-- to see Steven

select  Workers.first_name  ,  Workers.last_name , MANAGERS.first_name , MANAGERS.last_name
    from  EMPLOYEES workers left join  EMPLOYEES managers
        on workers.MANAGER_ID = managers.EMPLOYEE_ID
order by  workers.FIRST_NAME ;

-- TASK --> Given the Employee table, write a SQL query that finds out employees who earn more than their managers.