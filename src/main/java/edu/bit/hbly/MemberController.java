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



@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	
	@Inject
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//회원가입 GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception{
		logger.info("get signup");
	}
	
	//회원가입 POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception{
		logger.info("post signup");
			
		String inputPassword = vo.getUserPassword();
		String password = bcryptPasswordEncoder.encode(inputPassword);
		vo.setUserPassword(password);
			
		service.signup(vo);
			
			
		return "redirect:/";
		}
		
		
		//�α���  get
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public void getSignin() throws Exception {
		 logger.info("get signin");
		}

		//�α��� post
		@RequestMapping(value = "/signin", method = RequestMethod.POST)
		public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		 logger.info("post signin");
		   
		 MemberVO login = service.signin(vo);  
		 HttpSession session = req.getSession();
		 
		 boolean passwordMatch = bcryptPasswordEncoder.matches(vo.getUserPassword(), login.getUserPassword());
		 
		 if(login != null && passwordMatch) {
		  session.setAttribute("member", login);
		 } else {
		  session.setAttribute("member", null);
		  rttr.addFlashAttribute("msg", false);
		  return "redirect:/member/signin";
		 }  
		 
		 return "redirect:/";
		}
		  
		//�α׾ƿ�
		@RequestMapping(value = "/signout", method = RequestMethod.GET)
		public String signout(HttpSession session) throws Exception {
		 logger.info("get logout");
		 
		 service.signout(session);
		   
		 return "redirect:/";
		}
	
}
