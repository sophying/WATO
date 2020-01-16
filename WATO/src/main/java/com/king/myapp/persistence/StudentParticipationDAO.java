package com.king.myapp.persistence;


import com.king.myapp.domain.StudentParticipationVO;

public interface StudentParticipationDAO {

	// 참여정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;

	// userid Check
	public StudentParticipationVO userCheck(StudentParticipationVO partiVO) throws Exception; 

}
