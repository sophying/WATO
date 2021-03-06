package com.king.myapp.persistence;


import java.util.List;
import java.util.Map;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
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
	
	// 별점 평가한 유저 값 부여 
	void checkStarParti(Map<String, Object> map) throws Exception;
	
	// 별점 평가 유저 확인 
	StudentParticipationVO getCheckStarParti(Map<String, Object> checkUser) throws Exception;

	// 참여 리스트 & 별점 참여 유저 불러오기
	List<StudentParticipationVO> getStarPartiUser(StdVO std) throws Exception;
	
	// 학생 강의 참여 리스트 
	List<TeacherEnrollVO> getClassPartiList(StdVO std) throws Exception;
	
	
	
	
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

	// 학생 강의 별점 평가 유무 
	void class_checkStarParti(Map<String, Object> t_map) throws Exception;


/*************** 강사를 위한 목차 ***************/		
	
	// 강사를 위한 강의 목록 
	List<TeacherEnrollVO> t_getTeachClassList(TeachVO teach) throws Exception;

	List<TeacherParticipationVO> aprroveByTeach(int t_no) throws Exception;

	void partiusercomplete(StudentParticipationVO user) throws Exception;

	List<StudentParticipationVO> selectparticomplete(int s_no) throws Exception;

	void t_partiusercomplete(TeacherParticipationVO user) throws Exception;

	List<TeacherParticipationVO> t_selectparticomplete(int t_no) throws Exception;

	StudentParticipationVO partiCheck2(Map<String, Object> map) throws Exception;

	TeacherParticipationVO t_partiCheck2(Map<String, Object> map) throws Exception;

	List<TeacherEnrollVO> getwaitingclass(String stduserid) throws Exception;

	List<StudyEnrollVO> getwaitingstudy(String stduserid) throws Exception;

	void waitngstudydelete(Map<String, Object> map) throws Exception;





	
}
