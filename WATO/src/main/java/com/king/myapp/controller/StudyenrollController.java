package com.king.myapp.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.service.StudyEnrollService;


@Controller
@RequestMapping("/study/*")
public class StudyenrollController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);	
	
	@Inject
	StudyEnrollService studyService;
	
	
	// 1. 일반인 Study 모집 등록하러 가기
	@RequestMapping(value = "/normalEnroll", method = RequestMethod.GET)
	public void getEnroll() throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 등록 GET ]---------------------------<");
		
	}
	
	// 1. 일반인 Study 모집 글 작성 등록
	@RequestMapping(value = "/normalEnroll", method = RequestMethod.POST)
	public String postEnroll(StudyEnrollVO studyVO) throws Exception{

		logger.info(">--------------------[ 일반인 스터디 모집 등록 POST ]---------------------------<");		
		studyService.enroll(studyVO);
		
		return "redirect:/";
		
	}
	
	// 2. 일반인 Study 등록 내용 수정하러 가기
	@RequestMapping(value = "/normalModify", method = RequestMethod.GET)
	public void getModify(@RequestParam("s_no") int s_no, Model model) throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 수정 GET ]---------------------------<");
		
		StudyEnrollVO studyVO = studyService.modifySelect(s_no);
		model.addAttribute("modifyVO",studyVO);
		
	}
	
	// 2. 일반인 Study 내용 수정 등록하기
	@RequestMapping(value = "/normalModify", method = RequestMethod.POST)
	public String postModify(StudyEnrollVO studyVO) throws Exception{
		
		studyService.modifyEnroll(studyVO);
		return "redirect:/";
		
	}
	
	
}
