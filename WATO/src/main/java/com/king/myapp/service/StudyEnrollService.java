package com.king.myapp.service;

import com.king.myapp.domain.StudyEnrollVO;

public interface StudyEnrollService {
	
	// 1. 일반 스터디 모집글 등록 
	public void enroll(StudyEnrollVO studyVO) throws Exception;

	// 2. 일반 스터디 모집글 수정
	public StudyEnrollVO modifySelect(int s_no) throws Exception;

	// 3. 일반 스터디 모집글 수정글 등록
	public void modifyEnroll(StudyEnrollVO studyVO) throws Exception;

}
