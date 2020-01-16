package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.StudentParticipationVO;

public interface StudentParticipationDAO {

	// 참여정보 등록 
	void partiInsert(StudentParticipationVO partiVO) throws Exception;

	// userid Check
	List<StudentParticipationVO> userCheck(int s_no) throws Exception;

}
