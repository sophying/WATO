--create table std_info(
--   std_profile varchar2(200),
--   std_id varchar2(20),   
--   std_pwd varchar2(30),   
--   std_pwd_qs varchar2(50),   
--   std_pwd_as varchar2(30),
--   std_gender varchar2(20),
--   std_phone1 varchar2(20),
--   std_phone2 varchar2(20),
--   std_phone3 varchar2(20),
--   std_email1 varchar2(20),
--   std_email2 varchar2(50),
--   std_addr1 varchar2(50),
--   std_addr2 varchar2(100),
--   std_addr3 varchar2(50),
--   PRIMARY KEY (std_id)
--);

create table std_info(
   No varchar2(10) DEFAULT 10,
   std_profile varchar2(200),
   user_id varchar2(20),   
   user_pwd varchar2(30),
   std_gender varchar2(20),
   std_phone1 varchar2(20),
   std_phone2 varchar2(20),
   std_phone3 varchar2(20),
   user_email varchar2(20),
   std_addr1 varchar2(50),
   std_addr2 varchar2(100),
   std_addr3 varchar2(50),
   PRIMARY KEY (user_id)
);


select * from std_info;

update STD_INFO
set
	std_pwd = '1111'
where std_id = 'jihye1';


insert into std_info(user_id, std_profile, user_pwd, std_pwd_qs, std_pwd_as, std_gender, std_phone1, std_phone2, std_phone3, user_email, std_addr1, std_addr2, std_addr3)
values ('jihye1', '1111', '1111', '1111', '어쩌구저쩌구입니다.', '1111', '1111', '1111', '1111', 'cgh634@hanmail.net', 1111, 1111, 1111);

drop table std_info purge;


