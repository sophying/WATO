package com.king.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.MemberVO;
import com.king.myapp.service.LoginService;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Inject
	LoginService loginService;
	
	// get
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void getJoin() throws Exception{
		
	}
	
	// 1. join 
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(MemberVO memberVO)throws Exception{
		
		System.out.println("가입 post ");
		
		loginService.joinInsert(memberVO);
		
		
		return"redirect:/";
		
	}
	
	// login 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpServletRequest request, RedirectAttributes rttr) throws Exception{
		
		System.out.println("로그인  post ");
		
		HttpSession session = request.getSession();
		
		MemberVO login = loginService.login(memberVO);
		
		
		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("user", login); // 세션 아이디 값 
		}
		return"redirect:/";
		
		
		
		
	}
	//로그아웃 
		@RequestMapping(value = "/logout",method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception{
			
			System.out.println("로그아웃   GET ");
			session.invalidate();
			return "redirect:/";
			
		}
	
	
	
	
	
	
	
	
	

}
