package com.king.myapp.persistence;

import com.king.myapp.domain.TeacherEnrollVO;

public interface TeacherEnrollDAO {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

}
