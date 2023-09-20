
select * from employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--- CREATE TABLE ----

create  table scrumTeam (

    empID INTEGER PRIMARY KEY ,
    First_Name varchar(30) not null ,
    Job_Title varchar(20) not null ,
    Age integer ,
    Salary integer

) ;


select  * from  scrumTeam  ;




/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

select  * from  scrumTeam  ;

insert into  scrumTeam(empID, First_Name, Job_Title, Age, Salary)
values (1 , 'Kobe' , 'Sdet' , 43 , 120000) ;

insert into  scrumTeam(empID, First_Name, Job_Title, Age, Salary)
values (2 , 'Jordan' , 'Developer' , 60 , 180000) ;

insert into  scrumTeam(empID, First_Name, Job_Title, Age, Salary)
values (3 , 'James' , 'SM' , 38 , 150000) ;

insert into  scrumTeam(empID, First_Name, Job_Title, Age, Salary)
values (4 , 'Curry' , 'QA' , 35 , 100000) ;


-- to push changes into database we need to use commit or commit work
commit ;




/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

select  * from  scrumTeam ;

UPDATE scrumTeam
set Salary = SALARY + 5000 ;

UPDATE scrumTeam
set Salary = SALARY + 15000
where  JOB_TITLE = 'QA' ;

UPDATE scrumTeam
set Salary = SALARY + 10000
where  AGE > 40 ;

commit ;


/*
DELETE FROM table_name
WHERE condition;
*/

delete  from  scrumTeam
where  empID = 1 ;

select  * from  scrumTeam ;


commit ;

insert into scrumTeam(empID, First_Name, Job_Title, Age, Salary)
values (5 , 'Oneal' , 'Developer' , 50 , 200000) ;

delete  from  scrumTeam
where  JOB_TITLE = 'Developer' and  AGE > 50 ;

select  * from  scrumTeam ;

commit ;




-- ALTER

-- ADD NEW COLUMN
ALTER TABLE scrumteam add gender varchar(10);

select * from scrumteam;

-- update empID=2 gender as Male
update scrumTeam
set gender = 'Male'
where  empID = 3 ;

-- check (gender in ('MALE', 'FEMALE'))


-- RENAME THE COLUMN
ALTER table scrumTeam rename column  salary to annual_salary ;

select * from scrumteam;



-- DROP COLUMN

alter table scrumTeam drop column  gender ;

select * from scrumteam;


-- RENAME TO ---> CHANGE TABLE NAME

ALTER table  scrumTeam rename to  agileTeam ;

select * from agileTeam;

commit ;



-- TRUNCATE

truncate table agileTeam ;

select * from agileTeam;


-- DROP

drop table agileTeam ;

select * from agileTeam;

commit ;


/*

 IO ---> What is difference between TRUNCATE and DROP

    TRUNC --> it will delete table content
    DROP  --> it will delete all table including contents too

 */