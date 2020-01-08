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

}
