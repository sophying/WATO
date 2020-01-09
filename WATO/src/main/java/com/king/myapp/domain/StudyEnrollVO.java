package com.king.myapp.domain;

import java.util.Date;

public class StudyEnrollVO {
/*
    SNO  NUMBER  NOT NULL,
      USERID VARCHAR2(20)  NOT NULL,
      USERPASS VARCHAR2(100) NOT NULL,
      EMAIL  VARCHAR2(30),
      PHOTO VARCHAR2(20),
      CATEGORY VARCHAR2(15)  NOT NULL,
      STITLE VARCHAR2(50)  NOT NULL,
      STARTDATE  DATE,
      ENDDATE  DATE,
      SDAY VARCHAR2(25)  NOT NULL,
      SPLACE VARCHAR2(70),
      SCONTENT VARCHAR2(1000)  NOT NULL,
      PRIMARY KEY(SNO)
      
     type 을 맞춰주지 않을 경우 400번 에러 발생 
	   값을 hidden 으로 전달할 경우 submit 버튼 이벤트 안에서 할 것
*/
 

	private int s_no;
	private String s_userId="sophy";
	private String s_email="sophy@gmail.com";
	private String s_photo;
	private String s_category;
	private String s_title;
	private Date s_startDate;
	private Date s_endDate;
	private String s_Day;
	private int s_postnum;
	private String s_Place;
	private String s_content;
	private String t_level;
	private int s_people;
	
	
	
	
	public String getT_level() {
		return t_level;
	}
	public void setT_level(String t_level) {
		this.t_level = t_level;
	}
	public int getS_people() {
		return s_people;
	}
	public void setS_people(int s_people) {
		this.s_people = s_people;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_userId() {
		return s_userId;
	}
	public void setS_userId(String s_userId) {
		this.s_userId = s_userId;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public String getS_photo() {
		return s_photo;
	}
	public void setS_photo(String s_photo) {
		this.s_photo = s_photo;
	}
	public String getS_category() {
		return s_category;
	}
	public void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public Date getS_startDate() {
		return s_startDate;
	}
	public void setS_startDate(Date s_startDate) {
		this.s_startDate = s_startDate;
	}
	public Date getS_endDate() {
		return s_endDate;
	}
	public void setS_endDate(Date s_endDate) {
		this.s_endDate = s_endDate;
	}
	public String getS_Day() {
		return s_Day;
	}
	public void setS_Day(String s_Day) {
		this.s_Day = s_Day;
	}
	public int getS_postnum() {
		return s_postnum;
	}
	public void setS_postnum(int s_postnum) {
		this.s_postnum = s_postnum;
	}
	public String getS_Place() {
		return s_Place;
	}
	public void setS_Place(String s_Place) {
		this.s_Place = s_Place;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	
	
	
	
	
	
	}
