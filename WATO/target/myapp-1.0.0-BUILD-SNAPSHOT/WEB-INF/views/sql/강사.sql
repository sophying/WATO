create table teach_info(
   No varchar2(10) DEFAULT 20,
   teach_profile varchar2(200),
   teach_resume varchar2(200),
   user_id varchar2(20),   
<<<<<<< HEAD
   user_pwd varchar2(30),
=======
   user_pwd varchar2(30),   
>>>>>>> branch 'HRnJIHYEnMSTER' of https://github.com/sophying/WATO.git
   teach_gender varchar2(20),
   teach_phone1 varchar2(20),
   teach_phone2 varchar2(20),
   teach_phone3 varchar2(20),
   user_email varchar2(100),
   teach_addr1 varchar2(50),
   teach_addr2 varchar2(200),
   teach_addr3 varchar2(50)
);

select * from teach_info;

insert into teach_info(user_id, teach_profile, teach_resume, user_pwd, teach_pwd_qs, teach_pwd_as, teach_gender, teach_phone1, teach_phone2, teach_phone3, user_email, teach_addr1, teach_addr2, teach_addr3)
values ('jihye20', '1111', '1111', '1111', '1111', '어쩌구저쩌구입니다.', '1111', '1111', '1111', '1111', 'cgh634@hanmail.net', 1111, 1111, 1111);

drop table teach_info purge;
