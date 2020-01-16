package com.king.myapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.service.BoardService;



@Controller
@RequestMapping("/board/*")  
public class BoardController { 

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired 
	BoardService service; 
	
	/*
	 * @Autowired ReplyService RepService;
	 */
	
	
		@RequestMapping(value="/searchResult" , method=RequestMethod.POST)
		public String searchResult(@RequestParam("searchKey") String searchKey, Model model) throws Exception {
			logger.info("get list search");
			
			List<BoardVO> listStudy = service.searchResultStudy(searchKey); 
			List<BoardVO> listTeacher = service.searchResultTeacher(searchKey); 
			List<BoardVO> listQna = service.searchResultQna(searchKey);
			model.addAttribute("listStudy",listStudy);
			model.addAttribute("listTeacher",listTeacher); 
			model.addAttribute("listQna",listQna);  
			return "board/searchResult";   
		}
		 
		@RequestMapping(value="/studylist" , method=RequestMethod.GET) 
		public String studylist(Model model) throws Exception { 
			logger.info("get studylist"); 
			
			return "/studylist";  
		} 
		@RequestMapping(value="/index" , method=RequestMethod.GET)
		public String index(Model model) throws Exception {
			logger.info("get list search");
			service.listRank();   
			model.addAttribute("listRank",service.listRank());
			
			return "/index";
		}  
		@RequestMapping(value="/studylistview" , method=RequestMethod.GET)
		public String getstudylistview(Model model) throws Exception {
			logger.info("get studylistview");
			 
				List<BoardVO> studylistAll = service.studylistAll(); 
				List<BoardVO> TearchlistAll = service.TearchlistAll(); 
			
				model.addAttribute("studylistAll",studylistAll);
				model.addAttribute("TearchlistAll",TearchlistAll);
			
			return "/include/studylistview";   
		}  
		@RequestMapping(value="/studylistview" , method=RequestMethod.POST)
		public String poststudylistview(Model model, StudyListFilter SLF) throws Exception {
			logger.info("post studylistview"); 
			if (SLF.getFiletertype() == null) {
				SLF.setFiletertype(""); 
			}
			if (SLF.getCategory() == null) {
				SLF.setCategory(""); 
			}
			if (SLF.getLevel() == null) {
				SLF.setLevel("");
			} 
			if (SLF.getTime() == null) { 
				SLF.setTime("");   
			}
			if (SLF.getPlace()== null) {
				SLF.setPlace("");
			}
			if (SLF.getFiletertype().equals("10")) { 
				
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF);
				model.addAttribute("StudyListFilterdata",StudyListFilter);
				
			}else if (SLF.getFiletertype().equals("20")) {
				
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				model.addAttribute("TeacherListFilter",TeacherListFilter);  
			}
			else {
//				스터디 강사 둘다 조회
				List<BoardVO> studylistAll = service.studylistAll(); 
				List<BoardVO> TearchlistAll = service.TearchlistAll(); 
			
				model.addAttribute("studylistAll",studylistAll);
				model.addAttribute("TearchlistAll",TearchlistAll);
				
			}
			
			
			System.out.println("SLF.getPlace() : "+SLF.getPlace());
			System.out.println("SLF.getCategory() : "+SLF.getCategory());
			System.out.println("SLF.getRank() : "+SLF.getLevel());
			System.out.println("SLF.getTime() : "+SLF.getTime());
			
			return "/include/studylistview"; 
		}  
		 
		
		
	
	//글 읽기
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void getRead(@RequestParam("bno") int bno, Model model) throws Exception {
		logger.info("get Read in");
		
//		BoardVO vo = service.read(bno);
//		model.addAttribute("read",vo);
		 
		/*
		 * List<ReplyVO> repList = RepService.readReply(bno);
		 * model.addAttribute("repList",repList);
		 */
	}
	
}
