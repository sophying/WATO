package com.king.myapp.domain;

import java.sql.Timestamp;

public class TeacherParticipationVO {
	
	/*
		create table t_parti(
	  p_no number,
	  t_no number,
	  p_userid varchar2(30),
	  p_intro varchar2(100),
	  p_tell number,
	  primary key(p_no));
	  
	  Create sequence T_PARTI_SEQ
		Start with 1
		Increment by 1
		minvalue 1
		Nocycle;
	*/
	private int p_no;
	private int t_no;
	private String p_userid;
	private String p_intro;
	private int p_tell;
	private Timestamp p_regdate;
	
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getP_userid() {
		return p_userid;
	}
	public void setP_userid(String p_userid) {
		this.p_userid = p_userid;
	}
	public String getP_intro() {
		return p_intro;
	}
	public void setP_intro(String p_intro) {
		this.p_intro = p_intro;
	}
	public int getP_tell() {
		return p_tell;
	}
	public void setP_tell(int p_tell) {
		this.p_tell = p_tell;
	}
	public Timestamp getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(Timestamp p_regdate) {
		this.p_regdate = p_regdate;
	}
	

	
}
