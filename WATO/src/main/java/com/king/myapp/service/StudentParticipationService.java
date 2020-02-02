package com.king.myapp.service;

import java.util.List;
import java.util.Map;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
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
	public void partidelete(Map<String, Object> map) throws Exception;
	
	// 참여신청 카운트 - 
	public void partiCntMinus(int s_no) throws Exception;
	
	// 학생 스터디 참여 & 별점평가 유무 확인  리스트 
	List<StudyEnrollVO> getStudyPartiList(StdVO std)throws Exception;
	
	// 별점  평가 유저 값 부여 
	public void checkStarParti(Map<String, Object> map) throws Exception;

	// 별점 평가 유저 체크 
	StudentParticipationVO getCheckStarParti(Map<String, Object> checkUser) throws Exception;
	
	// 참여 리스트 & 별점 참여 유저 불러오기 
	List<StudentParticipationVO> getStarPartiUser(StdVO std) throws Exception;

	// 강의 참여 리스트 
	List<TeacherEnrollVO> getClassPartiList(StdVO std) throws Exception;

	
	
	
	
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

	// 학생 강의 별점평가 유무 
	void class_checkStarParti(Map<String, Object> t_map) throws Exception;

	
/*************** 강사를 위한 목차 ******************/	
	// 강사 강의 목차 
	List<TeacherEnrollVO> getTeachClassList(TeachVO teach) throws Exception;

	List<TeacherParticipationVO> aprroveByTeach(int t_no) throws Exception;

	void partiusercomplete(StudentParticipationVO user) throws Exception;

	List<StudentParticipationVO> selectparticomplete(int s_no) throws Exception;

	void t_partiusercomplete(TeacherParticipationVO user) throws Exception;

	List<TeacherParticipationVO> t_selectparticomplete(int t_no) throws Exception;

	StudentParticipationVO partiCheck2(Map<String, Object> map) throws Exception;

	TeacherParticipationVO t_partiCheck2(Map<String, Object> map) throws Exception;

	List<StudyEnrollVO> getwaitingstudy(String stduserid) throws Exception;

	List<TeacherEnrollVO> getwaitingclass(String stduserid) throws Exception;

	void waitngstudydelete(Map<String, Object> map) throws Exception;




	
		

	


}
