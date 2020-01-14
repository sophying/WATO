create table teach_info(
   teach_no varchar2(10) DEFAULT '20',
   teach_profile varchar2(200),
   teach_resume varchar2(200),
   teach_id varchar2(20),   
   teach_pwd varchar2(30),   
   teach_pwd_qs varchar2(50),   
   teach_pwd_as varchar2(30),
   teach_gender varchar2(20),
   teach_phone1 varchar2(20),
   teach_phone2 varchar2(20),
   teach_phone3 varchar2(20),
   teach_email varchar2(100),
   teach_addr1 varchar2(50),
   teach_addr2 varchar2(200),
   teach_addr3 varchar2(50)
);

select * from teach_info;

drop table teach_info purge;