package com.king.myapp.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
