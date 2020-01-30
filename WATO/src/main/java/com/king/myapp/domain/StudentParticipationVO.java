package com.king.myapp.domain;

import java.sql.Timestamp;

public class StudentParticipationVO {
	
	/*
P_NO            NOT NULL NUMBER        
S_NO                     NUMBER        
P_USERID                 VARCHAR2(30)  
P_INTRO                  VARCHAR2(100) 
P_TELL                   NUMBER(30)    
P_REGDATE                DATE          
STARSCORE_PARTI          NUMBER



	  Create sequence S_PARTI_SEQ
		Start with 1
		Increment by 1
		minvalue 1
		Nocycle;


	 */
	
	private int p_no;
	private int s_no;
	private String p_userid;
	private String p_intro;
	private int p_tell;
	private Timestamp p_regdate;
	private int starscore_parti;
	
	
	
	public final int getStarscore_parti() {
		return starscore_parti;
	}
	public final void setStarscore_parti(int starscore_parti) {
		this.starscore_parti = starscore_parti;
	}
	public Timestamp getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(Timestamp p_regdate) {
		this.p_regdate = p_regdate;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
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
	
	
	
	
}
