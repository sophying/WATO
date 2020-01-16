package com.king.myapp.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.service.AdminService;
import com.king.myapp.service.MailService;
import com.king.myapp.service.StdService;
import com.king.myapp.service.TeachService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	private static final String String = null;

	@Inject
	AdminService adminservice;
	@Inject
	StdService stdservice;
	@Inject
	TeachService teachservice;
	@Inject
	JavaMailSender mailSender;
	@Inject
	MailService mailservice;

	// 로그인 get

	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public void getlogin() throws Exception {
		logger.info("get 로그인을 할겁니다.");
	}

	// 로그인 post

	@RequestMapping(value = "/loginform", method = RequestMethod.POST)
	public

			String postlogin(StdVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");

		HttpSession session = req.getSession();

		StdVO login = stdservice.login1(vo);

		if (login == null) { // login 값이 null 일 때 member 값은 null 이고

			session.setAttribute("member", null);

			rttr.addFlashAttribute("msg", false);

		} else {
			session.setAttribute("member", login); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
		}

		return "redirect:/";
	}

	// 인증(강사2)
	@RequestMapping(value = "/terms2", method = RequestMethod.GET)
	public void getTerms2(Model model) throws Exception {
		logger.info("get terms222222");
	}

	// 인증(강사2)
	@RequestMapping(value = "/terms2", method = RequestMethod.POST)
	public String postTerms2(Model model) throws Exception {
		logger.info("get terms222222");

		return "/teach/teach_join_2";
	}
	
	
	// 강사 승인페이지 GET
	@RequestMapping(value = "/adminmanage", method = RequestMethod.GET)
	public String getManage(Model model) throws Exception {
		logger.info("get 강사 승인 페이지");
		
		List<ApprovalVO> teachlist = adminservice.teachlist();
		model.addAttribute("list", teachlist);
		return "/admin/adminmanage";
	}
	

	// 승인버튼 클릭 (인증센터 POST), mailSending 코드
	@RequestMapping(value = "/admin/auth.do", method = RequestMethod.POST)
	public ModelAndView mailSending(TeachVO vo, HttpServletRequest request, String e_mail,
			HttpServletResponse response_email) throws Exception {
		logger.info("post 승인버튼 클릭했을 때");

		 teachservice.teach_join2(vo); 

		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 인증코드 부분 (난수)

		String setfrom = "choio95634@gamil.com";
		String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
		String title = "회원가입 인증 이메일 입니다."; // 제목
		String content =

				System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

						System.getProperty("line.separator") +

						"안녕하십니까. 강사승인이 되었음을 알려드립니다."

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						"아래 링크를 타고 오셔서 아이디를 생성해주세요." +

						System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						"http://localhost:8080/teach/teach_join_2?terms1=on&terms2=on&terms3=on" +
						
						System.getProperty("line.separator") +

						System.getProperty("line.separator");

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
		mv.setViewName("/admin/adminmanage"); // 뷰의이름
		mv.addObject("dice", dice);

		System.out.println("mv : " + mv);

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('승인이 완료되었습니다.');</script>");
		out_email.flush();

		return mv;
	}

	// 아이디&비밀번호 찾기 GET
	@RequestMapping(value = "/forgot_id_pwd", method = RequestMethod.GET)
	public void getFgid() throws Exception {
		logger.info("get Forgot id");
	}

	// 아이디&비밀번호 찾기 POST(이메일 전송 - 학생)
	@RequestMapping(value = "/stdFgPwd", method = RequestMethod.POST)
	public ModelAndView postStdid(StdVO svo, Model model, HttpServletRequest request, HttpServletResponse response_email) throws Exception {
		logger.info("post 학생에게 임시비밀번호 발급");
		
		StdVO list = adminservice.findS_pwd(svo);
		
		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		} // 이메일로 받는 인증코드(난수)
		
		if (list.getUser_Email().equals(svo.getUser_Email())) {
			
			svo.setUser_Pwd(pw);
			
			adminservice.changeS_pwd(svo);
			
			String setfrom = "choio95634@gamil.com";
			String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
			String title = svo.getUser_Id() + "님, 임시비밀번호입니다."; // 제목
			String content =

					System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

							System.getProperty("line.separator") +

							svo.getUser_Id() + "님, 임시비밀번호입니다." +

							System.getProperty("line.separator") +

							System.getProperty("line.separator") +

							"임시 비밀번호 : " + pw +

							System.getProperty("line.separator") +

							System.getProperty("line.separator") +

							"로그인하셔서 비밀번호를 변경해주세요." +
							
							System.getProperty("line.separator") +

							System.getProperty("line.separator");

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용

				mailSender.send(message);
				
			} catch (Exception e) {
				System.out.println(e);
			}
		}

			ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
			mv.setViewName("/admin/adminmanage"); // 뷰의이름
			mv.addObject("pw", pw); 

			System.out.println("mv : " + mv);

			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_email = response_email.getWriter();
			out_email.println("<script>alert('기재하신 이메일로 메일이 발송되었습니다.');</script>");
			out_email.flush();

			return mv;
		}
		
	
	// 아이디&비밀번호 찾기 POST(이메일 전송 - 강사)
	@RequestMapping(value = "/teachFgPwd", method = RequestMethod.POST)
	public ModelAndView postFgid(TeachVO tvo, Model model, HttpServletRequest request, HttpServletResponse response_email) throws Exception {
		logger.info("post Forgot id");
		
		TeachVO list = adminservice.findT_pwd(tvo);
		
		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		} // 이메일로 받는 인증코드(난수)
		
		if (list.getUser_Email().equals(tvo.getUser_Email())) {
			
			tvo.setUser_Pwd(pw);
			
			adminservice.changeT_pwd(tvo);
			
			String setfrom = "choio95634@gamil.com";
			String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
			String title = tvo.getUser_Id() + "님, 임시비밀번호입니다."; // 제목
			String content =
					
					System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성
					
					System.getProperty("line.separator") +
					
					tvo.getUser_Id() + "님, 임시비밀번호입니다." +
					
							System.getProperty("line.separator") +
							
							System.getProperty("line.separator") +
							
							"임시 비밀번호 : " + pw +
							
							System.getProperty("line.separator") +
							
							System.getProperty("line.separator") +
							
							"로그인하셔서 비밀번호를 변경해주세요." +
							
							System.getProperty("line.separator") +
							
							System.getProperty("line.separator");
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				
				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용
				
				mailSender.send(message);
				
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
		mv.setViewName("/admin/adminmanage"); // 뷰의이름
		mv.addObject("pw", pw); 
		
		System.out.println("mv : " + mv);
		
		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('기재하신 이메일로 메일이 발송되었습니다.');</script>");
		out_email.flush();
		
		return mv;
	}

}