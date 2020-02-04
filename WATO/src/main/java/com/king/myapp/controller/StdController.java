package com.king.myapp.controller;

import java.io.File;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.service.StdService;

@Controller
@RequestMapping("/student/*")
public class StdController implements  ServletContextAware {

	private static final Logger logger = LoggerFactory.getLogger(StdController.class);

	@Autowired
	 private ServletContext servletContext;
	
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
	public void postRegister(StdVO vo, HttpServletResponse response) throws Exception {
		logger.info("post std_join");
		
		int result = service.idChk(vo);
		int result2 = service.emailChk(vo);
		
		try {
			if (result == 1) {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('중복된 아이디입니다. 새로 입력해주세요.'); location.href='return';</script>");
				return;
				
			} else if (result2 == 1) {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('중복된 이메일입니다. 새로 입력해주세요.'); location.href='http://localhost:8080/student/std_join?terms1=on&terms2=on';</script>");
				out.flush();
				
			} else if (result == 0 && result2 == 0) {
				
				// 파일 업로드 체크
				MultipartFile f = vo.getStd_Profile();
				if (!f.isEmpty()) { // 파일 업로드가 됐다면
					String std_Orgname = f.getOriginalFilename();
					String std_Newname = std_Orgname;
					String path = servletContext.getRealPath("/resource/images");
					System.out.println("path : " + path);
					File file = new File(path + File.separator + std_Newname);
					vo.setStd_Orgname(std_Orgname);
					vo.setStd_Newname(std_Newname);
					f.transferTo(file);
				}
				
				service.std_join(vo);
				
				service.admin_mng(vo);
				logger.info("학생정보 회원관리에 추가 됨");				
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='http://localhost:8080/';</script>");
		out.flush();
		
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(StdVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 이메일 중복 체크
	@ResponseBody
	@RequestMapping(value = "/emailChk", method = RequestMethod.POST)
	public int emailChk(StdVO vo) throws Exception {
		int result = service.emailChk(vo);
		return result;
	}

	// 회원정보 수정 get
	@RequestMapping(value = "/std_info", method = RequestMethod.GET)
	public void getInfo() throws Exception {
		logger.info("=========학생의 회원정보를 수정합니다==========");
	}

	// 회원정보 수정 post
	@RequestMapping(value = "/std_info", method = RequestMethod.POST)
	public String postInfo(HttpSession session, StdVO vo) throws Exception {
		logger.info("============학생의 회원정보를 수정완료했습니다================");

		service.info_modify(vo);
		/* logout(session); */

		session.invalidate(); // 기존의 세션값을 없애고 새 것을 만들겠다는 뜻

		return "redirect:/";

	}

	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");

		session.invalidate();

		return "redirect:/";
	}


	@Override
	public void setServletContext(ServletContext arg0) {
		this.servletContext = servletContext;
	}	
}
