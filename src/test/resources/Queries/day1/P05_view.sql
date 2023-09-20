
---VIEW---

select * from employees;

create view EmployeesInfo as
    select  FIRST_NAME || ' ' || UPPER(LAST_NAME) || ' makes ' || SALARY as employees_Salary ,
            SALARY * 12 as annual_salary from EMPLOYEES ;


-- Steven         KING      makes      24000

select * from  EMPLOYEEINFO ;


-- How many columns we have in view ?
-- employees_Salary
-- annual_salary

-- can we call specific column from view

select  employees_Salary from  EMPLOYEEINFO ;

drop  view  EMPLOYEEINFO ;



