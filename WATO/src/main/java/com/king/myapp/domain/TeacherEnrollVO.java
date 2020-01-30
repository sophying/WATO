package com.king.myapp.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class TeacherEnrollVO {

	/*
T_NO            NOT NULL NUMBER         
T_USERID        NOT NULL VARCHAR2(30)   
T_CATEGORY      NOT NULL VARCHAR2(30)   
T_TITLE         NOT NULL VARCHAR2(100)  
T_STARTDATE     NOT NULL DATE           
T_ENDDATE                DATE           
T_DAY           NOT NULL VARCHAR2(30)   
T_POSTNUM                NUMBER         
T_PLACE         NOT NULL VARCHAR2(100)  
T_CONTENT       NOT NULL VARCHAR2(3000) 
T_PHOTO                  VARCHAR2(50)   
T_LEVEL         NOT NULL VARCHAR2(10)   
T_PEOPLE        NOT NULL NUMBER         
T_PARTI                  NUMBER         
T_CREADATE               DATE           
T_UPDATEDATE             DATE           
T_URL                    VARCHAR2(500)  
T_LICENSE                VARCHAR2(50)   
T_VIEWCNT                NUMBER         
T_INTRO                  VARCHAR2(3000) 
T_PRICE         NOT NULL VARCHAR2(50)   
STARSCORE                NUMBER         
STARSCORE_PARTI          NUMBER     
	
	*/

	private int t_no;
	private String t_userId;
	private String t_category;
	private String t_title;
	private Date t_startDate;
	private Date t_endDate;
	private String t_day;
	private int t_postnum;
	private String t_place;
	private String t_content;
	private String t_URL;
	private String t_photo;
	private String t_license;
	private String t_level;
	private int t_people;
	private int t_parti;
	private int t_viewcnt;
	private Timestamp t_creadate;
	private Timestamp t_updatedate;
	private String t_price;
	private String t_intro;
	private int starScore;
	private int starscore_parti;
	

	private String road;
	private String jibun;
	

	public final int getStarScore() {
		return starScore;
	}

	public final void setStarScore(int starScore) {
		this.starScore = starScore;
	}

	public final int getStarscore_parti() {
		return starscore_parti;
	}

	public final void setStarscore_parti(int starscore_parti) {
		this.starscore_parti = starscore_parti;
	}

	public String getRoad() {
		return road;
	}

	public void setRoad(String road) {
		this.road = road;
	}

	public String getJibun() {
		return jibun;
	}

	public void setJibun(String jibun) {
		this.jibun = jibun;
	}

	public int getT_parti() {
		return t_parti;
	}

	public void setT_parti(int t_parti) {
		this.t_parti = t_parti;
	}

	public int getT_viewcnt() {
		return t_viewcnt;
	}

	public void setT_viewcnt(int t_viewcnt) {
		this.t_viewcnt = t_viewcnt;
	}

	public String getT_intro() {
		return t_intro;
	}

	public void setT_intro(String t_intro) {
		this.t_intro = t_intro;
	}

	public String getT_price() {
		return t_price;
	}

	public void setT_price(String t_price) {
		this.t_price = t_price;
	}

	public Timestamp getT_updatedate() {
		return t_updatedate;
	}

	public void setT_updatedate(Timestamp t_updatedate) {
		this.t_updatedate = t_updatedate;
	}

	public Timestamp getT_creadate() {
		return t_creadate;
	}

	public void setT_creadate(Timestamp t_creadate) {
		this.t_creadate = t_creadate;
	}

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
