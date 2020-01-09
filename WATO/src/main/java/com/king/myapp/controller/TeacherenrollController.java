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
	
	// 1 강의 등록 페이지 이동   
	@RequestMapping(value = "/teacherEnroll", method = RequestMethod.GET)
	public void getEnroll() throws Exception{
		
		logger.info("--------------[ 강의 등록 페이지 GET ]-----------------");
		
	}
	
	// 1. 강의 상세 내용 등록 
	@RequestMapping(value = "/teacherEnroll",method = RequestMethod.POST)
	public String postEnroll(TeacherEnrollVO teacherVO) throws Exception{
		
		logger.info("--------------[ 강의 등록 페이지 POST ]-----------------");
		 
		System.out.println("아이디"+teacherVO.getT_userId());
		System.out.println("카테고리"+teacherVO.getT_category()); 
		System.out.println("제목"+teacherVO.getT_title());
		System.out.println("시작날짜"+teacherVO.getT_startDate());
		System.out.println("종료날짜"+teacherVO.getT_endDate());
		System.out.println("t_day"+teacherVO.getT_day());
		System.out.println("t_postnum"+teacherVO.getT_postnum());
		System.out.println("getT_place"+teacherVO.getT_place());
		System.out.println("getT_content"+teacherVO.getT_content());
		System.out.println("getT_URL"+teacherVO.getT_URL()); 
		System.out.println("getT_photo"+teacherVO.getT_photo());
		System.out.println("getT_license"+teacherVO.getT_license());
		System.out.println("T_people--"+teacherVO.getT_people());
		System.out.println("T_level--"+teacherVO.getT_level());
		
		
		teacherService.addClass(teacherVO);
		 
		return"redirect:/";
		
	}
	
	//2. 강의 내용 수정 페이지 이동 
	@RequestMapping(value = "/teacherModify", method = RequestMethod.GET)
	public void getTeacherModify() throws Exception{
		
		
	}
	//3. 강의 내용 수정 페이지 이동 
	@RequestMapping(value = "/classBoard", method = RequestMethod.GET)
	public void getClassBoard() throws Exception{
		
		logger.info("--------------[ 강의 리스트 GET ]-----------------");
			
	}
	
}
