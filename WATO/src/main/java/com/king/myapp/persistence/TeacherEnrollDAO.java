package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.TeacherEnrollVO;

public interface TeacherEnrollDAO {

	// 1. 강의 등록 
	public void addClass(TeacherEnrollVO teacherVO) throws Exception;

	
	// 2. list 출력 
	public List<TeacherEnrollVO> listAll() throws Exception;


	// 3. 상세보기 
	public TeacherEnrollVO detailRead(int t_no) throws Exception;


	// viewCnt 조회수 
	public void viewCnt(int t_no) throws Exception;

	// 수정글 등록 
	public void update(TeacherEnrollVO teacherVO) throws Exception;

}
