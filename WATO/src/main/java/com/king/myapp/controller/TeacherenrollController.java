package com.king.myapp.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherReplyVO;
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
	
	//2. 강의 등록 리스트 출력 
	@RequestMapping(value = "/classBoard", method = RequestMethod.GET)
	public void getClassBoard(Model model) throws Exception{
		logger.info("--------------[ 강의 리스트 출력  GET ]-----------------");
		
		List<TeacherEnrollVO> classlist = teacherService.list();
		
		model.addAttribute("classlist", classlist);
	}

	
	//3. 강의 내용 수정 페이지 이동 
/*	
	@RequestMapping(value = "/detailRead", method = RequestMethod.GET)
	public void getDetailRead(@RequestParam("t_no") int t_no, Model model) throws Exception{
		
		logger.info("--------------[ 강의 상세보기  GET ]-----------------");
			
		TeacherEnrollVO listOne = teacherService.detailRead(t_no);
		
		model.addAttribute("listOne",listOne);
	}	
*/	
	// 4.
	@RequestMapping(value = "/header_DetailRead", method = RequestMethod.GET)
	public void getDetailRead(@RequestParam("t_no") int t_no, Model model) throws Exception{
		logger.info("--------------[ 강의 상세보기  GET ]-----------------");
		
		teacherService.viewCount(t_no);
		TeacherEnrollVO listOne = teacherService.detailRead(t_no);
		List<TeacherReplyVO> reply = teacherService.replyRead(t_no);
		
		model.addAttribute("reply", reply);
		model.addAttribute("listOne",listOne);
	}
	
	// 5. 강사 수정페이지 이동 
	@RequestMapping(value = "/teacherModi", method = RequestMethod.GET)
	public void getModify(@RequestParam("t_no") int t_no, Model model) throws Exception{
		
		logger.info("--------------[ 강의 수정페이지 이동  GET ]-----------------");
			
		TeacherEnrollVO listOne = teacherService.detailRead(t_no);
		
		String road;
		String jibun;
		String str = listOne.getT_place();
		String[] arry = str.split("/");
		
		for (int i = 0; i < arry.length; i++) {
			
			System.out.println(arry[i]);
			
			
		}
		road = arry[0];
		jibun = arry[1];
		
		listOne.setRoad(road);
		listOne.setJibun(jibun);
		
		
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
		 		 
		model.addAttribute("listOne",listOne);
		
	}	
	
	// 6. 강의 내용 수정 글 등록
	@RequestMapping(value = "/teacherModi.do", method = RequestMethod.POST)
	public String postModify(@RequestParam("t_no") int t_no, TeacherEnrollVO teacherVO) throws Exception{
		
		logger.info("--------------[ 강의 수정 내용 등록  POST ]-----------------");		
		
		teacherService.modify(teacherVO);
		
		return "redirect:/study/header_DetailRead?t_no="+t_no;
		 
	}
	// 7. 상세페이지 댓글등록
	@RequestMapping(value = "/t_detailReply.do", method = RequestMethod.POST)
	public String postReply(@RequestParam("t_no") int t_no, TeacherReplyVO replyVO, TeacherEnrollVO teacherVO) throws Exception{
		
		logger.info("--------------[ 강의 댓글 내용 등록  POST ]-----------------");		
		
		teacherService.replyInsert(replyVO);  
		  
		return "redirect:/study/header_DetailRead?t_no="+t_no;
		
	}

	// 상세페이지 삭제 

	@RequestMapping(value = "/teacherDelete", method = RequestMethod.GET)
	public String postDelete(@RequestParam("t_no") int t_no) throws Exception{
		logger.info("--------------[ 내용 삭제  POST ]-----------------");				
		
		teacherService.classDelete(t_no);
		return "redirect:/";
	}
	//  댓글 수정
		@RequestMapping(value = "/modireply", method = RequestMethod.GET)
		public String getmodiReply(@RequestParam("t_no") int t_no, TeacherReplyVO replyVO, TeacherEnrollVO teacherVO) throws Exception{
			
			logger.info("--------------[ 강의 댓글 내용 수정  GET ]-----------------");		
			
			teacherService.replyUpdate(replyVO);   
			  
			return "redirect:/study/header_DetailRead?t_no="+t_no;
			
		}
		//  댓글 삭제
		@RequestMapping(value = "/DeleteReply/{t_no}/{r_no}", method = RequestMethod.GET)
		public String DeleteReply(@PathVariable int t_no,@PathVariable int r_no, TeacherReplyVO replyVO) throws Exception{
			
			logger.info("--------------[ 강의 댓글 내용 삭제]-----------------");		
			
			teacherService.DeleteReply(r_no);
			
			return "redirect:/study/header_DetailRead?t_no="+t_no;
			
		}
	
	
	
	
	
	
	
}
