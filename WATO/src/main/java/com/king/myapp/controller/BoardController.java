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
			return "/searchResult"; 
		} 
		@RequestMapping(value="/index" , method=RequestMethod.GET)
		public String index(Model model) throws Exception {
			logger.info("get list search");
			service.listRank();
			model.addAttribute("listRank",service.listRank());
			
			return "/index";
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
