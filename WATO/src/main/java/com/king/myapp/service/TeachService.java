package com.king.myapp.service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;

public interface TeachService {
	
	// 회원 가입1
	public void teach_join(ApprovalVO vo) throws Exception;	
	
	// 회원 가입2
	public void teach_join2(TeachVO vo) throws Exception;	
	
	// 개인정보 수정
	public void info_modify(TeachVO vo) throws Exception;
	
	// 아이디 중복 체크
	public int idChk(TeachVO vo) throws Exception;

	// 로그인
	public TeachVO login(TeachVO vo) throws Exception;

	// 강사 회원 가입3
	public void teach_join3(TeachVO vo) throws Exception;

}
