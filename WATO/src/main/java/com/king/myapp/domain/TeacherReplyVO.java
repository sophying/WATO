package com.king.myapp.domain;

import java.sql.Date;

public class TeacherReplyVO {

	private int r_no;
	private int t_no;
	private String r_userid;
	private String r_content;
	private Date r_regdate;
	public final int getR_no() {
		return r_no;
	}
	public final void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public final int getT_no() {
		return t_no;
	}
	public final void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public final String getR_userid() {
		return r_userid;
	}
	public final void setR_userid(String r_userid) {
		this.r_userid = r_userid;
	}
	public final String getR_content() {
		return r_content;
	}
	public final void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public final Date getR_regdate() {
		return r_regdate;
	}
	public final void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}
	
	
}
