package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.AdminVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;

public interface AdminDAO {

	// 학생 목록
	public List<ApprovalVO> teachlist() throws Exception;

	// 학생 로그인
	public StdVO login1(StdVO svo) throws Exception;

	// 강사 로그인
	public TeachVO login2(TeachVO tvo) throws Exception;
	
	// 학생 비밀번호 찾기
	public StdVO findS_pwd(StdVO svo) throws Exception;
	
	// 학생 비밀번호 변경
	public int changeS_pwd(StdVO svo) throws Exception;

	// 강사 비밀번호 찾기
	public TeachVO findT_pwd(TeachVO tvo) throws Exception;

	// 강사 비밀번호 변경
	public int changeT_pwd(TeachVO tvo) throws Exception;

	// 학생 아이디 찾기
	public StdVO findS_id(StdVO svo) throws Exception;

	// 강사 아이디 찾기
	public TeachVO findT_id(TeachVO tvo) throws Exception;

	// 회원관리
	public List<AdminVO> manageList() throws Exception;

}
