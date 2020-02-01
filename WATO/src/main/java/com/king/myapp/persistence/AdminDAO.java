package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.ManagementVO;
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
	// public List<ManagementVO> manageList() throws Exception;

	// 전체 리스트 조회(학생)
	public List<ManagementVO> studentList() throws Exception;

	// 전체 리스트 조회(강사)
	public List<ManagementVO> teachList() throws Exception;

	// 학생 리스트 조회
	public List<StdVO> studentList2() throws Exception;

	// 강사 리스트 조회
	public List<TeachVO> teachList2() throws Exception;

	// 학생 회원정보 삭제
	public void StdDelete(StdVO svo) throws Exception;

	// 강사 회원정보 삭제
	public void TeachDelete(TeachVO tvo) throws Exception;

}
