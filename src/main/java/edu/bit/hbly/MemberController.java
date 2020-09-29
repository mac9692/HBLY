package edu.bit.hbly;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.MemberVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	
	//회원가입 GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup()	{
		logger.info("get signup");
	}
	
	//회원가입 POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO memberVO)	{
		logger.info("post signup");
		
		service.signUp(memberVO);
		return "redirect:/";
		}
		
		
		//로그인  get
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public String getSignin() {
		 logger.info("get signin");
		 
		 return "member/signin";
		}

		
		  
		
}
