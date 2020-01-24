package com.king.myapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
			
			if (searchKey == null || searchKey.equals("")) { 
				searchKey = "_";
			}
			 
			List<StudyEnrollVO> listStudy = service.searchResultStudy(searchKey);
			
			if (listStudy.size() != 0) {
				List<StudyEnrollVO> Studylist = listStudy.subList(0, 4);
				model.addAttribute("listStudy",Studylist);
			}else {
				model.addAttribute("listStudy",listStudy);  
			}
			
			List<BoardVO> listTeacher = service.searchResultTeacher(searchKey); 
			List<TeacherEnrollVO> listQna = service.searchResultQna(searchKey);
			
			model.addAttribute("listTeacher",listTeacher); 
			model.addAttribute("listQna",listQna);  
			model.addAttribute("searchKey",searchKey);
			return "board/searchResult";   
		}
		@RequestMapping(value="/SearchStudylist/{searchKey}/{size}" , method=RequestMethod.GET)   
		public String ajaxStudyResult(@PathVariable("searchKey") String searchKey,@PathVariable("size") int size,Model model) throws Exception {
			 
			logger.info("get ajax Studylist"); 
			System.out.println(searchKey);    
			System.out.println("size : "+size); 
			 
			List<StudyEnrollVO> listStudy = service.searchResultStudy(searchKey);
			 
			if (listStudy.size() <= size) {
				model.addAttribute("maxlist","더이상 검색 결과가 없습니다."); 
				model.addAttribute("listStudy",listStudy); 
			}else {
				List<StudyEnrollVO> Studylist = listStudy.subList(0, size); 
				model.addAttribute("listStudy",Studylist);  
			}
		
			 
			
			
		/*
		 * List<BoardVO> listTeacher = service.searchResultTeacher(searchKey);
		 * List<TeacherEnrollVO> listQna = service.searchResultQna(searchKey);
		 * 
		 * 
		 * 
		 * 
		 * model.addAttribute("listStudy",listStudy);
		 * model.addAttribute("listTeacher",listTeacher);
		 * model.addAttribute("listQna",listQna);
		 * model.addAttribute("searchKey",searchKey);
		 */
			return "/board/SearchStudylist";   
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
				List<BoardVO> studylistAll = service.studylistAll(); //전체 목록을 가져온다
				
				if (studylistAll.size() < 20) {
					model.addAttribute("studylistAll",studylistAll); 
				}else {
					List<BoardVO> studylist20 = studylistAll.subList(0,20);
					model.addAttribute("studylistAll",studylist20);
				}
				List<BoardVO> TearchlistAll = service.TearchlistAll(); 
					model.addAttribute("TearchlistAll",TearchlistAll);
			
			return "/include/studylistview";   
		}  
		@RequestMapping(value="/studylistview" , method=RequestMethod.POST)
		public String poststudylistview(Model model, StudyListFilter SLF, @RequestParam("pageLoaded") int pageLoaded) throws Exception {
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
				if (StudyListFilter.size() < 20 || StudyListFilter.size() < pageLoaded*20 ) {
					model.addAttribute("StudyListFilterdata",StudyListFilter);
				}else {
					List<StudyEnrollVO> StudyListFilterdata = StudyListFilter.subList(0, pageLoaded*20);
					model.addAttribute("StudyListFilterdata",StudyListFilterdata);
				}
				
			}else if (SLF.getFiletertype().equals("20")) {
				
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				if (TeacherListFilter.size() < 20) {
					model.addAttribute("TeacherListFilter",TeacherListFilter);  
				}else {
					List<TeacherEnrollVO> TeacherListFilterdata = TeacherListFilter.subList(0, pageLoaded*20);
					model.addAttribute("TeacherListFilter",TeacherListFilterdata);  
				}
			}
			else{
//				스터디 강사 둘다 조회
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF);
				if (StudyListFilter.size() < 20) {
					model.addAttribute("StudyListFilterdata",StudyListFilter);
				}else {
					List<StudyEnrollVO> StudyListFilterdata = StudyListFilter.subList(0, pageLoaded*20);
					model.addAttribute("StudyListFilterdata",StudyListFilterdata);
				}
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				if (TeacherListFilter.size() < 20) {
					model.addAttribute("TeacherListFilter",TeacherListFilter);  
				}else {
					List<TeacherEnrollVO> TeacherListFilterdata = TeacherListFilter.subList(0, pageLoaded*20);
					model.addAttribute("TeacherListFilter",TeacherListFilterdata);  
				}
			}
			
			model.addAttribute("getFiletertype",SLF.getFiletertype());
			model.addAttribute("getPlace",SLF.getPlace());
			model.addAttribute("getCategory",SLF.getCategory());
			model.addAttribute("getRank",SLF.getLevel());
			model.addAttribute("getTime",SLF.getTime());
			
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
