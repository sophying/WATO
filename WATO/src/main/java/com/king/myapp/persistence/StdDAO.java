package com.king.myapp.persistence;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;

public interface StdDAO {
	
	// 회원 가입
	public void std_join(StdVO vo) throws Exception;
	
	// 개인정보 수정
	public void info_modify(StdVO vo) throws Exception;	 
	
	// 아이디 중복체크
	public int idChk(StdVO vo) throws Exception;

	// 학생 로그인
	public StdVO login1(StdVO svo) throws Exception;
	
	// 강사 로그인
	public TeachVO login2(TeachVO tvo) throws Exception;

}
