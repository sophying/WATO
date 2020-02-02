package com.king.myapp.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.persistence.StudentParticipationDAO;

@Service
public class StudentParticipationServiceImpl  implements StudentParticipationService{

	@Inject
	StudentParticipationDAO participationDAO;

	// 학생 참여자 정보등록 
	@Override
	public void partiInsert(StudentParticipationVO partiVO) throws Exception {
		participationDAO.partiInsert(partiVO);
	}
 
	// 학생 참여자 번호로 조회 
	@Override
	public List<StudentParticipationVO> userCheck(int s_no) throws Exception {
		return participationDAO.userCheck(s_no);
	}
	// 학생 참여등록 시 참여자 카운트 
	@Override
	public void partiCnt(int s_no) throws Exception {
		participationDAO.partiCnt(s_no);
	}
	// 현재 학생 유저의 참여정보파악 
	@Override
	public StudentParticipationVO partiCheck(Map<String, Object> map) throws Exception {
		return participationDAO.partiCheck(map);
	}
	 
	// 학생 참여신청 취소 
	@Override
	public void partidelete(Map<String, Object> map) throws Exception {
		 participationDAO.partidelete(map);
	} 
	 
	// 참여 카운트 - 
	@Override
	public void partiCntMinus(int s_no) throws Exception {
		participationDAO.partiCntMinus(s_no);
	}

	// 학생 스터디 참여 리스트 
	@Override
	public List<StudyEnrollVO> getStudyPartiList(StdVO std) throws Exception {
		return participationDAO.s_getStudyPartiList(std);
	}
	// 별점 평가 유저 값 부여 
	@Override
	public void checkStarParti(Map<String, Object> map) throws Exception {
		participationDAO.checkStarParti(map);
	}
	
	// 평가 유저 확인  
	@Override
	public StudentParticipationVO getCheckStarParti(Map<String, Object> checkUser) throws Exception {
		return participationDAO.getCheckStarParti(checkUser);
	}

	// 참여 리스트 & 별점 참여 유저 불러오기
	@Override
	public List<StudentParticipationVO> getStarPartiUser(StdVO std) throws Exception {
		return participationDAO.getStarPartiUser(std);
	}

	// 학생 강의 참여 리스트 
	@Override
	public List<TeacherEnrollVO> getClassPartiList(StdVO std) throws Exception {
		return participationDAO.getClassPartiList(std);
	}
	
	
	
	
	
	
/******************************/		
	
	
	// 강의 참여등록 시 참여자 카운트 
	@Override
	public void t_partiCnt(int t_no) throws Exception {
		participationDAO.t_partiCnt(t_no);		
	}

	// 강의 참여자 정도 등록 
	@Override
	public void t_partiInsert(TeacherParticipationVO partiVO) throws Exception {
		participationDAO.t_partiInsert(partiVO);		
	}
	// 강의 참여자 체크 
	@Override
	public List<TeacherParticipationVO> t_userCheck(int t_no) throws Exception {
		return participationDAO.t_userCheck(t_no);
	}

	// 현재 유저의 강의 참여 여부 확인 
	@Override
	public TeacherParticipationVO t_partiCheck(Map<String, Object> map) throws Exception {
		return participationDAO.t_partiCheck(map);
	}

	//
	@Override
	public void t_partidelete(Map<String, Object> map) throws Exception {
		participationDAO.t_partidelete(map);
	}

	//
	@Override
	public void t_partiCntMinus(int t_no) throws Exception {
		participationDAO.t_partiCntMinus(t_no);
	}

	// 강의 별점평가 유무 
	@Override
	public void class_checkStarParti(Map<String, Object> t_map) throws Exception {
		participationDAO.class_checkStarParti(t_map);
	}

	
	
/**************  강사를 위한 목차 ***************/	
	
	// 강사를 위한 강의 목차  ( 수락 ) 
	@Override
	public List<TeacherEnrollVO> getTeachClassList(TeachVO teach) throws Exception {
		return participationDAO.t_getTeachClassList(teach);
	}

	@Override
	public List<TeacherParticipationVO> aprroveByTeach(int t_no) throws Exception {
		return participationDAO.aprroveByTeach(t_no);
	}




	

	



}

