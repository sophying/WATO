package com.king.myapp.service;

import com.king.myapp.domain.TeacherEnrollVO;

public interface TeacherEnrollService {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

}
