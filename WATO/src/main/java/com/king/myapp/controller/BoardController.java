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
	
		/* index.jsp 에서 프로그램 랭귀지 순위 클릭시 메뉴바 검색창에 검색이되고 viewcnt가 1씩 올라감*/
		@RequestMapping(value="/searchResult/{searchKey}" , method=RequestMethod.GET)
		public String getsearchResult(@PathVariable("searchKey") String searchKey, Model model) throws Exception {
			logger.info("get list search");
			if (searchKey == null || searchKey.equals("")) { 
				searchKey = "_";
			}
			if (searchKey.equals("Ccrosshatch")) {
				searchKey = "C#";
			}
			System.out.println("PROGRAMMING_LANGUAGE_name : "+searchKey);
			
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
		
		/* 메뉴바 검색시 검색어를 가지고 DB 목록 조회 */
		@RequestMapping(value="/searchResult" , method=RequestMethod.POST)
		public String searchResult(@RequestParam("searchKey") String searchKey, Model model) throws Exception {
			logger.info("post list search");
			
			System.out.println("searchKey : "+searchKey);
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
		/* Ajax 를 위해 SearchStudylist페이지에 검색어와 현재 표시할 게시글 갯수를 가지고 요청 size=증가되는 값으로 20개 씩 목록 보여줌*/
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
			
			return "/board/SearchStudylist";   
		}
		 
		/* 메뉴바에 있는 스터디 찾기*/
		@RequestMapping(value="/studylist" , method=RequestMethod.GET) 
		public String studylist(Model model) throws Exception { 
			logger.info("get studylist"); 
			
			return "/studylist";  
		} 
		/**/
//		@RequestMapping(value="/index" , method=RequestMethod.GET)
//		public String index(Model model) throws Exception {
//			logger.info("get list search");
//			service.listRank();   
//			model.addAttribute("listRank",service.listRank());
//			
//			return "/index";
//		}  
		
		/* , 스터디및 강사 를 조회 하는 페이지 studylist안에 iframe 으로 요청됨*/
		@RequestMapping(value="/studylistview" , method=RequestMethod.GET)
		public String getstudylistview(Model model) throws Exception {
			logger.info("get studylistview");
				List<BoardVO> studylistAll = service.studylistAll(); //전체 목록을 가져온다
				model.addAttribute("studylistAll",studylistAll); 
				List<BoardVO> TearchlistAll = service.TearchlistAll(); 
				model.addAttribute("TearchlistAll",TearchlistAll);
			
			return "/include/studylistview";   
		}  
		/*studylistview안에 filter 검색 기능 */
		@RequestMapping(value="/studylistview" , method=RequestMethod.POST)
		public String poststudylistview(Model model, StudyListFilter SLF, @RequestParam("pageLoaded") int pageLoaded) throws Exception {
			logger.info("post studylistview"); 
			if (SLF.getFiletertype() == null) { // 널이 들어올경우 검색이 안될 수 있어 ""로 바꿈
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
			if (SLF.getFiletertype().equals("10")) { //강사, 스터디, 스터디/강사 중 선택하여 검색 10=스터디, 20=강사
				
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF);
				model.addAttribute("StudyListFilterdata",StudyListFilter);
				
			}else if (SLF.getFiletertype().equals("20")) {
				
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				model.addAttribute("TeacherListFilter",TeacherListFilter); 
			}
			else{
//				스터디 강사 둘다 조회
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF);
				model.addAttribute("StudyListFilterdata",StudyListFilter);
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				model.addAttribute("TeacherListFilter",TeacherListFilter);  
			}
			
			model.addAttribute("getFiletertype",SLF.getFiletertype()); //검색했을때 새로고침이 되는데 필터에 검색했던 값들을 다시 불러오기 위해 넣어둠
			model.addAttribute("getPlace",SLF.getPlace());
			model.addAttribute("getCategory",SLF.getCategory());
			model.addAttribute("getRank",SLF.getLevel());
			model.addAttribute("getTime",SLF.getTime());
			
			return "/include/studylistview"; 
		}  
	
}
