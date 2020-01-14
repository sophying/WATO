package com.king.myapp.persistence;

import java.util.List;

import com.king.myapp.domain.StudyEnrollVO;

public interface StudyEnrollDAO {

	// 1. 일반 스터디 모집글 등록 
	public void enroll(StudyEnrollVO studyVO) throws Exception;

	// 2. list 
	public List<StudyEnrollVO> listAll() throws Exception;
	

	// 3. 상세보기  + 수정글 불러오기 
	public StudyEnrollVO detailRead(int s_no) throws Exception;

	// 조회수 
	public void viewCnt(int s_no) throws Exception;

	// 4. 수정글 등록 
	public void update(StudyEnrollVO studyVO) throws Exception;




	

}
