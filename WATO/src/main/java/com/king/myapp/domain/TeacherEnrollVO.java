package com.king.myapp.domain;

public class TeacherEnrollVO {
	
	
	/*
	t_no      NUMBER  NOT NULL,
	t_userId   VARCHAR2(20)  NOT NULL,
	t_category VARCHAR2(15)  NOT NULL,
	t_title   VARCHAR2(50)  NOT NULL,
	t_startDate
	t_endDate
	t_day     VARCHAR2(25)  NOT NULL,	
	t_postnum number,
	t_place   VARCHAR2(70),
	t_content VARCHAR2(1000)  NOT NULL,
	t_URL varchar2(300),
	t
	
	
	PRIMARY KEY(SNO)

	*/ 
	
	private int t_no;
	private String t_userId;
	private String t_category;
	private String t_title;
	private String t_startDate;
	private String t_endDate; 
	private String t_day;
	private int t_postnum;
	private String t_place;
	private String t_content;
	private String t_URL;
	private String t_photo; 
	private String t_license;
	private String t_level;
	private int t_people;

	public String getT_level() {
		return t_level;
	}
	public void setT_level(String t_level) {
		this.t_level = t_level;
	}
	public int getT_people() {
		return t_people;
	}
	public void setT_people(int t_people) {
		this.t_people = t_people;
	}
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getT_userId() {
		return t_userId;
	}
	public void setT_userId(String t_userId) {
		this.t_userId = t_userId;
	}
	public String getT_category() {
		return t_category;
	}
	public void setT_category(String t_category) {
		this.t_category = t_category;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getT_startDate() {
		return t_startDate;
	}
	public void setT_startDate(String t_startDate) {
		this.t_startDate = t_startDate;
	}
	public String getT_endDate() {
		return t_endDate;
	}
	public void setT_endDate(String t_endDate) {
		this.t_endDate = t_endDate;
	}
	public String getT_day() {
		return t_day;
	}
	public void setT_day(String t_day) {
		this.t_day = t_day;
	}
	public int getT_postnum() {
		return t_postnum;
	}
	public void setT_postnum(int t_postnum) {
		this.t_postnum = t_postnum;
	}
	public String getT_place() {
		return t_place;
	}
	public void setT_place(String t_place) {
		this.t_place = t_place;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public String getT_URL() {
		return t_URL;
	}
	public void setT_URL(String t_URL) {
		this.t_URL = t_URL;
	}
	public String getT_photo() {
		return t_photo;
	}
	public void setT_photo(String t_photo) {
		this.t_photo = t_photo;
	}
	public String getT_license() {
		return t_license;
	}
	public void setT_license(String t_license) {
		this.t_license = t_license;
	}
	
}
