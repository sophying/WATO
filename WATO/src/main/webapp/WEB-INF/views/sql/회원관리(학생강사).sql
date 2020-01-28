create table management(
   No varchar2(10),
   user_id varchar2(20),   
   user_gender varchar2(20),
   user_email varchar2(100)
);

select * from management;

drop table management purge;