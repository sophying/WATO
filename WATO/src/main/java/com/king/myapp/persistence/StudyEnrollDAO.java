package com.king.myapp.persistence;

import com.king.myapp.domain.StudyEnrollVO;

public interface StudyEnrollDAO {

	// 1. 일반 스터디 모집글 등록 
	public void enroll(StudyEnrollVO studyVO) throws Exception;

	// 2. 일반 스터디 모집글 수정
	public StudyEnrollVO modify(int s_no) throws Exception;

	// 3. 일반 스터디 모집글 수정글 등록
	public void modifyUpdate(StudyEnrollVO studyVO) throws Exception;

}
