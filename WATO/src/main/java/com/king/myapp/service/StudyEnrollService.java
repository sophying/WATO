package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.StudyEnrollVO;

public interface StudyEnrollService {
	
	// 1. 일반 스터디 모집글 등록 
	public void enroll(StudyEnrollVO studyVO) throws Exception;

	// 3. list 목차 출력 
	public List<StudyEnrollVO> list() throws Exception;

	//  상세보기 
	public void viewCount(int s_no) throws Exception;
	
	
	// 3. 상세보기 + 수정글 보기 
	public StudyEnrollVO detailRead(int s_no) throws Exception;

	// 4.  수정등록 
	public void modify(StudyEnrollVO studyVO) throws Exception;




	

}
