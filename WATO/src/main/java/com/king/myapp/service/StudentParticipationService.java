package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.StudentParticipationVO;

public interface StudentParticipationService {

	// 참여자 정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;

	// user Check 진행 
	List<StudentParticipationVO> partiCheck(int s_no) throws Exception;


}
