package com.king.myapp.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String postParticipation(@RequestParam("s_no") int s_no,  StudentParticipationVO partiVO, Model model) throws Exception{
		logger.info("--------------[ 참여신청 정보 등록  POST ]-----------------");		
					
		participationService.partiInsert(partiVO); 
		
		System.out.println(partiVO.getS_no());
		System.err.println(partiVO.getP_intro());
		System.err.println(partiVO.getP_tell());
		System.err.println(partiVO.getP_userid());
		 
		String p_userid = partiVO.getP_userid();
		
		/*
			1. 게시글 번호 s_no 을 가지고 같은 번호를 가지고 있는  userid 를 찾음
			2. list 를 가지고 오면 해당 list 속 동일한 userid 를 찾음
			3. 만일 있다면   '참여신청완료'  null 이라면 '참여신청'  
		*/  
		
//		StudentParticipationVO studentUserId = participationService.partiCheck(partiVO);   
//		
//		 
//	    String msg = "참여신청"; 
//	    
//	    System.out.println(msg);
//	    System.out.println("studentUserId.getS_no()"+studentUserId.getS_no()); 
//	    System.out.println("studentUserId.getP_userid()"+studentUserId.getP_userid());
//	     
//	    System.out.println(p_userid.equals(studentUserId.getP_userid()));
//	    System.out.println(partiVO.getS_no() == studentUserId.getS_no()); 
//	    if (p_userid.equals(studentUserId.getP_userid()) && partiVO.getS_no() == studentUserId.getS_no()) {
//	    	msg = "참여신청 완료";
//	    	System.out.println(msg);
//	    	model.addAttribute("complatmsg",msg); 
//		}
//	    else { 
//	    	model.addAttribute("complatmsg",null); 
//	    }
		 

	    return "/study/study_DetailRead?s_no="+s_no;  
		 
	}
	
	

}
