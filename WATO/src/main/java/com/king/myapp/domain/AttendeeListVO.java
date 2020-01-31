package com.king.myapp.domain;

import java.sql.Date;

public class AttendeeListVO {

	/*
	 t.t_no,
	 t.t_level, 
	 t.t_category,
	 t.t_title, 
	 t.t_startdate ,
	 t.t_enddate ,
	 t.t_userid, 
	 p.p_userid, 
	 p.p_tell,
	 p.p_intro 
	 
	 */
	
	private int t_no;
	private int t_level;
	private String t_category;
	private String t_title;
	private Date t_startDate;
	private Date t_endDate;
	private String t_userid;
	private String p_userid;
	private int p_tell;
	private String p_intro;
	
	
	public final int getT_no() {
		return t_no;
	}
	public final void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public final int getT_level() {
		return t_level;
	}
	public final void setT_level(int t_level) {
		this.t_level = t_level;
	}
	public final String getT_category() {
		return t_category;
	}
	public final void setT_category(String t_category) {
		this.t_category = t_category;
	}
	public final String getT_title() {
		return t_title;
	}
	public final void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public final Date getT_startDate() {
		return t_startDate;
	}
	public final void setT_startDate(Date t_startDate) {
		this.t_startDate = t_startDate;
	}
	public final Date getT_endDate() {
		return t_endDate;
	}
	public final void setT_endDate(Date t_endDate) {
		this.t_endDate = t_endDate;
	}
	public final String getT_userid() {
		return t_userid;
	}
	public final void setT_userid(String t_userid) {
		this.t_userid = t_userid;
	}
	public final String getP_userid() {
		return p_userid;
	}
	public final void setP_userid(String p_userid) {
		this.p_userid = p_userid;
	}
	public final int getP_tell() {
		return p_tell;
	}
	public final void setP_tell(int p_tell) {
		this.p_tell = p_tell;
	}
	public final String getP_intro() {
		return p_intro;
	}
	public final void setP_intro(String p_intro) {
		this.p_intro = p_intro;
	}
	
	
	
	
	
}
