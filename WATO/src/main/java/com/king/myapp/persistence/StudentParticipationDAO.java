package com.king.myapp.persistence;


import java.util.List;
import java.util.Map;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;

public interface StudentParticipationDAO {

	
	// 참여정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;
	
	//번호로 조회 
	List<StudentParticipationVO> userCheck(int s_no) throws Exception;
	
	// 참여등록시 참여자 카운트 
	void partiCnt(int s_no) throws Exception;
	
	// 현재 학생 참여자 정보 확인 
	public StudentParticipationVO partiCheck(Map<String, Object> map) throws Exception;

	// 학생 참여신청 취소 
	public void partidelete(Map<String, Object> map) throws Exception;
	
	// 학생 참여 신청 카운트 -
	void partiCntMinus(int s_no) throws Exception;
	
	//학생 스터디 참여 리스트 
	List<StudyEnrollVO> s_getStudyPartiList(StdVO std) throws Exception;
	
	
/******************************/	
	
	// 강의 참여등록시 참여자 카운트 
	void t_partiCnt(int t_no) throws Exception;

	// 강의 참여정보 등록 
	void t_partiInsert(TeacherParticipationVO partiVO) throws Exception;

	// 강의 참여자 체크 
	List<TeacherParticipationVO> t_userCheck(int t_no) throws Exception;

	// 현재 유저의 강의 참여 여부 확인 
	public TeacherParticipationVO t_partiCheck(Map<String, Object> map) throws Exception;

	// 학생 참여신청 취소 
	public void t_partidelete(Map<String, Object> map) throws Exception;
		
	// 학생 참여 신청 카운트 -
	void t_partiCntMinus(int t_no) throws Exception;

	// 학생 강의 참여 리스트 
	List<TeacherEnrollVO> t_getTeachPartiList(String user) throws Exception;

	
}
