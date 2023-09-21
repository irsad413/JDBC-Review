
select  * from  DEVELOPERS2
    union
select  * from  TESTERS2 ;


select  NAMES from  DEVELOPERS2
    union
select  NAMES from  TESTERS2 ;



select  * from  DEVELOPERS2
    union all
select  * from  TESTERS2 ;

select  NAMES , SALARY from  DEVELOPERS2
    union all
select  NAMES  , SALARY from  TESTERS2 ;



select  * from  DEVELOPERS2
    minus
select  * from  TESTERS2 ;


select  NAMES from  DEVELOPERS2
    minus
select  NAMES from  TESTERS2 ;




select  * from  DEVELOPERS2
    intersect
select  * from  TESTERS2 ;

select  NAMES from  DEVELOPERS2
intersect
select  NAMES from  TESTERS2 ;