
CREATE table Address2(

    Address_ID INTEGER PRIMARY KEY ,
    Address VARCHAR(50) not null ,
    Phone INTEGER not null

) ;

insert into ADDRESS2 (address_id, address, phone) values (
1 , 'Gungoren' , 123456789
                                                        ) ;

insert into ADDRESS2 (address_id, address, phone) values (
2 , 'Fatih' , 987654321
                                                        ) ;

insert into ADDRESS2 (address_id, address, phone) values (
3 , 'Bahcilar' , 112233445
                                                        ) ;

insert into ADDRESS2 (address_id, address, phone) values (
4 , 'Bahcelievler' , 998877665
                                                        ) ;

insert into ADDRESS2 (address_id, address, phone) values (
5 , 'Kucukcekmece' , 1020304050
                                                        ) ;

UPDATE ADDRESS2
set PHONE = 102030405
where ADDRESS_ID  = 5 ;

UPDATE ADDRESS2
set PHONE = 112233445
where ADDRESS_ID  = 3 ;

select   * from  ADDRESS2 ;


CREATE table  Customer2(

Customer_ID INTEGER PRIMARY KEY ,
First_Name varchar(50) not null ,
Last_Name varchar(50) not null ,
Address_ID INTEGER references  ADDRESS2(address_id)


) ;

insert into Customer2 (customer_id, first_name, last_name, address_id) VALUES (
1 , 'Ali' , 'Simba' , 3
                                                                          ) ;

insert into Customer2 (customer_id, first_name, last_name, address_id) VALUES (
2 , 'Osman' , 'Bimbo' , 5
                                                                              ) ;

insert into Customer2 (customer_id, first_name, last_name, address_id) VALUES (
3, 'Omer' , 'Alfa' , 2
                                                                              ) ;

insert into Customer2 (customer_id, first_name, last_name, address_id) VALUES (
4 , 'Mustafa' , 'Beta' , 1
                                                                              ) ;

insert into Customer2 (customer_id, first_name, last_name, address_id) VALUES (
5 , 'Memet' , 'Snow' , 4
                                                                              ) ;

commit work ;

select  * from  Customer2 ;

DROP  table  Customer2 ;
DROP  table  ADDRESS2 ;







