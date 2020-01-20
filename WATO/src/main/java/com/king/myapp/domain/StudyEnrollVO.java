package com.king.myapp.domain;

import java.sql.Date;
import java.sql.Timestamp;


public class StudyEnrollVO {
/*
	 S_NO NUMBER,
	 S_USERID VARCHAR2(20) NOT NULL,
	 S_CATEGORY VARCHAR2(15) NOT NULL,
	 S_TITLE VARCHAR2(50) NOT NULL,
	 S_STARTDATE DATE NOT NULL,
	 S_ENDDATE DATE,
	 S_DAY VARCHAR2(25),
	 S_POSTNUM NUMBER,
	 S_PLACE VARCHAR2(70),
	 S_CONTENT VARCHAR2(1000),
	 S_PHOTO VARCHAR2(40),
	 S_LEVEL VARCHAR2(10) NOT NULL,
	 S_PEOPLE NUMBER NOT NULL,
	 S_CREATDATE DATE DEFAULT SYSDATE,
	 PRIMARY KEY(S_NO) 

*/
	private int s_no;
	private String s_userId;
	private String s_category;
	private String s_title;
	private Date s_startDate;
	private Date s_endDate;
	private String s_day;
	private int s_postnum;
	private String s_place;
	private String s_content;
	private String s_intro;
	private String s_photo;
	private String s_level;
	private int s_people;
	private int s_parti;
	private int s_viewcnt;
	private Timestamp s_creadate;
	private Timestamp s_updatedate ;
	
	
	private String road;
	private String jibun;
	
	
	
	
	public final int getS_viewcnt() {
		return s_viewcnt;
	}
	public final void setS_viewcnt(int s_viewcnt) {
		this.s_viewcnt = s_viewcnt;
	}
	public final String getS_intro() {
		return s_intro;
	}
	public final void setS_intro(String s_intro) {
		this.s_intro = s_intro;
	}
	public final int getS_parti() {
		return s_parti;
	}
	public final void setS_parti(int s_parti) {
		this.s_parti = s_parti;
	}
	public final String getRoad() {
		return road;
	}
	public final void setRoad(String road) {
		this.road = road;
	}
	public final String getJibun() {
		return jibun;
	}
	public final void setJibun(String jibun) {
		this.jibun = jibun;
	}
	public Timestamp getS_updatedate() {
		return s_updatedate;
	}
	public void setS_updatedate(Timestamp s_updatedate) {
		this.s_updatedate = s_updatedate;
	}
	public final int getS_no() {
		return s_no;
	}
	public final void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public final String getS_userId() {
		return s_userId;
	}
	public final void setS_userId(String s_userId) {
		this.s_userId = s_userId;
	}
	public final String getS_category() {
		return s_category;
	}
	public final void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public final String getS_title() {
		return s_title;
	}
	public final void setS_title(String s_title) {
		this.s_title = s_title;
	}
	
	public final Date getS_startDate() {
		return s_startDate;
	}
	public final void setS_startDate(Date s_startDate) {
		this.s_startDate = s_startDate;
	}
	public final Date getS_endDate() {
		return s_endDate;
	}
	public final void setS_endDate(Date s_endDate) {
		this.s_endDate = s_endDate;
	}
	public final String getS_day() {
		return s_day;
	}
	public final void setS_day(String s_day) {
		this.s_day = s_day;
	}
	public final int getS_postnum() {
		return s_postnum;
	}
	public final void setS_postnum(int s_postnum) {
		this.s_postnum = s_postnum;
	}
	public final String getS_place() {
		return s_place;
	}
	public final void setS_place(String s_place) {
		this.s_place = s_place;
	}
	public final String getS_content() {
		return s_content;
	}
	public final void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public final String getS_photo() {
		return s_photo;
	}
	public final void setS_photo(String s_photo) {
		this.s_photo = s_photo;
	}
	public final String getS_level() {
		return s_level;
	}
	public final void setS_level(String s_level) {
		this.s_level = s_level;
	}
	public final int getS_people() {
		return s_people;
	}
	public final void setS_people(int s_people) {
		this.s_people = s_people;
	}
	public Timestamp getS_creadate() {
		return s_creadate;
	}
	public void setS_creadate(Timestamp s_creadate) {
		this.s_creadate = s_creadate;
	}
	
	

	
	
	
	
	
	
	}
