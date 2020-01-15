package com.king.myapp.service;

import com.king.myapp.domain.StudentParticipationVO;

public interface StudentParticipationService {

	// 참여자 정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;

}
