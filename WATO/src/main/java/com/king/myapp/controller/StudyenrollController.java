package com.king.myapp.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudentReplyVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.service.BoardService;
import com.king.myapp.service.StudentParticipationService;
import com.king.myapp.service.StudyEnrollService;


@Controller
@RequestMapping("/study/*")
@SessionAttributes("std")
public class StudyenrollController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);	
	
	@Inject
	StudyEnrollService studyService;
	
	@Inject
	StudentParticipationService participationService;
	
	@Autowired 
	BoardService service; 

	
	
	// 1. 일반인 Study 모집 등록하러 가기
	@RequestMapping(value = "/studentEnroll", method = RequestMethod.GET)
	public void getEnroll(HttpSession session , Model model) throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 등록 GET ]---------------------------<");
		
		StdVO std =  (StdVO) session.getAttribute("std");
		TeachVO teach =  (TeachVO) session.getAttribute("teach"); 
		System.out.println("std.getUser_Id()" +std.getUser_Id());
		System.out.println("std.getStd_Orgname() : "+std.getStd_Orgname());
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);
		
	}
	
	// 1. 일반인 Study 모집 글 작성 등록
	@RequestMapping(value = "/studentEnroll", method = RequestMethod.POST)
	public String postEnroll(@ModelAttribute StudyEnrollVO studyVO, Model model,HttpSession session ) throws Exception{

		logger.info(">--------------------[ 일반인 스터디 모집 등록 POST ]---------------------------<");		
			System.out.println(studyVO.getStd_orgname());
			System.out.println(studyVO.getS_category());
			System.out.println(studyVO.getS_title());
			System.out.println(studyVO.getS_level());
			System.out.println(studyVO.getS_photo());
			System.out.println(studyVO.getS_people());
			System.out.println(studyVO.getS_content());
			System.out.println(studyVO.getS_day());
			System.out.println(studyVO.getS_place());
			System.out.println(studyVO.getS_userId());
			System.out.println(studyVO.getS_startDate());
			System.out.println(studyVO.getS_endDate());
			
			TeachVO teach =  (TeachVO) session.getAttribute("teach");
			studyService.enroll(studyVO);
			model.addAttribute("std");
			model.addAttribute("teach");
		
		return "redirect:/";
		
	}
	
	//2. 강의 등록 리스트 출력 
		@RequestMapping(value = "/studyBoard", method = RequestMethod.GET)
		public void getClassBoard(Model model,HttpSession session ) throws Exception{
			logger.info("--------------[ 스터디 리스트 출력  GET ]-----------------");
			
			List<StudyEnrollVO> studylist = studyService.list(); 
			TeachVO teach =  (TeachVO) session.getAttribute("teach");
			StdVO std =  (StdVO) session.getAttribute("std"); 
			
			if (std == null && teach== null ) {
				
				model.addAttribute("std",null);
				model.addAttribute("teach",null);
			}else {
				
				model.addAttribute("teach",teach);
				model.addAttribute("std",std);
			}
			model.addAttribute("studylist", studylist);
		}
	
	// 4. 상세보기 + 댓글불러오기 + 수정하기 
	@RequestMapping(value = "/study_DetailRead", method = RequestMethod.GET)
	public void getDetailRead(@RequestParam("s_no") int s_no, Model model,@ModelAttribute StudentParticipationVO partiVO ,HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("--------------[ 스터디 상세보기  GET ]-----------------");
			
		
			studyService.viewCount(s_no);
			StudyEnrollVO listOne = studyService.detailRead(s_no);
			List<StudentReplyVO> reply = studyService.replyRead(s_no); // 댓글 불러오기
			
			DecimalFormat form = new DecimalFormat("#.##");
			double star = ((double)listOne.getStarScore() / listOne.getStarscore_parti());
			form.format(star);
			
			
			if (session.getAttribute("std") == null && session.getAttribute("teach") ==null) {
				model.addAttribute("teach",null);
				model.addAttribute("std", null);
				model.addAttribute("reply",reply);
				model.addAttribute("listOne",listOne);
				model.addAttribute("usercheck",null);
				

				model.addAttribute("starScore",star);
				
			}else {
				
				model.addAttribute("starScore",star);
				
				//  현재 유저의 참여신청여부 파악  
				StdVO std = (StdVO) session.getAttribute("std");
				TeachVO teach =  (TeachVO) session.getAttribute("teach");
				
				if (std != null) {
					
					String user_id = std.getUser_Id();
					Map<String, Object> map = new HashMap<String, Object>();
					
					map.put("p_userid", user_id);
					map.put("s_no", s_no);
					
					StudentParticipationVO partiOne = participationService.partiCheck(map);
					// 	
					
					if (partiOne != null) {
						model.addAttribute("partiOne",partiOne);
					}
				}
				
				
				model.addAttribute("usercheck","usercheck");
				model.addAttribute("teach",teach);
				model.addAttribute("std", std);
				model.addAttribute("reply",reply);
				model.addAttribute("listOne",listOne);
			}
			
	}		
	
	// 4. 참여신청 정보 등록 클릭 -> 
		@RequestMapping(value = "/study_DetailRead", method = RequestMethod.POST)
		public String postDetailRead(@RequestParam("s_no") int s_no, Model model,@ModelAttribute StudentParticipationVO partiVO ,HttpSession session, RedirectAttributes rttr) throws Exception{
			
			logger.info("--------------[ 참여신청 정보 등록  POST ]-----------------");		
			
			participationService.partiInsert(partiVO); 
			participationService.partiCnt(s_no);
			
			System.out.println(partiVO.getS_no());
			System.err.println(partiVO.getP_intro());
			System.err.println(partiVO.getP_tell());
			System.err.println(partiVO.getP_userid());
			 
			TeachVO teach =  (TeachVO) session.getAttribute("teach");
			StdVO std =  (StdVO) session.getAttribute("std");	
			model.addAttribute("std", std);
			model.addAttribute("teach",teach);
			
			return "redirect:/study/study_DetailRead?s_no="+s_no;
			
		}		
		
		// 4. 참여신청 취소  
		@RequestMapping(value = "/s_partiCancle", method = RequestMethod.POST)
		public String postPartiCancle(@RequestParam("s_no") int s_no, Model model ,HttpSession session) throws Exception{
			
			logger.info("--------------[ 참여신청 취소   POST ]-----------------");		
			
					//  현재 유저의 참여신청여부 파악  
					StdVO user = (StdVO) session.getAttribute("std");
					String user_id = user.getUser_Id();
					
					Map<String, Object> map = new HashMap<String, Object>();
					
					map.put("p_userid", user_id);
					map.put("s_no", s_no);
					
					participationService.partidelete(map); 
					participationService.partiCntMinus(s_no);
				    // 	
					TeachVO teach =  (TeachVO) session.getAttribute("teach");		
					StdVO std =  (StdVO) session.getAttribute("std");		
					model.addAttribute("std",std);
					model.addAttribute("teach",teach);
					
					
			return "redirect:/study/study_DetailRead?s_no="+s_no;
			
		}		
	
	// 5. 일반인 Study 등록 내용 수정하러 가기
	@RequestMapping(value = "/studentModify", method = RequestMethod.GET)
	public void getModify(@RequestParam("s_no") int s_no, Model model, HttpSession session) throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 수정 GET ]---------------------------<");
		
		StudyEnrollVO listOne = studyService.detailRead(s_no);
		
