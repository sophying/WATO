package com.king.myapp.controller;

import java.text.DecimalFormat;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.domain.TeacherReplyVO;
import com.king.myapp.service.StudentParticipationService;
import com.king.myapp.service.TeacherEnrollService;

@Controller
@RequestMapping("/study/*")
@SessionAttributes("teach")
public class TeacherenrollController { 

	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);
	
	@Inject
	TeacherEnrollService teacherService;
	
	@Inject
	StudentParticipationService participationService;
	
	// 1 강의 등록 페이지 이동   
	@RequestMapping(value = "/teacherEnroll", method = RequestMethod.GET)
	public void getEnroll(HttpSession session , Model model) throws Exception{
		
		logger.info("--------------[ 강의 등록 페이지 GET ]-----------------");
		StdVO std =  (StdVO) session.getAttribute("std");
		TeachVO teach =  (TeachVO) session.getAttribute("teach");
		
		System.out.println("teach.getTeach_Orgname() : "+teach.getTeach_Orgname());
		
		
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);
	}
	
	// 1. 강의 상세 내용 등록 
	@RequestMapping(value = "/teacherEnroll",method = RequestMethod.POST)
	public String postEnroll(@ModelAttribute TeacherEnrollVO teacherVO, HttpSession session, Model model) throws Exception{
		
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

		TeachVO user =  (TeachVO) session.getAttribute("teach");
		
		model.addAttribute("std");
		model.addAttribute("teach",user);
		teacherService.addClass(teacherVO);
		 
		return"redirect:/";
		
	}
	
	//2. 강의 등록 리스트 출력 
	@RequestMapping(value = "/classBoard", method = RequestMethod.GET)
	public void getClassBoard(Model model, HttpSession session) throws Exception{
		logger.info("--------------[ 강의 리스트 출력  GET ]-----------------");
		
		List<TeacherEnrollVO> classlist = teacherService.list();
		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		TeachVO teach = (TeachVO) session.getAttribute("teach");
		//StdVO student = (StdVO) session.getAttribute("std");
		
		if (std == null && teach== null ) {
			
			model.addAttribute("std",null);
			model.addAttribute("teach",null);
		}else {
			
			model.addAttribute("teach",teach);
			model.addAttribute("std",std);
		}
		
		model.addAttribute("classlist", classlist);
	}

	
	
	// 4. 상세보기 + 댓글불러오기 + 수정하기  
	@RequestMapping(value = "/header_DetailRead", method = RequestMethod.GET)
	public void getDetailRead(@RequestParam("t_no") int t_no, @ModelAttribute TeacherParticipationVO partiVO,HttpSession session, Model model) throws Exception{
		logger.info("--------------[ 강의 상세보기  GET ]-----------------");
		
		
		
		
		teacherService.viewCount(t_no);
		TeacherEnrollVO listOne = teacherService.detailRead(t_no);
		List<TeacherReplyVO> reply = teacherService.replyRead(t_no);
		
		DecimalFormat form = new DecimalFormat("#.##");
		double star = ((double)listOne.getStarScore() / listOne.getStarscore_parti());
		form.format(star);

		
		if (session.getAttribute("std") == null && session.getAttribute("teach") ==null) {
			model.addAttribute("usercheck",null);
			model.addAttribute("std",null);
			model.addAttribute("teach",null);
			model.addAttribute("reply", reply); 
			model.addAttribute("listOne",listOne);
			
			
			model.addAttribute("starScore",star);
			
		}else {
	
			
			//  현재 유저의 참여신청여부 파악  
			StdVO std = (StdVO) session.getAttribute("std");
			TeachVO teach =  (TeachVO) session.getAttribute("teach");
			
			model.addAttribute("starScore",star);
			
			if (std != null) {
				
				String user_id = std.getUser_Id();
				
				Map<String, Object> map = new HashMap<String, Object>();
				
				map.put("p_userid", user_id);
				map.put("t_no",t_no);
				
				TeacherParticipationVO partiOne = participationService.t_partiCheck(map);
				
				if (partiOne != null) {
					model.addAttribute("partiOne",partiOne);
				}
			}
			if (teach != null) {
				
				String user_id = teach.getUser_Id();
				
				Map<String, Object> map = new HashMap<String, Object>();
				
				map.put("p_userid", user_id);
				map.put("t_no",t_no);
				
				TeacherParticipationVO partiOne = participationService.t_partiCheck(map);
				// 	
				
				if (partiOne != null) {
					model.addAttribute("partiOne",partiOne);
				}
			}
			model.addAttribute("usercheck","usercheck");
			model.addAttribute("std",std);
			model.addAttribute("teach",teach);
			model.addAttribute("reply", reply); 
			model.addAttribute("listOne",listOne);
			
		}
	}
	
	// 4. 참여신청 정보 등록 클릭 -> 
	@RequestMapping(value = "/header_DetailRead", method = RequestMethod.POST)
	public String postDetailRead(@RequestParam("t_no") int t_no, Model model,@ModelAttribute TeacherParticipationVO partiVO ,HttpSession session, RedirectAttributes rttr) throws Exception{
		
		logger.info("--------------[ 참여신청 정보 등록  POST ]-----------------");		
	
		participationService.t_partiInsert(partiVO); 
		participationService.t_partiCnt(t_no);
		
		System.out.println(partiVO.getT_no());
		System.err.println(partiVO.getP_intro());
		System.err.println(partiVO.getP_tell()); 
		System.err.println(partiVO.getP_userid());
		
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);			
		
		return "redirect:/study/header_DetailRead?t_no="+t_no;
		
	}		
	
	// 4. 참여신청 취소  
	@RequestMapping(value = "/t_partiCancle", method = RequestMethod.POST)
	public String postPartiCancle(@RequestParam("t_no") int t_no, Model model ,HttpSession session) throws Exception{
				
		logger.info("--------------[ 참여신청 취소   POST ]-----------------");		
				
			TeachVO teach =  (TeachVO) session.getAttribute("teach");	
		
			//  현재 유저의 참여신청여부 파악  
			StdVO user = (StdVO) session.getAttribute("std");
			String user_id = user.getUser_Id();
						
			Map<String, Object> map = new HashMap<String, Object>();
						
			map.put("p_userid", user_id);
			map.put("t_no", t_no);
						
			participationService.t_partidelete(map); 
			participationService.t_partiCntMinus(t_no);
		    // 	
						
	
			StdVO std =  (StdVO) session.getAttribute("std");		
			model.addAttribute("std",std);
			model.addAttribute("teach",teach);
			
			return "redirect:/study/header_DetailRead?t_no="+t_no;
				
			}	
	
	// 5. 강사 수정페이지 이동 
	@RequestMapping(value = "/teacherModi", method = RequestMethod.GET)
	public void getModify(@RequestParam("t_no") int t_no, Model model,HttpSession session) throws Exception{
		
		logger.info("--------------[ 강의 수정페이지 이동  GET ]-----------------");
			
		TeacherEnrollVO listOne = teacherService.detailRead(t_no);
		
//		String road;
//		String jibun;
//		String str = listOne.getT_place();
//		String[] arry = str.split("/");
//		
//		for (int i = 0; i < arry.length; i++) {
//			
//			System.out.println(arry[i]);
//			
//			
//		}
//		road = arry[0];
//		jibun = arry[1];
//		
//		listOne.setRoad(road);
//		listOne.setJibun(jibun);
		
		
		  String beforeDay = listOne.getT_day(); // DB 문자열
		  System.out.println(beforeDay); 
		  
		  if (beforeDay.contains("월")) {
			model.addAttribute("mon","월");
		}
		  if (beforeDay.contains("화")) {
			  model.addAttribute("tue","화");
		  }
		  if (beforeDay.contains("수")) {
			  model.addAttribute("web","수");
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
		  }
		  
		TeachVO teach =  (TeachVO) session.getAttribute("teach");	
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach", teach); 		 
		model.addAttribute("listOne",listOne);
		
	}	
	
	// 6. 강의 내용 수정 글 등록
	@RequestMapping(value = "/teacherModi.do", method = RequestMethod.POST)
	public String postModify(@RequestParam("t_no") int t_no, TeacherEnrollVO teacherVO,HttpSession session, Model model) throws Exception{
		
		logger.info("--------------[ 강의 수정 내용 등록  POST ]-----------------");		
		
		teacherService.modify(teacherVO);
		
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);	
		return "redirect:/study/header_DetailRead?t_no="+t_no;
		 
	}
	// 7. 상세페이지 댓글등록
	@RequestMapping(value = "/t_detailReply.do", method = RequestMethod.POST)
	public String postReply(@RequestParam("t_no") int t_no, TeacherReplyVO replyVO, TeacherEnrollVO teacherVO,HttpSession session, Model model) throws Exception{
		
		logger.info("--------------[ 강의 댓글 내용 등록  POST ]-----------------");		
		
		teacherService.replyInsert(replyVO); 
		
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);	  
		return "redirect:/study/header_DetailRead?t_no="+t_no;
		
	}

	// 상세페이지 삭제 

	@RequestMapping(value = "/teacherDelete", method = RequestMethod.GET)
	public String postDelete(@RequestParam("t_no") int t_no , Model model ,HttpSession session) throws Exception{
		logger.info("--------------[ 내용 삭제  POST ]-----------------");				
		
		teacherService.classDelete(t_no);
		
		TeachVO teach =  (TeachVO) session.getAttribute("teach");		
		StdVO std =  (StdVO) session.getAttribute("std"); 		 
		model.addAttribute("std",std);
		model.addAttribute("teach",teach);
		
		return "redirect:/";
	}
	//  댓글 수정
		@RequestMapping(value = "/modireply", method = RequestMethod.GET)
		public String getmodiReply(@RequestParam("t_no") int t_no, TeacherReplyVO replyVO, TeacherEnrollVO teacherVO, HttpSession session, Model model) throws Exception{
			
			logger.info("--------------[ 강의 댓글 내용 수정  GET ]-----------------");		
			
			teacherService.replyUpdate(replyVO);   
			  
			TeachVO teach =  (TeachVO) session.getAttribute("teach");		
			StdVO std =  (StdVO) session.getAttribute("std"); 		 
			model.addAttribute("std",std);
			model.addAttribute("teach",teach);	
			
			return "redirect:/study/header_DetailRead?t_no="+t_no;
			
		}
	
		// 댓글삭제
		@RequestMapping(value = "/t_replyDelete", method = RequestMethod.GET)
		public String getReplyDelete(@RequestParam("r_no") int r_no, @RequestParam("t_no") int t_no,Model model, HttpSession session) throws Exception{
			
			logger.info("--------------[ 강의 댓글 내용 삭제]-----------------");		
			
			TeachVO teach =  (TeachVO) session.getAttribute("teach");		
			StdVO std =  (StdVO) session.getAttribute("std"); 		 
			
			teacherService.DeleteReply(r_no);
			model.addAttribute("std",std);
			model.addAttribute("teach",teach);	
			return "redirect:/study/header_DetailRead?t_no="+t_no;
		}
		
		@RequestMapping(value = "/myClass_user", method = RequestMethod.POST)
		public String postMyClass_user(@RequestParam("t_no")int t_no,Model model, HttpSession session) throws Exception{
			
			TeachVO teach =  (TeachVO) session.getAttribute("teach");		
			StdVO std =  (StdVO) session.getAttribute("std"); 	
			
			if (teach != null) {
				
				List<TeacherEnrollVO> myClass = participationService.getTeachClassList(teach);
				List<TeacherParticipationVO> partiPeople = participationService.aprroveByTeach(t_no);
				
				System.out.println("여기는 teach ");
				
				model.addAttribute("partiPeople",partiPeople);
				model.addAttribute("classParti",myClass);
			}
			model.addAttribute("teach", teach);	
			model.addAttribute("std", std);
			
			return "redirect:/study/user_myList";
		}
		

}

