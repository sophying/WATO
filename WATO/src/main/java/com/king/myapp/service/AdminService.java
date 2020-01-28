package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.ManagementVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;

public interface AdminService {

	// 강사 이력서 승인페이지
	public List<ApprovalVO> teachlist() throws Exception;

	// 학생 로그인
	public StdVO login1(StdVO svo) throws Exception;

	// 강사 로그인
	public TeachVO login2(TeachVO tvo) throws Exception;
	
	// 아이디 찾기(학생)
	public StdVO findS_id(StdVO svo) throws Exception;
	
	// 아이디 찾기(강사)
	public TeachVO findT_id(TeachVO tvo) throws Exception;

	// 비밀번호 찾기(강사)
	public TeachVO findT_pwd(TeachVO tvo) throws Exception;

	// 비밀번호 변경(강사)
	public int changeT_pwd(TeachVO tvo) throws Exception;

	// 비밀번호 찾기(학생)
	public StdVO findS_pwd(StdVO svo) throws Exception;

	// 비밀번호 변경(학생)
	public int changeS_pwd(StdVO svo) throws Exception;

	// 회원관리 페이지
	public List<ManagementVO> manageList() throws Exception;
 
}
