package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.persistence.StudentParticipationDAO;

@Service
public class StudentParticipationServiceImpl  implements StudentParticipationService{

	@Inject
	StudentParticipationDAO participationDAO;

	// 참여자 정보등록 
	@Override
	public void partiInsert(StudentParticipationVO partiVO) throws Exception {
		participationDAO.partiInsert(partiVO);
	}
 
	// userid Check 
	@Override
	public StudentParticipationVO partiCheck(StudentParticipationVO partiVO) throws Exception {
		return participationDAO.userCheck(partiVO);  
	}

}
