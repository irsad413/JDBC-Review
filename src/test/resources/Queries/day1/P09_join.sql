select * from employees;

/*

 INNER JOIN

 - it gives only matching portion of tables
 - the order tables does not matter

 */

DELETE  from  ADDRESS
where ADDRESS_ID = 1 ;

DELETE  from  ADDRESS
where ADDRESS_ID = 2 ;

DELETE  from  ADDRESS
where ADDRESS_ID = 3 ;

DELETE  from  ADDRESS
where ADDRESS_ID = 4 ;



select  * from  CUSTOMER ;

select  * from  ADDRESS ;

select  FIRST_NAME , LAST_NAME  , ADDRESS , PHONE
    from  ADDRESS inner join  CUSTOMER
            on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID ;


select  FIRST_NAME , LAST_NAME  , CUSTOMER.ADDRESS_ID , ADDRESS.ADDRESS_ID , ADDRESS , PHONE
    from  ADDRESS inner join  CUSTOMER
        on  ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID ;


-- Another Q --> Do I need to type table name always
-- ALIASES
-- Table Aliases
-- Customer  --> C
-- Employees --> E
-- Address   --> A

select  FIRST_NAME , LAST_NAME , C.ADDRESS_ID , A.ADDRESS_ID , ADDRESS , PHONE
    from  ADDRESS A  inner join CUSTOMER C
        on A.ADDRESS_ID = C.ADDRESS_ID ;



/*
 LEFT OUTER JOIN / LEFT JOIN

 -- it will give  matching part + unique for LEFT table
 -- The order of is important

 */

 select  FIRST_NAME , LAST_NAME , ADDRESS , PHONE
    from  CUSTOMER C left join  ADDRESS A
        on C.ADDRESS_ID = A.ADDRESS_ID ;

select  FIRST_NAME , LAST_NAME , ADDRESS , PHONE
from  CUSTOMER C left outer join  ADDRESS A
                            on C.ADDRESS_ID = A.ADDRESS_ID ;


/*
 RIGHT OUTER JOIN / RIGHT JOIN

 -- it will give  matching part + unique for RIGHT table
 -- The order of is important

 */

select  FIRST_NAME , LAST_NAME , ADDRESS , PHONE
from  CUSTOMER C right join  ADDRESS A
                            on C.ADDRESS_ID = A.ADDRESS_ID ;

select  FIRST_NAME , LAST_NAME , ADDRESS , PHONE
from  CUSTOMER C right outer join  ADDRESS A
                                  on C.ADDRESS_ID = A.ADDRESS_ID ;



/*
 FULL OUTER JOIN

 -- It will all matching + unique for LEFT + unique for  RIGHT
 -- The order of tables does not matter

 */

select  FIRST_NAME , LAST_NAME , ADDRESS , PHONE
from  ADDRESS A full join  CUSTOMER C
                             on A.ADDRESS_ID = C.ADDRESS_ID ;



/*
