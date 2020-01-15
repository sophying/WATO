package com.king.myapp.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.service.StudentParticipationService;

@Controller
@RequestMapping("/parti/*")
public class ParticipationController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);	
	
	@Inject
	StudentParticipationService participationService;
	
	/*  ____________ 참여신청 ___________   */ 
	
	// userid 값 추가 할 것 
	@RequestMapping(value = "/participation", method = RequestMethod.POST)
	public String postParticipation(@RequestParam("s_no") int s_no, StudentParticipationVO partiVO) throws Exception{
		logger.info("--------------[ 참여신청 정보 등록  POST ]-----------------");		
					
		participationService.partiInsert(partiVO); 
		
		System.err.println(partiVO.getP_intro());
		System.err.println(partiVO.getP_tell());
		System.err.println(partiVO.getUserid());
		System.err.println(partiVO.getP_regdate());
		return "redirect:/study/study_DetailRead?s_no="+s_no;
	}
	
	

}
