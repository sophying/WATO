package com.king.myapp.service;

import com.king.myapp.domain.StudentParticipationVO;

public interface StudentParticipationService {

	// 참여자 정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;

//	StudentParticipationVO partiCheck(StudentParticipationVO partiVO) throws Exception;
	
	// user Check 진행  
	StudentParticipationVO userCheck(StudentParticipationVO partiVO) throws Exception;


}
