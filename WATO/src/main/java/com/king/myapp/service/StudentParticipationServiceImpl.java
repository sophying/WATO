package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StudentParticipationVO;
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
	public List<StudentParticipationVO> partiCheck(int s_no) throws Exception {
		return participationDAO.userCheck(s_no);
	}
}
