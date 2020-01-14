package com.king.myapp.domain;

import java.sql.Date;

public class StudentReplyVO {

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
