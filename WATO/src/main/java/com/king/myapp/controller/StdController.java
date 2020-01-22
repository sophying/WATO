package com.king.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.king.myapp.domain.StdVO;
import com.king.myapp.service.StdService;

@Controller
@RequestMapping("/student/*")
public class StdController {

	private static final Logger logger = LoggerFactory.getLogger(StdController.class);

	@Inject
	StdService service;

	// 학생 약관동의폼get
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public void getTerms() throws Exception {
		logger.info("get terms");
	}
	
	// 회원 가입 get
	@RequestMapping(value = "/std_join", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get std_join");
	}

	// 학생 약관동의 및 회원가입 폼POST
	@RequestMapping(value = "/std_join", method = RequestMethod.POST)
	public String postRegister(StdVO vo) throws Exception {
		logger.info("post std_join");

		service.std_join(vo);

		return "redirect:/";
	}

	// 회원정보 수정 get
	@RequestMapping(value = "/std_info", method = RequestMethod.GET)
	public void getInfo() throws Exception {
		logger.info("get 학생 회원정보수정");
	}

	// 회원정보 수정 post
	@RequestMapping(value = "/std_info", method = RequestMethod.POST)
	public String postInfo(HttpSession session, StdVO vo) throws Exception {
		logger.info("post 학생 회원정보수정 완료!");

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

	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");

		session.invalidate();

		return "redirect:/";
	}	
}