//		String road;
//		String jibun;
//		String str = listOne.getS_place();
//		String[] arry = str.split("/");
//		
//		for (int i = 0; i < arry.length; i++) {
//			
//			System.out.println(arry[i]);
//		}
//		road = arry[0];
//		jibun = arry[1];
//		
//		listOne.setRoad(road);
//		listOne.setJibun(jibun);
//		
		
		  String beforeDay = listOne.getS_day(); // DB 문자열
		  System.out.println(beforeDay); 
		  
		  if (beforeDay.contains("월")) {
			model.addAttribute("mon","월");
			System.out.println(beforeDay.contains("월"));
		}
		  if (beforeDay.contains("화")) {
			  model.addAttribute("tue","화");
			  System.out.println(beforeDay.contains("화"));
		  }
		  if (beforeDay.contains("수")) {
			  model.addAttribute("web","수");
			  System.out.println(beforeDay.contains("수"));
		  }
		  if (beforeDay.contains("목")) {
			  model.addAttribute("thu","목"); 
			  System.out.println(beforeDay.contains("목"));
		  }
		  if (beforeDay.contains("금")) {
			  model.addAttribute("fri","금");
		  }
		  if (beforeDay.contains("토")) {
			  model.addAttribute("sat","토");
			  System.out.println(beforeDay.contains("토"));
		  }
		  if (beforeDay.contains("일")) {
			  model.addAttribute("sun","일");
			  System.out.println(beforeDay.contains("일"));
		  }
		  if (beforeDay.contains("추후결정")) {
			  model.addAttribute("chu","추후결정");
			  System.out.println(beforeDay.contains("추후결정"));
		  }
		  
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);
		model.addAttribute("listOne",listOne);
		
	}

	// 6. 일반인 Study 등록 내용 수정 글 등록
			@RequestMapping(value = "/studentModify", method = RequestMethod.POST)
			public String postModify(@RequestParam("s_no") int s_no, StudyEnrollVO studyVO, Model model,HttpSession session) throws Exception{
				
				logger.info("--------------[ 스터디 수정 내용 등록  POST ]-----------------");		
				
				studyService.modify(studyVO);
				
				TeachVO teach =  (TeachVO) session.getAttribute("teach");		
				StdVO std =  (StdVO) session.getAttribute("std"); 		 
				model.addAttribute("std",std);
				model.addAttribute("teach",teach);
				return "redirect:/study/study_DetailRead?s_no="+s_no;
				
			}
	
	// 상세페이지 삭제 
	@RequestMapping(value = "/studentDelete", method = RequestMethod.GET)
	public String postDelete(@RequestParam("s_no") int s_no, Model model ,HttpSession session) throws Exception{
		logger.info("--------------[ 내용 삭제  POST ]-----------------");				
				
		studyService.studyDelete(s_no);
				
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);
		return "redirect:/";
	}		
			
			
	
	// 7. 상세페이지 댓글 등록 
		@RequestMapping(value = "/s_detailReply.do", method = RequestMethod.POST)
		public String postReply(@RequestParam("s_no") int s_no, StudentReplyVO replyVO ,StudyEnrollVO studyVO, Model model,HttpSession session ) throws Exception{
			
			logger.info("--------------[ 스터디 댓글 내용 등록  POST ]-----------------");		
				
			studyService.replyInsert(replyVO);    
			
			TeachVO teach =  (TeachVO) session.getAttribute("teach");		
			StdVO std =  (StdVO) session.getAttribute("std"); 		 
			model.addAttribute("std",std);
			model.addAttribute("teach",teach);			  
			return "redirect:/study/study_DetailRead?s_no="+s_no;
			
		}	
	
	
	//
	@RequestMapping(value = "/replyModify", method = RequestMethod.POST)
	public String postReplyModify(@RequestParam("s_no") int s_no,@RequestParam("r_no") int r_no, Model model , StudentReplyVO replyVO ,StudyEnrollVO studyVO,HttpSession session ) throws Exception{
			
		logger.info("--------------[ 스터디 댓글 내용 수정  POST ]-----------------");		
			
		studyService.replyUpdate(replyVO);   
		
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);			
			  
		return "redirect:/study/study_DetailRead?s_no="+s_no;
			
		}	
	
	// 댓글삭제
	@RequestMapping(value = "/replyDelete", method = RequestMethod.POST)
	public String getReplyDelete(@RequestParam("r_no") int r_no, @RequestParam("s_no") int s_no,Model model) throws Exception{
		
		
		logger.info("--------------[ 스터디 댓글 내용 삭제  POST ]-----------------");	
		studyService.replyDelete(r_no);

		
		model.addAttribute("std");
		model.addAttribute("teach");
		return "redirect:/study/study_DetailRead?s_no="+s_no;
	}
	
	// 나의 참여 리스트 보러가기 
	@RequestMapping(value = "/user_myList", method = RequestMethod.GET)
	public String getMyList( HttpSession session, Model model) throws Exception{
		
		logger.info("--------------[ 나의 참여 리스트 보러가기   GET ]-----------------");	
		if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
			return "redirect:/";
		}

		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 	
		
		
		if (std != null) {
			
			List<StudyEnrollVO> studyParti = participationService.getStudyPartiList(std);
			List<TeacherEnrollVO> classParti = participationService.getClassPartiList(std);
			
			String stduserid =  std.getUser_Id();
			List<StudyEnrollVO> studylist = service.studylistAll(); //등록되어 있는 학생스터디목록 전체를 불러 온다
			List<StudyEnrollVO> mystudy = new ArrayList<StudyEnrollVO>(); // 스터디 목록의 작성자가 현재 로그인한 아이디와 같을때 해당 vo를 list에 담는다
			for (StudyEnrollVO studyEnrollVO : studylist) { 
				if (studyEnrollVO.getS_userId().equals(stduserid)) {
					mystudy.add(studyEnrollVO);
				}
			}
			model.addAttribute("mystudy",mystudy); //로그인한 유저가 작성한 리스트를 담아 보낸다.
			
			System.out.println("여기는 std ");
			
			model.addAttribute("classParti",classParti);
			model.addAttribute("studyParti",studyParti);
			model.addAttribute("std", std);
			model.addAttribute("teach", teach);	
			
		}else if (teach != null) {
			
			List<TeacherEnrollVO> myClass = participationService.getTeachClassList(teach);
			
			String techuserid =  teach.getUser_Id();
			List<TeacherEnrollVO> studylist = service.TearchlistAll();
			List<TeacherEnrollVO> mystudy = new ArrayList<TeacherEnrollVO>();
			for (TeacherEnrollVO teacherEnrollVO : studylist) {
				if (teacherEnrollVO.getT_userId().equals(techuserid)) {
					mystudy.add(teacherEnrollVO);
				}
			}
			model.addAttribute("mystudy",mystudy);
			
			System.out.println("여기는 teach ");
			
			model.addAttribute("classParti",myClass);
			model.addAttribute("teach", teach);	
			model.addAttribute("std", std);
		}
		
		System.out.println("여기는 return 전 !");
		return "/study/user_myList";
	}
	
	// 별점등록 버튼 눌렀을 때  액션 
	@RequestMapping(value = "/user_myList", method = RequestMethod.POST)
	public String postStarScore(@RequestParam("s_no")int s_no,@RequestParam("starScore") int starScore ,@RequestParam("p_userid") String p_userid, Model model,
								HttpSession session) throws Exception{
		logger.info("--------------[ 나의 참여 스터디 별점 등록   GET ]-----------------");	 
		if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
			return "redirect:/";
		}
		
		System.out.println(starScore);
		Map<String, Object> starScoreUpdate = new HashMap<String, Object>(); 
		
		starScoreUpdate.put("s_no",s_no);
		starScoreUpdate.put("starScore", starScore);
		
		studyService.starPartiUpdate(starScoreUpdate);
		
		System.out.println("#######  별점등록을 하고 왔습니다.");
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 	
		
	//***** 별점 평가한 유저 값 부여 *****
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("p_userid", p_userid);
		map.put("s_no", s_no);
		
		// participation.mapper   <update id="s_checkStarParti">
		participationService.checkStarParti(map);
		
		
		if (std != null) {
			
	//***** 유저가 가지고 있는 참여 리스트 가져오기 *****  
			List<StudyEnrollVO> studyParti = participationService.getStudyPartiList(std);
			List<TeacherEnrollVO> classParti = participationService.getClassPartiList(std);

	//***** 현재 로그인한 유저가 별점평가를 하였는지 확인  *****
			Map<String, Object> checkUser = new HashMap<String, Object>();
			
			checkUser.put("p_userid", std.getUser_Id());
			checkUser.put("s_no", s_no);
			
			
			System.out.println("여기는 std ");
			
			// participation.mapper   <select id="s_getCheckStarParti">
			StudentParticipationVO checkStarScore = participationService.getCheckStarParti(checkUser);
			
				if (checkStarScore != null) {
					//model.addAttribute("checkStarScore",checkStarScore);
					System.out.println("#######  별점 평가한 유저 입니다. ");
				}
			
			
			model.addAttribute("classParti",classParti);	
			model.addAttribute("studyParti",studyParti); // 참여한 스터디 목록 
			
			model.addAttribute("std", std); // 유저 
			
		}
			model.addAttribute("teach", teach);	
			return "/study/user_myList";
	}
	// 별점등록 버튼 눌렀을 때  액션 
	@RequestMapping(value = "/t_user_myList", method = RequestMethod.POST)
	public String postT_StarScore(@RequestParam("t_no")int t_no,@RequestParam("starScore") int starScore ,@RequestParam("p_userid") String p_userid, Model model,
			HttpSession session) throws Exception{
		
		logger.info("--------------[ 나의 참여 스터디 별점 등록   GET ]-----------------");	 
		
		System.out.println(starScore);
		Map<String, Object> class_starScoreUpdate = new HashMap<String, Object>(); 
		
		
		class_starScoreUpdate.put("t_no", t_no);
		class_starScoreUpdate.put("starScore", starScore);
		
		studyService.class_starPartiUpdate(class_starScoreUpdate);
		
		System.out.println("#######  별점등록을 하고 왔습니다.");
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 	
		
		//***** 별점 평가한 유저 값 부여 *****
		Map<String, Object> t_map = new HashMap<String, Object>();
		
		t_map.put("p_userid", p_userid);
		t_map.put("t_no", t_no);
		
		participationService.class_checkStarParti(t_map); 
		
		
		if (std != null) {
			
			//***** 유저가 가지고 있는 참여 리스트 가져오기 *****  
			List<StudyEnrollVO> studyParti = participationService.getStudyPartiList(std);
			List<TeacherEnrollVO> classParti = participationService.getClassPartiList(std);
			
			//***** 현재 로그인한 유저가 별점평가를 하였는지 확인  *****
			
			System.out.println("여기는 std ");
			
			model.addAttribute("classParti",classParti);	
			model.addAttribute("studyParti",studyParti); // 참여한 스터디 목록 
			
			model.addAttribute("std", std); // 유저 
			
		}
		model.addAttribute("teach", teach);	
		
		return "redirect:/study/user_myList";
	}
	
	@RequestMapping(value = "/partiCancle", method = RequestMethod.GET)
	public String postPartiCancle(@RequestParam("bno") int bno, @RequestParam("user_id") String user_id, Model model, HttpSession session) throws Exception{
				
		logger.info("--------------[ MYENROLL 참여신청 취소   GET ]-----------------");		
				
		if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
			return "redirect:/";
		}
		StdVO std = (StdVO) session.getAttribute("std");
		TeachVO tech = (TeachVO) session.getAttribute("teach");
		
		
		if (std != null) {
		//  현재 유저의 참여신청여부 파악  
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("p_userid", user_id);
			map.put("s_no", bno);
						
			participationService.partidelete(map); 
			participationService.partiCntMinus(bno);
		}
		if (tech != null) {
			System.out.println("user_id : "+user_id);
			System.out.println("bno : "+bno);
			//  현재 유저의 참여신청여부 파악  
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("p_userid", user_id);
			map.put("t_no", bno);
			
			participationService.t_partidelete(map); 
			participationService.t_partiCntMinus(bno);
		}
		    // 	
			
			return "redirect:/study/user_myList";
				
			}	
    
	
		
}