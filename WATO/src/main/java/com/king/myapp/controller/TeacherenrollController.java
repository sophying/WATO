package com.king.myapp.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.service.TeacherEnrollService;

@Controller
@RequestMapping("/study/*")
public class TeacherenrollController {

	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);
	
	@Inject
	TeacherEnrollService teacherService;
	
	@RequestMapping(value = "/teacherEnroll", method = RequestMethod.GET)
	public void getEnroll() throws Exception{
		
		logger.info("--------------[ 강의 등록 페이지 GET ]-----------------");
		
	}
	
	@RequestMapping(value = "/teacherEnroll",method = RequestMethod.POST)
	public String postEnroll(TeacherEnrollVO teacherVO) throws Exception{
		
		logger.info("--------------[ 강의 등록 페이지 POST ]-----------------");
		
		teacherService.addClass(teacherVO);
		
		return"redirect:/";
		
	}
	
}
