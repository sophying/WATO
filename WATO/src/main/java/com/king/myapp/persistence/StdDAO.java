package com.king.myapp.persistence;

import com.king.myapp.domain.StdVO;

public interface StdDAO {
	
	// 회원 가입
	public void std_join(StdVO vo) throws Exception;
	
	// 개인정보 수정
	public void info_modify(StdVO vo) throws Exception;	 
	
	// 아이디 중복체크
	public int idChk(StdVO vo) throws Exception;

	// 학생 정보 회원관리로
	public void admin_mng(StdVO vo) throws Exception;

	// 이메일 중복체크
	public int emailChk(StdVO vo) throws Exception;

}
