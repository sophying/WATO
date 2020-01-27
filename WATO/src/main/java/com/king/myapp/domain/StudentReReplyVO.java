package com.king.myapp.domain;

import java.sql.Timestamp;

public class StudentReReplyVO {
	
	/*
		"S_NO" NUMBER, 
	"R_NO" NUMBER NOT NULL ENABLE, 
	"R_NO_ORIGIN" NUMBER, 
	"R_NO_GROUPORD" NUMBER, 
	"R_NO_GROUPLAYER" NUMBER, 
	"R_USERID" VARCHAR2(30 BYTE), 
	"R_CONTENT" VARCHAR2(1000 BYTE), 
	"R_REGDATE" DATE DEFAULT sysdate,
	
*/	
	private int s_no; // 보드 번호 
	private int r_no; // 댓글 번호   시퀀
	private int r_no_origin;   // 댓글번호 동일 
	private int r_no_groupOrd; // 댓글 번호에 답글을 달면 +1 
	private int r_no_groupLayer; // +1 
	private String r_userid; // 댓글 다는 유저 
	private String r_content; //  내용 
	private Timestamp r_regdate;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getR_no_origin() {
		return r_no_origin;
	}
	public void setR_no_origin(int r_no_origin) {
		this.r_no_origin = r_no_origin;
	}
	public int getR_no_groupOrd() {
		return r_no_groupOrd;
	}
	public void setR_no_groupOrd(int r_no_groupOrd) {
		this.r_no_groupOrd = r_no_groupOrd;
	}
	public int getR_no_groupLayer() {
		return r_no_groupLayer;
	}
	public void setR_no_groupLayer(int r_no_groupLayer) {
		this.r_no_groupLayer = r_no_groupLayer;
	}
	public String getR_userid() {
		return r_userid;
	}
	public void setR_userid(String r_userid) {
		this.r_userid = r_userid;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Timestamp getR_regdate() {
		return r_regdate;
	}
	public void setR_regdate(Timestamp r_regdate) {
		this.r_regdate = r_regdate;
	}
	
	

}
