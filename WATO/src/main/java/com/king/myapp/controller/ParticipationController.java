package com.king.myapp.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
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
	public String postParticipation(@RequestParam("s_no") int s_no, StudyEnrollVO studentVO, StudentParticipationVO partiVO, Model model) throws Exception{
		logger.info("--------------[ 참여신청 정보 등록  POST ]-----------------");		
					
		participationService.partiInsert(partiVO); 
		
		System.out.println(partiVO.getS_no());
		System.err.println(partiVO.getP_intro());
		System.err.println(partiVO.getP_tell());
		System.err.println(partiVO.getP_userid());
		System.err.println(partiVO.getP_regdate());
		
		/*
			1. 게시글 번호 s_no 을 가지고 같은 번호를 가지고 있는  userid 를 찾음
			2. list 를 가지고 오면 해당 list 속 동일한 userid 를 찾음
			3. 만일 있다면   '참여신청완료'  null 이라면 '참여신청' 
		*/
		List<StudentParticipationVO> partiList = participationService.partiCheck(s_no);
		
		
		
		int parti_sno = partiVO.getS_no(); 
		model.addAttribute("parti_sno",parti_sno);
		
		return "redirect:/study/study_DetailRead?s_no="+s_no;
	}
	
	

}
