package com.king.myapp.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.PageMaker;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.QnaReplyVO;
import com.king.myapp.domain.SearchCriteria;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.service.AdminService;
import com.king.myapp.service.MailService;
import com.king.myapp.service.QnaBoardService;
import com.king.myapp.service.QnaReplyService;
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

	@Autowired
	QnaBoardService service;
	@Autowired
	QnaReplyService qnaReplyService;

	// 어드민 페이지로 이동
	@RequestMapping(value = "/index_admin")
	public String admin_main(HttpServletResponse response, HttpSession session, Model model, StdVO svo, TeachVO tvo, QnaBoardVO qvo, StudyEnrollVO sevo, TeacherEnrollVO tevo)
			throws Exception {
		logger.info("admin main 페이지로 이동~~!!");

		/* 세션에 부여된 아이디 : admin check */
		StdVO std = (StdVO) session.getAttribute("std");

		System.out.println("std~~~~" + std);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");

		if (std != null) {

			String admin_Id_Check = std.getUser_Id();

			if (!admin_Id_Check.equals("admin") || admin_Id_Check.equals("")) {
				out.println("<script>alert('잘못된 접근입니다, 메인화면으로 돌아갑니다.'); location.href='/';</script>");
				out.flush();
				out.close();
			}

		} else {
			out.println("<script>alert('잘못된 접근입니다, 메인화면으로 돌아갑니다.'); location.href='/';</script>");
			out.flush();
			out.close();
		}

		// 메인화면 통계 데이터 값 전달.

		// 학생 가입자수
		int Std_count = adminservice.count_std(svo);
		model.addAttribute("Std_count", Std_count);

		// 강사 가입자수
		int Tech_count = adminservice.count_tech(tvo);
		model.addAttribute("Tech_count", Tech_count);

		// 총 가입자수(학생+강사) 합계
		int sum_member = Std_count + Tech_count;
		model.addAttribute("sum_member", sum_member);

		// 현재 로그인한 접속자 수(세션)
		Enumeration se = session.getAttributeNames();
		int Session_count = 0;
		while (se.hasMoreElements()) {
			String getse = se.nextElement() + "";
			// System.out.println("@@@@@@@ session : " + getse + " : " +
			// session.getAttribute(getse));
			Session_count++;
		}
		System.out.println("세션 수~~ 확인" + Session_count);
		model.addAttribute("Session_count", Session_count);

		// 학생이 만든 스터디 수
		 int s_enroll_count = adminservice.count_s_enroll(svo);
			model.addAttribute("s_enroll_count", s_enroll_count);

		// 강사가 만든 스터디 수
		 int t_enroll_count = adminservice.count_t_enroll(tvo);
			model.addAttribute("t_enroll_count", t_enroll_count);
		
		//(학생+강사) 스터디 합계
			int enroll_sum = s_enroll_count+t_enroll_count;
			model.addAttribute("sum_enroll_count", enroll_sum);
		
		// 총 문의내역
			int qna_count = adminservice.qna_count(svo);
			model.addAttribute("qna_count", qna_count);
			
		// 최근 30일 문의내역
			int board_this_month_Count = adminservice.board_this_month_Count(qvo);
			model.addAttribute("board_this_month_Count", board_this_month_Count);
		
		// 강사의 월별 스터디수
			List<Object> t_apply_month = adminservice.t_apply_month();
			System.out.println("t_apply_month : " + t_apply_month);
			model.addAttribute("t_apply_month",t_apply_month);

		//학생의 월별 스터디수
			List<Object> s_apply_month = adminservice.s_apply_month();
			System.out.println("s_apply_month"+s_apply_month);
			model.addAttribute("s_apply_month",s_apply_month);
		
		// 월별 문의내역	
			List<Object> qna_month = adminservice.qna_month();
			System.out.println("qna_month"+qna_month);

			model.addAttribute("qna_month",qna_month);

			
			return "admin/index_admin";

	}

	// qna 리스트 페이지로 이동
	@RequestMapping(value = "/admin_qna_list", method = RequestMethod.GET)
	public String admin_qna_list(Model model, @ModelAttribute("scri") SearchCriteria scri, QnaBoardVO vo)
			throws Exception {
		logger.info("admin_qna_list 페이지로 이동");
		model.addAttribute("admin_qna_list", service.getQnaList(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount());

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("scri", scri);

		return "/admin/admin_qna_list";

	}

	// qna 글읽기 페이지로 이동
	@RequestMapping(value = "/admin_qna_read", method = RequestMethod.GET)
	public String admin_qna_read(@RequestParam("QNA_BNO") int QNA_BNO, Model model, HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("admin_qna_read 페이지로 이동");

		QnaBoardVO vo = service.getQnaRead(QNA_BNO);
		model.addAttribute("admin_qna_read", vo);

		List<QnaReplyVO> readReply = qnaReplyService.readReply(QNA_BNO);
		model.addAttribute("repList", readReply);

		List<Map<String, Object>> fileList = service.selectFileList(vo.getQNA_BNO());
		model.addAttribute("file", fileList);

		if (session.getAttribute("std") == null && session.getAttribute("teach") == null){
			return "/admin/admin_qna_read";

		}



		return "/admin/admin_qna_read";
	}

	// 삭제(보내기 및 받기)
	@RequestMapping(value = "/admin_qna_delete/{QNA_BNO}", method = RequestMethod.GET)
	public String admin_qna_read(@PathVariable int QNA_BNO) throws Exception {
		logger.info("admin_qna_read");
		System.out.println("QNA_BNO : " + QNA_BNO);
		service.QnaDelete(QNA_BNO);

		return "redirect:/admin/admin_qna_list";
	}
/*	// 글 수정(수정폼 받기)
	@RequestMapping(value = "/admin_qna_get_modify/{QNA_BNO}", method = RequestMethod.GET)
	public String admin_qna_get_modify(@PathVariable int QNA_BNO, Model model) throws Exception {
		logger.info("get Qna modify");
>>>>>>> branch 'master' of https://github.com/sophying/WATO.git

	/*
	 * // 글 수정(수정폼 보내기)
	 * 
	 * @RequestMapping(value = "/admin_qna_post_modify", method =
	 * RequestMethod.POST) public String admin_qna_post_modify(QnaBoardVO vo) throws
	 * Exception { logger.info("post Qna Modify"); service.postQnaModify(vo);
	 * 
	 * return "redirect:/admin/admin_qna_read?QNA_BNO="+vo.getQNA_BNO(); }
	 */
	// admin_qna 댓글 작성
	@RequestMapping(value = "/admin_qna_reply_write/{QNA_BNO}", method = { RequestMethod.GET, RequestMethod.POST })
	public String admin_qna_reply_write(@PathVariable int QNA_BNO, QnaReplyVO vo) throws Exception {
		logger.info("admin_qna_reply_write 실행");

		qnaReplyService.replyWrite(vo);
		System.out.println(vo.getQNA_WRITER());
		System.out.println(vo.getQNA_RNO());
		System.out.println(vo.getQNA_REGDATE());
		System.out.println(vo.getQNA_CONTENT());
		System.out.println(vo.getQNA_BNO());

		return "redirect:/admin/admin_qna_read?QNA_BNO=" + QNA_BNO;
	}

	// 댓글 수정 POST
	@RequestMapping(value = "/admin_qna_reply_update/{QNA_BNO}", method = RequestMethod.POST)
	public String admin_qna_reply_update(@PathVariable int QNA_BNO, QnaReplyVO vo) throws Exception {

		logger.info("reply update 실행");
		System.out.println("vo.getQNA_BNO() : " + vo.getQNA_BNO());
		System.out.println("vo.getRno() : " + vo.getQNA_RNO());
		System.out.println("vo.getQNA_CONTENT() : " + vo.getQNA_CONTENT());

		qnaReplyService.replyUpdate(vo);

		return "redirect:/admin/admin_qna_read?QNA_BNO=" + QNA_BNO;

	}

	// 댓글 삭제
	@RequestMapping(value = "/admin_qna_reply_delete/{QNA_BNO}/{QNA_RNO}", method = RequestMethod.GET)
	public String admin_qna_reply_delete(@PathVariable int QNA_BNO, @PathVariable int QNA_RNO, QnaReplyVO vo)
			throws Exception {
		logger.info("reply Delete 실행");

		qnaReplyService.replyDelete(QNA_RNO);

		System.out.println(vo.getQNA_BNO());
		System.out.println(vo.getQNA_CONTENT());
		System.out.println(vo.getQNA_REGDATE());
		System.out.println(vo.getQNA_RNO());
		System.out.println(vo.getQNA_WRITER());

		return "redirect:/admin/admin_qna_read?QNA_BNO=" + QNA_BNO;

	}

	// 차트 페이지 이동
	@RequestMapping(value = "/charts")
	public String charts() throws Exception {
		logger.info("charts 페이지로 이동~~!!");
		return "admin/charts";
	}

	// 테이블 페이지 이동
	@RequestMapping(value = "/tables")
	public String tables() throws Exception {
		logger.info("tables 페이지로 이동~~!!");
		return "admin/tables";
	}

	// 폼 페이지 이동
	@RequestMapping(value = "/forms")
	public String forms() throws Exception {
		logger.info("forms 페이지로 이동~~!!");
		return "admin/forms";
	}

	// 강사승인 페이지 이동
	@RequestMapping(value = "/approval")
	public String approval(Model model) throws Exception {
		logger.info("approval 페이지로 이동~~!!");

		List<ApprovalVO> teachlist = adminservice.teachlist();
		model.addAttribute("list", teachlist);
		return "admin/approval";
	}

	// 매니지먼트 페이지 이동
	@RequestMapping(value = "/management", method = RequestMethod.GET)
	public String getManagement(Model model) throws Exception {
		logger.info("management 페이지로 이동~~!!");

		/*
		 * List<ManagementVO> studentList = adminservice.studentList();
		 * model.addAttribute("studentList", studentList); List<ManagementVO> teachList
		 * = adminservice.teachList(); model.addAttribute("teachList", teachList);
		 */
		List<StdVO> studentList = adminservice.studentList2();
		model.addAttribute("studentList", studentList);
		List<TeachVO> teachList = adminservice.teachList2();
		model.addAttribute("teachList", teachList);
		return "admin/management";
	}

	// 매니지먼트에서 학생&강사 filter 검색 기능
	@RequestMapping(value = "/management", method = RequestMethod.POST)
	public String postManagement(Model model, @RequestParam("filter") String filter) throws Exception {
		logger.info("학생&강사 리스트 조회");

		if (filter.equals("10")) {
			List<StdVO> studentList = adminservice.studentList2();
			model.addAttribute("studentList", studentList);

		} else if (filter.equals("20")) {
			List<TeachVO> teachList = adminservice.teachList2();
			model.addAttribute("teachList", teachList);

		} else if (filter.equals("30")) {
			List<StdVO> studentList = adminservice.studentList2();
			model.addAttribute("studentList", studentList);
			List<TeachVO> teachList = adminservice.teachList2();
			model.addAttribute("teachList", teachList);
		}
		return "admin/management";
	}

		// 매니지먼트에서 학생 회원정보 삭제	    
	    @RequestMapping(value = "/StdDelete", method = RequestMethod.POST)
	    public void StdDelete(StdVO svo, HttpServletResponse response) throws Exception {
	    	logger.info("학생 회원정보 삭제");
	    	
	    	adminservice.StdDelete(svo);
	    	logger.info("학생 회원정보 삭제 완료");
	    	
	    	response.setContentType("text/html; charset=UTF-8");
	    	PrintWriter out = response.getWriter();
			out.println("<script>alert('삭제가 완료되었습니다.'); location.href='http://localhost:8080/admin/management';</script>");
			out.flush();
	    }
	    
	    // 매니지먼트에서 강사 회원정보 삭제	    
	    @RequestMapping(value = "/TeachDelete", method = RequestMethod.POST)
	    public void TeachDelete(TeachVO tvo, HttpServletResponse response) throws Exception {
	    	logger.info("강사 회원정보 삭제");
	    	
	    	adminservice.TeachDelete(tvo);
	    	logger.info("강사 회원정보 삭제 완료");
	    	
	    	response.setContentType("text/html; charset=UTF-8");
	    	PrintWriter out = response.getWriter();
	    	out.println("<script>alert('삭제가 완료되었습니다.'); location.href='http://localhost:8080/admin/management';</script>");
	    	out.flush();
	    }
	    
	// 로그인 페이지 이동
	/*
	 * @RequestMapping(value = "/login") public String login() throws Exception{
	 * logger.info("login 페이지로 이동~~!!"); return "admin/login"; }
	 */

	/*
	 * =============================================================================
	 * ====
	 */

	// 로그인 get
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public void getlogin() throws Exception {
		logger.info("get 학생 또는 강사가 로그인");
	}

	// 학생 로그인 post
	@RequestMapping(value = "/loginstd", method = RequestMethod.POST)
	public void postStd(StdVO svo, HttpServletRequest req, RedirectAttributes rttr, HttpServletResponse response)
			throws Exception {
		logger.info("post 학생 로그인 시도");

		HttpSession session = req.getSession();

		StdVO login1 = adminservice.login1(svo);

		if (login1 == null) { // login 값이 null 일 때 member 값은 null 이고

			session.setAttribute("std", null);
			rttr.addFlashAttribute("msg", false);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호가 맞지 않습니다.'); location.href='http://localhost:8080/';</script>");
			out.flush();

		} else {
			session.setAttribute("std", login1); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
			logger.info("학생 로그인 완료");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인이 완료되었습니다.'); location.href='http://localhost:8080/';</script>");
			out.flush();
		}
	}

	// 강사 로그인 post
	@RequestMapping(value = "/logintch", method = RequestMethod.POST)
	public void postTch(TeachVO tvo, HttpServletRequest req, RedirectAttributes rttr, HttpServletResponse response)
			throws Exception {
		logger.info("post 강사 로그인 시도");

		HttpSession session = req.getSession();

		TeachVO login2 = adminservice.login2(tvo);
		if (login2 == null) { // login 값이 null 일 때 member 값은 null 이고

			session.setAttribute("teach", null);
			rttr.addFlashAttribute("msg", false);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호가 맞지 않습니다.'); location.href='http://localhost:8080/';</script>");
			out.flush();

		} else {
			session.setAttribute("teach", login2); // login 값이 null 이 아니라면 member 값은 login 이다.(== vo 값을 불러와서 쓸 수 있게 한다)
			logger.info("강사 로그인 완료");
			response.setContentType("text/html; charset=UTF-8");
			System.out.println(login2.getTeach_Orgname());
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인이 완료되었습니다.'); location.href='http://localhost:8080/';</script>");
			out.flush();
		}
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

	// 승인버튼 클릭 (인증센터 POST), mailSending 코드
	@RequestMapping(value = "/approval", method = RequestMethod.POST)
	public void mailSending(TeachVO tvo, ApprovalVO avo, HttpServletRequest request, String e_mail,
			HttpServletResponse response_email) throws Exception {
		logger.info("post 강사의 정보를 확인하고 승인버튼을 클릭했습니다.");

		teachservice.teach_join2(tvo); // 값이 teach_info 테이블로 삽입

		/*
		 * logger.info("승인완료를 위해 num 값을 바꾸어주었습니다."); teachservice.teach_appUpdate(avo);
		 */

		String setfrom = "choio95634@gamil.com"; 
		String tomail = request.getParameter("User_Email"); // 받는 사람 이메일
		System.out.println(tomail);
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

		out.println("<script>alert('승인이 완료되었습니다.'); location.href='/admin/approval';</script>");

		teachservice.app_delete(avo);
		logger.info("강사 로그인 승인 후, 승인 테이블에서 삭제 완료");

		out.flush();
	}

	// 아이디&비밀번호 찾기 GET
	@RequestMapping(value = "/forgot_id_pwd", method = RequestMethod.GET)
	public void getFgid() throws Exception {
		logger.info("get 아이디&비밀번호를 잊어버려서 왔습니다.");
	}

	// 아이디 찾기 POST(학생)
		@RequestMapping(value = "/stdFgId", method = RequestMethod.POST)
		public void postStdid(StdVO svo, HttpServletRequest request, HttpServletResponse response_email, HttpServletResponse response)
				throws Exception {
			logger.info("post 학생에게 아이디를 전송합니다.");

			StdVO list = adminservice.findS_id(svo);

			if (list != null) {

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
				
				response_email.setContentType("text/html; charset=UTF-8");
				PrintWriter out_email = response_email.getWriter();
				out_email.println("<script>alert('기재하신 이메일로 아이디가 발송되었습니다.'); location.href='http://localhost:8080/';</script>");
				out_email.flush();

			} else {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('존재하지 않는 이메일입니다.'); location.href='http://localhost:8080/admin/forgot_id_pwd ';</script>");
				out.flush();
				
			}
		}

		// 아이디 찾기 POST(강사)
		@RequestMapping(value = "/teachFgId", method = RequestMethod.POST)
		public void postTeachid(TeachVO tvo, Model model, HttpServletRequest request,
				HttpServletResponse response_email, HttpServletResponse response) throws Exception {
			logger.info("post 강사에게 아이디를 보낼겁니다.");

			TeachVO list = adminservice.findT_id(tvo);

			if (list != null) {

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
				
				response_email.setContentType("text/html; charset=UTF-8");
				PrintWriter out_email = response_email.getWriter();
				out_email.println("<script>alert('기재하신 이메일로 아이디가 발송되었습니다.'); location.href='http://localhost:8080/';</script>");
				out_email.flush();
				
			} else {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('존재하지 않는 이메일입니다.'); location.href='http://localhost:8080/admin/forgot_id_pwd ';</script>");
				out.flush();
				
			}
		}


	// 비밀번호 찾기 POST(학생)
	@RequestMapping(value = "/stdFgPwd", method = RequestMethod.POST)
	public void postStdpwd(StdVO svo, Model model, HttpServletRequest request,
			HttpServletResponse response_email, HttpServletResponse response) throws Exception {
		logger.info("post 학생에게 임시비밀번호 발급");

		StdVO list = adminservice.findS_pwd(svo);

		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		} // 이메일로 받는 인증코드(난수)

		if (list != null) {

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
			
			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_email = response_email.getWriter();
			out_email.println("<script>alert('기재하신 이메일로 임시 비밀번호가 발송되었습니다.'); location.href='http://localhost:8080/';</script>");
			out_email.flush();
			
		} else {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('존재하지 않는 아이디 혹은 이메일 입니다.'); location.href='http://localhost:8080/admin/forgot_id_pwd ';</script>");
			out.flush();
			
		}
	}

	// 비밀번호 찾기 POST(강사)
	@RequestMapping(value = "/teachFgPwd", method = RequestMethod.POST)
	public void postTeachpwd(TeachVO tvo, Model model, HttpServletRequest request,
			HttpServletResponse response_email, HttpServletResponse response) throws Exception {
		logger.info("post 강사에게 임시비밀번호 발급");

		TeachVO list = adminservice.findT_pwd(tvo);

		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		} // 이메일로 받는 인증코드(난수)

		if (list != null) {

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
			
			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_email = response_email.getWriter();
			out_email.println("<script>alert('기재하신 이메일로 임시 비밀번호가 발송되었습니다.'); location.href='http://localhost:8080/';</script>");
			out_email.flush();
			
		} else {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('존재하지 않는 아이디 혹은 이메일입니다.'); location.href='http://localhost:8080/admin/forgot_id_pwd ';</script>");
			out.flush();
			
		}
	}

}