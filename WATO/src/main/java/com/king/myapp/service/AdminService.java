package com.king.myapp.service;

import java.util.List;
import java.util.Map;

import com.king.myapp.domain.ManagementVO;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;

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

	// 전체 리스트 조회(학생)
//	public List<ManagementVO> studentList() throws Exception;

	// 전체 리스트 조회(강사)
//	public List<ManagementVO> teachList() throws Exception;

	// 학생 리스트 조회
	public List<StdVO> studentList2() throws Exception;

	// 강사 리스트 조회
	public List<TeachVO> teachList2() throws Exception;

	// 학생 회원정보 삭제
	public void StdDelete(StdVO svo) throws Exception;

	// 강사 회원정보 삭제
	public void TeachDelete(TeachVO tvo) throws Exception;

	// 회원관리 페이지
	// public List<ManagementVO> manageList() throws Exception;
	
	//학생 회원 수 카운트
	public int count_std(StdVO svo) throws Exception;
	
	//강사 회원 수 카운트
	public int count_tech(TeachVO tvo) throws Exception;

	//학생 스터디 글 카운트
	public int count_s_enroll(StdVO svo) throws Exception;

	//강사 스터디 글 카운트
	public int count_t_enroll(TeachVO tvo) throws Exception;
	
	//문의내역 카운트
	public int qna_count(StdVO svo)throws Exception;

	public int board_this_month_Count(QnaBoardVO qvo) throws Exception;

	public List<Object> t_apply_month() throws Exception;

	public List<Object> s_apply_month() throws Exception;

	public List<Object> qna_month() throws Exception;


	
	
 
}
