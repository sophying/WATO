package com.king.myapp.service;

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

	// 2. 일반 스터디 모집글 수정
	@Override
	public StudyEnrollVO modifySelect(int s_no) throws Exception {
		
		return studyEnrollDAO.modify(s_no);
	}

	@Override
	public void modifyEnroll(StudyEnrollVO studyVO) throws Exception {
		studyEnrollDAO.modifyUpdate(studyVO);
	}

} 
