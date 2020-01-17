package com.king.myapp.domain;

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
 

	private int sno;
	private String userId;
	private String userPass;
	private String email;
	private String photo;
	private String category;
	private String stitle;
	private String startDate;
	private String endDate;
	private String sDay;
	private String sPlace;
	private String sContent;
	
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	} 
	public String getsDay() {
		return sDay;
	}
	public void setsDay(String sDay) {
		this.sDay = sDay;
	}
	public String getsPlace() {
		return sPlace;
	}
	public void setsPlace(String sPlace) {
		this.sPlace = sPlace;
	}
	public String getsContent() {
		return sContent;
	}
	public void setsContent(String sContent) {
		this.sContent = sContent;
	}
		
	
	
	}
