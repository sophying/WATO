package com.king.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.persistence.StudyEnrollDAO;


@Service
public class StudyEnrollServiceImpl implements StudyEnrollService{

	@Inject
	StudyEnrollDAO studyEnrollDAO;
	
	// 1. 일반 스터디 모집글 등록 
	@Override
	public void enroll(StudyEnrollVO studyVO) throws Exception { 
		studyEnrollDAO.enroll(studyVO);
	}

	// 2. 목차 출력
	@Override
	public List<StudyEnrollVO> list() throws Exception {
		return studyEnrollDAO.listAll();
	}
	
	// viewcnt 조회수 
	@Override
	public void viewCount(int s_no) throws Exception {
		studyEnrollDAO.viewCnt(s_no);
	}

	
	// 3. 일반 스터디 모집글 수정

	@Override
	public StudyEnrollVO detailRead(int s_no) throws Exception  {

		return studyEnrollDAO.detailRead(s_no);
	}

	// 4. 수정글 등록 
	@Override
	public void modify(StudyEnrollVO studyVO) throws Exception {
		studyEnrollDAO.update(studyVO);
	}




} 
