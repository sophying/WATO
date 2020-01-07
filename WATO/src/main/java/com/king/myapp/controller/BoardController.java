package com.king.myapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.Criteria;
import com.king.myapp.domain.PageMaker;
import com.king.myapp.domain.SearchCriteria;
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
			
			List<BoardVO> list = service.searchResult(searchKey);
			model.addAttribute("list",list);
			return "/searchResult";
		} 
	
	
	//글작성 get
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public void getWrite(HttpSession session, Model model)throws Exception{
		logger.info("get write");
		
		Object loginInfo = session.getAttribute("member");
		
		if (loginInfo ==null) {
			model.addAttribute("msg",false);
		}
	}
	
	//글작성 post
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String postWrite(BoardVO vo)throws Exception{
		logger.info("post write");
		
		service.write(vo); 
		
		return "redirect:/";
	}
	
	//글 목록
	@RequestMapping("/list")
	public void list(Model model) throws Exception {
		logger.info("get list");
		
		List<BoardVO> list = service.list();
		
		model.addAttribute("list",list);
	}
	//글 목록+페이지
	@RequestMapping(value="/listPage", method= RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		logger.info("get listPage");
		
		List<BoardVO> list = service.listPage(cri);
		System.out.println(list);
		model.addAttribute("list",list);
		
		PageMaker pageMaker = new PageMaker(); 
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("pageMaker",pageMaker);
	}
	
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void getRead(@RequestParam("bno") int bno, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("get Read in");
		
		BoardVO vo = service.read(bno);
		model.addAttribute("read",vo);
		model.addAttribute("scri",scri);
		 
		/*
		 * List<ReplyVO> repList = RepService.readReply(bno);
		 * model.addAttribute("repList",repList);
		 */
	}
	//글 목록 + 페이지 + 검색
	@RequestMapping(value="/listSearch" , method=RequestMethod.GET)
	public void listSearch(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("get list search");
		
		List<BoardVO> list = service.listSearch(scri);
		model.addAttribute("list",list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("pageMaker",pageMaker);
		
	}
	//글 수정 get
	@RequestMapping(value="/modify" , method=RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("get modify");
		
		BoardVO vo = service.read(bno); 
		System.out.println(vo.getBno());
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		model.addAttribute("modify",vo);
		model.addAttribute("scri",scri);
	}
	 
	//글 수정 post
	@RequestMapping(value="/modify" , method=RequestMethod.POST)
	public String posrModify( BoardVO vo1, @ModelAttribute("scri") SearchCriteria scri2, RedirectAttributes rttr) throws Exception{
		logger.info("post modify");
		System.out.println(vo1.getBno());
		System.out.println(vo1.getTitle());
		
		service.update(vo1);
		rttr.addAttribute("page",scri2.getPage());
		rttr.addAttribute("perPageNum",scri2.getPerPageNum());
		rttr.addAttribute("searchType",scri2.getSearchType());
		rttr.addAttribute("keyword",scri2.getKeyword());
		
		return "redirect:/board/listSearch";
		
	}
	
	//글삭제 get 
	@RequestMapping(value="/delete" , method = RequestMethod.GET)
	public void getDelete(@RequestParam("bno") int bno, @ModelAttribute("scri") SearchCriteria scri,Model model) {
		logger.info("get delete");
		model.addAttribute("delete",bno);
		model.addAttribute("scri",scri);
		
		
	}
	
	//글 삭제 post
	@RequestMapping(value="/delete" , method = RequestMethod.POST)
	public String postDelete(@RequestParam("bno") int bno, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("post delete");
		service.delete(bno);
		rttr.addAttribute("page",scri.getPage());
		rttr.addAttribute("perPageNum",scri.getPerPageNum());
		rttr.addAttribute("searchType",scri.getSearchType());
		rttr.addAttribute("keyword",scri.getKeyword());
		
		return "redirect:/board/listSearch";
	}
	
}
