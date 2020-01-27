package com.king.myapp.domain;

import java.sql.Timestamp;

public class LeaderReVO {
	/*
	s_no number,
	rr_no number,
	rr_userid varchar2(30),
	rr_content varchar2(1000),
	rr_regdate date default sysdate,
	primary key(rr_no)

	 */
	
	private int s_no;
	private int rr_no; // 시퀀시 
	private int r_no_origin; // r_no 참조 
	private String rr_userid;
	private String rr_content;
	private Timestamp rr_regdate;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getRr_no() {
		return rr_no;
	}
	public void setRr_no(int rr_no) {
		this.rr_no = rr_no;
	}
	public int getR_no_origin() {
		return r_no_origin;
	}
	public void setR_no_origin(int r_no_origin) {
		this.r_no_origin = r_no_origin;
	}
	public String getRr_userid() {
		return rr_userid;
	}
	public void setRr_userid(String rr_userid) {
		this.rr_userid = rr_userid;
	}
	public String getRr_content() {
		return rr_content;
	}
	public void setRr_content(String rr_content) {
		this.rr_content = rr_content;
	}
	public Timestamp getRr_regdate() {
		return rr_regdate;
	}
	public void setRr_regdate(Timestamp rr_regdate) {
		this.rr_regdate = rr_regdate;
	}
	
	
	
	
	
	
	
}
