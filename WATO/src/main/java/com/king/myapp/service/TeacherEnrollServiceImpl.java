package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.persistence.TeacherEnrollDAO;

@Service
public class TeacherEnrollServiceImpl implements TeacherEnrollService {

	@Inject
	TeacherEnrollDAO teacherDAO;
	
	// 1. 강의 등록 
	@Override
	public void addClass(TeacherEnrollVO teacherVO) throws Exception {
		teacherDAO.addClass(teacherVO);
	}

}
