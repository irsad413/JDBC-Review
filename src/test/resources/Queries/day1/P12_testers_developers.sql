
create  table  Developers2 (

    ID_No INTEGER primary key ,
    Names varchar(30) ,
    Salary INTEGER
) ;

create  table  Testers2 (

  ID_No INTEGER primary key ,
  Names varchar(30) ,
  Salary INTEGER
) ;

insert into  DEVELOPERS2 values (1,'Tom' , 120000) ;
insert into  DEVELOPERS2 values (2,'Jack' , 130000) ;
insert into  DEVELOPERS2 values (3,'John' , 140000) ;
insert into  DEVELOPERS2 values (4,'Mike' , 150000) ;

insert into  TESTERS2 values (1,'Lee' , 80000) ;
insert into  TESTERS2 values (2,'Tim' , 90000) ;
insert into  TESTERS2 values (3,'Oven' , 100000) ;

commit work  ;