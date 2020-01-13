package com.king.myapp.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.service.AdminService;
import com.king.myapp.service.MailService;
import com.king.myapp.service.TeachService;

@Controller
@RequestMapping("/admin/*") 
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	private static final String String = null; 
	
	@Inject
	AdminService adminservice;
	@Inject
	TeachService teachservice;
	@Inject
	JavaMailSender mailSender;
	@Inject
	MailService mailservice;

	
	// 학생&강사 관리 페이지 GET
	@RequestMapping(value = "/adminmanage", method = RequestMethod.GET)
	public String getManage(Model model) throws Exception {
		logger.info("get manage");
		
		List<ApprovalVO> teachlist = adminservice.teachlist();
		model.addAttribute("list", teachlist);
		return "/admin/adminmanage";
	}
	
	// 학생&강사 관리 페이지 POST
	@RequestMapping(value = "/adminmanage", method = RequestMethod.POST)
	public void postManage() throws Exception {
		logger.info("post manage");
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
	
	// 인증센터 GET
	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public void getInjeung(Model model) throws Exception {
		logger.info("get email_injeung");
	}
	
	 // 승인버튼 클릭 (인증센터 POST), mailSending 코드
    @RequestMapping(value = "/admin/auth.do" , method = RequestMethod.POST )
    public ModelAndView mailSending(TeachVO vo, HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws Exception {
    	logger.info("POST APP");
    	
    	teachservice.teach_join2(vo);
    	

        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
		
        String setfrom = "choio95635@gamil.com";
        String tomail = request.getParameter("Teach_Email"); // 받는 사람 이메일
        String title = "회원가입 인증 이메일 입니다."; // 제목
        String content =
                
                System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
                
                System.getProperty("line.separator")+
                        
                "안녕하십니까. 강사승인이 되었음을 알려드립니다."
                
                +System.getProperty("line.separator")+
                
                System.getProperty("line.separator")+
                
                "아래 링크를 타고 오셔서 아이디를 생성해주세요."+
                
                System.getProperty("line.separator")+
                
                System.getProperty("line.separator")+
                
                "http://localhost:8080/teach/teach_join_2?terms1=on&terms2=on&terms3=on"   
						/* " 인증번호는 " +dice+ " 입니다. " */
                
                +System.getProperty("line.separator")+
                
                System.getProperty("line.separator");
                
                /*"받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용 */		
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
		
		 ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
         mv.setViewName("/admin/adminmanage");     //뷰의이름
         mv.addObject("dice", dice);
         
         System.out.println("mv : "+mv);

         response_email.setContentType("text/html; charset=UTF-8");
         PrintWriter out_email = response_email.getWriter();
         out_email.println("<script>alert('승인이 완료되었습니다.');</script>");
         out_email.flush();
         
         
         return mv;
	}
    
    // 비밀번호 찾기
    @RequestMapping(value = "/forgot_pwd", method = RequestMethod.GET)
	public void getForgotpwd(Model model) throws Exception {
		logger.info("get forgot_password");
	}
	
	/*
	 * //이메일 인증 페이지 맵핑 메소드
	 * 
	 * @RequestMapping("/email.do") public String email() { return "/email"; }
	 * 
	 * 
	 * //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드. //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지
	 * 확인해서 맞으면 회원가입 페이지로 넘어가고, //틀리면 다시 원래 페이지로 돌아오는 메소드
	 * 
	 * @RequestMapping(value = "/join_injeung.do{dice}", method =
	 * RequestMethod.POST) public ModelAndView join_injeung(String
	 * email_injeung, @PathVariable String dice, HttpServletResponse
	 * response_equals) throws IOException {
	 * 
	 * 
	 * System.out.println("마지막 : email_injeung : "+email_injeung);
	 * System.out.println("마지막 : dice : "+dice);
	 * 
	 * //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("/teach/teach_join");
	 * mv.addObject("e_mail",email_injeung); if (email_injeung.equals(dice)) {
	 * 
	 * //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
	 * 
	 * 
	 * mv.setViewName("teach/teach_join"); mv.addObject("e_mail",email_injeung);
	 * 
	 * //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을 //한번더 입력할 필요가 없게 한다.
	 * 
	 * response_equals.setContentType("text/html; charset=UTF-8"); PrintWriter
	 * out_equals = response_equals.getWriter();
	 * out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>"
	 * ); out_equals.flush();
	 * 
	 * return mv;
	 * 
	 * 
	 * }else if (email_injeung != dice) {
	 * 
	 * 
	 * ModelAndView mv2 = new ModelAndView();
	 * 
	 * mv2.setViewName("admin/email_injeung");
	 * 
	 * response_equals.setContentType("text/html; charset=UTF-8"); PrintWriter
	 * out_equals = response_equals.getWriter(); out_equals.
	 * println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>"
	 * ); out_equals.flush();
	 * 
	 * 
	 * return mv2;
	 * 
	 * }
	 * 
	 * return mv;
	 * 
	 * }
	 */
	
	/*
	 * // 강사 회원 가입 get
	 * 
	 * @RequestMapping(value = "/teach_join", method = RequestMethod.GET) public
	 * void getRegister() throws Exception { logger.info("get teach_join"); }
	 * 
	 * // 강사 회원 가입 POST
	 * 
	 * @RequestMapping(value = "/teach_join", method = RequestMethod.POST) public
	 * String postRegister(TeachVO vo) throws Exception {
	 * logger.info("post teach_join");
	 * 
	 * service.teach_join(vo);
	 * 
	 * return "redirect:/"; }
	 */
	 
	
}