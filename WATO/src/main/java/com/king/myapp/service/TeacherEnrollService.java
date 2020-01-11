package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.TeacherEnrollVO;

public interface TeacherEnrollService {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

	// 2. list 출력 
	public List<TeacherEnrollVO> list() throws Exception;

	// 3. 상세보기 
	public TeacherEnrollVO detailRead(int t_no) throws Exception;


}
