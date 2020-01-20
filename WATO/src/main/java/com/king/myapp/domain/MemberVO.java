package com.king.myapp.domain;

import java.sql.Date;

public class MemberVO {
	
	/*
	 create table join(
	 
	 create table studymember(
		M_NO NUMBER,
		M_USERNAME varchar2(30),
		m_user_id varchar2(30),
		m_user_pwd varchar2(50),
		m_regdate date default sysdate,
		primary key(m_user_id)
);
	
	 */
	
	private int m_no;
	private String m_username;
	private String m_user_id;
	private String m_user_pwd;
	private Date m_regdaet;
	
	
	
	public final int getM_no() {
		return m_no;
	}
	public final void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public final String getM_username() {
		return m_username;
	}
	public final void setM_username(String m_username) {
		this.m_username = m_username;
	}
	public final String getM_user_id() {
		return m_user_id;
	}
	public final void setM_user_id(String m_user_id) {
		this.m_user_id = m_user_id;
	}
	public final String getM_user_pwd() {
		return m_user_pwd;
	}
	public final void setM_user_pwd(String m_user_pwd) {
		this.m_user_pwd = m_user_pwd;
	}
	public final Date getM_regdaet() {
		return m_regdaet;
	}
	public final void setM_regdaet(Date m_regdaet) {
		this.m_regdaet = m_regdaet;
	}
	
	
	
	
	
	

}
