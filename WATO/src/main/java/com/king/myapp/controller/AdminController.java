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
		logger.info("get 학생 또는 강사가 로그인");
	}

	// 학생 로그인 post
	@RequestMapping(value = "/loginstd", method = RequestMethod.POST)
	public String postStd(StdVO svo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post 학생 로그인 시도");

		HttpSession session = req.getSession();

		StdVO login1 = adminservice.login1(svo);

		if (login1 == null) { // login 값이 null 일 때 member 값은 null 이고

			session.setAttribute("std", null);

			rttr.addFlashAttribute("msg", false);

		} else {
			session.setAttribute("std", login1); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
			logger.info("학생 로그인 완료");
		}

		return "redirect:/";
	}

	// 강사 로그인 post
	@RequestMapping(value = "/logintch", method = RequestMethod.POST)
	public String postTch(TeachVO tvo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post 강사 로그인 시도");

		HttpSession session = req.getSession();

		TeachVO login2 = adminservice.login2(tvo);

		if (login2 == null) { // login 값이 null 일 때 member 값은 null 이고

			session.setAttribute("teach", null);

			rttr.addFlashAttribute("msg", false);

		} else {
			session.setAttribute("teach", login2); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
			logger.info("강사 로그인 완료");
		}

		return "redirect:/";
	}

	// 인증 후 강사 아이디 생성 거치는 곳(숨겨진 경로).GET
	@RequestMapping(value = "/terms2", method = RequestMethod.GET)
	public void getTerms2(Model model) throws Exception {
		logger.info("get 강사의 아이디를 생성하러 갑니다.");
	}

	// 인증 후 강사 아이디 생성 거치는 곳(숨겨진 경로).POST
	@RequestMapping(value = "/terms2", method = RequestMethod.POST)
	public String postTerms2(Model model) throws Exception {
		logger.info("get 강사의 아이디를 생성하러 갑니다.");

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

	// 승인버튼 클릭 (인증센터 POST), mailSending 코드, 승인완료 페이지로 넘어감
	@RequestMapping(value = "/adminmanage", method = RequestMethod.POST)
	public void mailSending(TeachVO tvo, ApprovalVO avo, HttpServletRequest request, String e_mail,
			HttpServletResponse response_email) throws Exception {
		logger.info("post 강사의 정보를 확인하고 승인버튼을 클릭했습니다.");

		teachservice.teach_join2(tvo);
		
		logger.info("승인완료를 위해 num 값을 바꾸어주었습니다.");
		teachservice.teach_appUpdate(avo);

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
		 
		response_email.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response_email.getWriter();

		out.println("<script>alert('승인이 완료되었습니다.'); location.href='/admin/adminmanage';</script>");
		
		/*teachservice.app_delete(avo);
		logger.info("강사 로그인 승인 후, 승인 테이블에서 삭제 완료");*/

		out.flush();
	}

	// 아이디&비밀번호 찾기 GET
	@RequestMapping(value = "/forgot_id_pwd", method = RequestMethod.GET)
	public void getFgid() throws Exception {
		logger.info("get 아이디&비밀번호를 잊어버려서 왔습니다.");
	}

	// 아이디 찾기 POST(학생)
	@RequestMapping(value = "/stdFgId", method = RequestMethod.POST)
	public ModelAndView postStdid(StdVO svo, HttpServletRequest request, HttpServletResponse response_email)
			throws Exception {
		logger.info("post 학생에게 아이디를 전송합니다.");

		StdVO list = adminservice.findS_id(svo);

		if (list.getUser_Email().equals(svo.getUser_Email())) {

			String setfrom = "choio95634@gamil.com";
			String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
			String title = "[StudyUS] 아이디 찾기 메일입니다."; // 제목
			String content =

					System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

							System.getProperty("line.separator") +

							svo.getUser_Email() + "님의 아이디는 " + list.getUser_Id() + "입니다." +

							System.getProperty("line.separator") +

							System.getProperty("line.separator");

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);

		}

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('기재하신 이메일로 아이디가 발송되었습니다.');</script>");
		out_email.flush();

		return new ModelAndView("admin/forgot_id_pwd");
	}

	// 아이디 찾기 POST(강사)
	@RequestMapping(value = "/teachFgId", method = RequestMethod.POST)
	public ModelAndView postTeachid(TeachVO tvo, Model model, HttpServletRequest request,
			HttpServletResponse response_email) throws Exception {
		logger.info("post 강사에게 아이디를 보낼겁니다.");

		TeachVO list = adminservice.findT_id(tvo);

		if (list.getUser_Email().equals(tvo.getUser_Email())) {

			String setfrom = "choio95634@gamil.com";
			String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
			String title = "[StudyUS] 아이디 찾기 메일입니다."; // 제목
			String content =

					System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

							System.getProperty("line.separator") +

							tvo.getUser_Email() + "님의 아이디는 " + list.getUser_Id() + "입니다." +

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

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('기재하신 이메일로 아이디가 발송되었습니다.');</script>");
		out_email.flush();

		return new ModelAndView("admin/forgot_id_pwd");
	}

	// 비밀번호 찾기 POST(학생)
	@RequestMapping(value = "/stdFgPwd", method = RequestMethod.POST)
	public ModelAndView postStdpwd(StdVO svo, Model model, HttpServletRequest request,
			HttpServletResponse response_email) throws Exception {
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
			String title = "[StudyUS] 비밀번호 찾기 메일입니다."; // 제목
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
		mv.setViewName("admin/forgot_id_pwd"); // 뷰의이름
		mv.addObject("pw", pw);

		System.out.println("mv : " + mv);

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('기재하신 이메일로 임시 비밀번호가 발송되었습니다.');</script>");
		out_email.flush();

		return mv;
	}

	// 비밀번호 찾기 POST(강사)
	@RequestMapping(value = "/teachFgPwd", method = RequestMethod.POST)
	public ModelAndView postTeachpwd(TeachVO tvo, Model model, HttpServletRequest request,
			HttpServletResponse response_email) throws Exception {
		logger.info("post 강사에게 임시비밀번호 발급");

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
			String title = "[StudyUS] 비밀번호 찾기 메일입니다."; // 제목
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
		mv.setViewName("admin/forgot_id_pwd"); // 뷰의이름
		mv.addObject("pw", pw);

		System.out.println("mv : " + mv);

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('기재하신 이메일로 임시 비밀번호가 발송되었습니다.');</script>");
		out_email.flush();

		return mv;
	}

}