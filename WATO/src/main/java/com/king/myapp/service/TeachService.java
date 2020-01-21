package com.king.myapp.service;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;

public interface TeachService {
	
	// 회원 가입1
	public void teach_join(ApprovalVO vo) throws Exception;	
	
	// 회원 가입2(관리자가 강사 승인버튼을 클릭했을 때)
	public void teach_join2(TeachVO vo) throws Exception;	
	
	// 개인정보 수정
	public void info_modify(TeachVO vo) throws Exception;
	
	// 아이디 중복 체크
	public int idChk(TeachVO vo) throws Exception;

	// 로그인
	public TeachVO login(TeachVO vo) throws Exception;

	// 강사 회원 가입3
	public void teach_join3(TeachVO vo) throws Exception;

	// 강사 승인 후 정보 삭제
	public void app_delete(ApprovalVO avo) throws Exception;

	// 강사 승인신청 누르면 app_num 값 바꿔주기
	public void app_num(ApprovalVO avo) throws Exception;

}
