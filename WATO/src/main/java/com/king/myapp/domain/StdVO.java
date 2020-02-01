package com.king.myapp.domain;

import org.springframework.web.multipart.MultipartFile;

public class StdVO {
	
	private String No;
	private MultipartFile Std_Profile;
	private String Std_Orgname;
	private String User_Id;
	private String User_Pwd;
	private String Std_Gender;
	private String Std_Phone1;
	private String Std_Phone2;
	private String Std_Phone3;
	private String User_Email;
	private String Std_Addr1;
	private String Std_Addr2;
	private String Std_Addr3;
	
	public String getNo() {
		return No;
	}
	public void setNo(String no) {
		No = no;
	}
	public MultipartFile getStd_Profile() {
		return Std_Profile;
	}
	public void setStd_Profile(MultipartFile std_Profile) {
		Std_Profile = std_Profile;
	}
	public String getStd_Orgname() {
		return Std_Orgname;
	}
	public void setStd_Orgname(String std_Orgname) {
		Std_Orgname = std_Orgname;
	}
	public String getUser_Id() {
		return User_Id;
	}
	public void setUser_Id(String user_Id) {
		User_Id = user_Id;
	}
	public String getUser_Pwd() {
		return User_Pwd;
	}
	public void setUser_Pwd(String user_Pwd) {
		User_Pwd = user_Pwd;
	}
	public String getStd_Gender() {
		return Std_Gender;
	}
	public void setStd_Gender(String std_Gender) {
		Std_Gender = std_Gender;
	}
	public String getStd_Phone1() {
		return Std_Phone1;
	}
	public void setStd_Phone1(String std_Phone1) {
		Std_Phone1 = std_Phone1;
	}
	public String getStd_Phone2() {
		return Std_Phone2;
	}
	public void setStd_Phone2(String std_Phone2) {
		Std_Phone2 = std_Phone2;
	}
	public String getStd_Phone3() {
		return Std_Phone3;
	}
	public void setStd_Phone3(String std_Phone3) {
		Std_Phone3 = std_Phone3;
	}
	public String getUser_Email() {
		return User_Email;
	}
	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}
	public String getStd_Addr1() {
		return Std_Addr1;
	}
	public void setStd_Addr1(String std_Addr1) {
		Std_Addr1 = std_Addr1;
	}
	public String getStd_Addr2() {
		return Std_Addr2;
	}
	public void setStd_Addr2(String std_Addr2) {
		Std_Addr2 = std_Addr2;
	}
	public String getStd_Addr3() {
		return Std_Addr3;
	}
	public void setStd_Addr3(String std_Addr3) {
		Std_Addr3 = std_Addr3;
	}	
}
