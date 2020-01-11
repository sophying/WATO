package com.king.myapp.persistence;

import com.king.myapp.domain.TeachVO;

public interface TeachDAO {
	
	// 회원 가입
	public void teach_join(TeachVO vo) throws Exception;
	
	// 개인정보 수정
	public void info_modify(TeachVO vo) throws Exception;	 
	
	// 아이디 중복체크
	public int idChk(TeachVO vo) throws Exception;

	// 로그인
	public TeachVO login(TeachVO vo) throws Exception;

}
