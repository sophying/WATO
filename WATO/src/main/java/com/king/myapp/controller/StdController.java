package com.king.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.StdVO;
import com.king.myapp.service.StdService;

@Controller
@RequestMapping("/sign_up/*")
public class StdController {

	private static final Logger logger = LoggerFactory.getLogger(StdController.class);

	@Inject
	StdService service;

	// 학생 약관동의 get
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public void getTerms() throws Exception {
		logger.info("get terms");
	}
	
	// 회원 가입 get
	@RequestMapping(value = "/std_join", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get std_join");
	}

	// 회원 가입 POST
	@RequestMapping(value = "/std_join", method = RequestMethod.POST)
	public String postRegister(StdVO vo) throws Exception {
		logger.info("post std_join");

		service.std_join(vo);

		return "redirect:/";
	}
	
	// 회원정보 수정 get
	@RequestMapping(value = "/std_info", method = RequestMethod.GET)
	public void getInfo() throws Exception {
		logger.info("get info Modify");
	}
	
	// 회원정보 수정 post
	@RequestMapping(value = "/std_info", method = RequestMethod.POST)
	public String postInfo(HttpSession session, StdVO vo) throws Exception {
		logger.info("post info Modify");
		
		service.info_modify(vo);
		/* logout(session); */
		
		session.invalidate(); // 기존의 세션값을 없애고 새 것을 만들겠다는 뜻
		 		
		return "redirect:/";
		
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(StdVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 로그인 get
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public void getlogin() throws Exception {
		logger.info("get login");
	}
	
	// 로그인 post
	@RequestMapping(value = "/loginform", method = RequestMethod.POST)
	public String postlogin(StdVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		HttpSession session = req.getSession();
		
		StdVO login = service.login(vo);
		
		if(login == null) { // login 값이 null 일 때 member 값은 null 이고
			session.setAttribute("member", null);
			
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
		}
		
		return "redirect:/";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");
		
		session.invalidate();
		
		return "redirect:/";
	}
	 
}
