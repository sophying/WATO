package com.king.myapp.domain;

import java.sql.Date;

public class StudentReplyVO {
	/*
	create table s_reply(
	r_no number,
	s_no number,
	r_userid varchar2(30),
	r_content varchar2(1000),
	r_regdate date default sysdate,
	primary key(r_no));
	
	Create sequence S_reply_SEQ
	Start with 1
	Increment by 1
	minvalue 1
	Nocycle;
	
	ALTER TABLE S_REPLY ADD CONSTRAINT FK_S_NO_S_ENROLL FOREIGN KEY(S_NO)
   	REFERENCES S_ENROLL(S_NO) ON DELETE CASCADE;
	
*/	
	private int r_no;
	private int s_no;
	private String r_userid;
	private String r_content;
	private Date r_regdate;
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getR_userid() {
		return r_userid;
	}
	public void setR_userid(String r_userid) {
		this.r_userid = r_userid;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Date getR_regdate() {
		return r_regdate;
	}
	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}
	
	
}
