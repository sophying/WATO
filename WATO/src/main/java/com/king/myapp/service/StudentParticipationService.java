package com.king.myapp.service;

import java.util.List;
import java.util.Map;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.TeacherParticipationVO;

public interface StudentParticipationService {

	// 학생 참여자 정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;
	
	// 학생 참여등록 시 참여자 카운트 
	void partiCnt(int s_no) throws Exception;
	
	//******* 번호로 조회 
	List<StudentParticipationVO> userCheck(int s_no) throws Exception;

	// 현재 학생 유저의 참여정보 
	public StudentParticipationVO partiCheck(Map<String, Object> map) throws Exception;
	
	// 학생 참여신청 취소 
	void partidelete(Map<String, Object> map) throws Exception;
	
	// 참여신청 카운트 - 
	void partiCntMinus(int s_no) throws Exception;
	
	
	
	
/*********************************/	

	// 강의 참여자 정보 등록 
	void t_partiInsert(TeacherParticipationVO partiVO) throws Exception;

	// 강의 참여등록 시 참여자 카운트 
	void t_partiCnt(int t_no) throws Exception;

	//******* 참여신청 체크 
	List<TeacherParticipationVO> t_userCheck(int t_no) throws Exception;

	// 현재 유저의 강의 참여 여부 확인 
	public TeacherParticipationVO t_partiCheck(Map<String, Object> map) throws Exception;

	// 학생 참여신청 취소 
	void t_partidelete(Map<String, Object> map) throws Exception;
		
	// 참여신청 카운트 - 
	void t_partiCntMinus(int t_no) throws Exception;
		

	


}
