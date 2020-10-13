package edu.bit.hbly;


import java.security.Principal;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.CustomUser;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.hbly.vo.ResponseVO;
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
	
	@Inject
	private BCryptPasswordEncoder passEncoder;
	
	//회원가입 GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup()	{
		logger.info("get signup");
	}
	
	//회원가입 POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO vo)	throws Exception{
		logger.info("post signup");
		
		service.signUp(vo);
		return "redirect:/";
		}
		
		
	//로그인  get
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String getSignin() {
		logger.info("get signin");
		 
		return "member/signin";
		}
	
	//회원정보 수정 get
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify() throws Exception{
		logger.info("get modify");
	}
	
	//회원정보 수정 POST
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(MemberVO vo) throws Exception{
		logger.info("post modify");
		
		service.modify(vo);
		return "redirect:/";
	}

	//회원탈퇴 get
	@RequestMapping(value= "/withdrawal", method = RequestMethod.GET)
	public void getWithdrawal() throws Exception{
		logger.info("get withdrawal");
		
	}
	
	//회원탈퇴 post
	@RequestMapping(value= "/withdrawal", method = RequestMethod.POST)
	public String withdrawal(MemberVO vo, Authentication authentication, HttpServletRequest request)throws Exception{
		logger.info("post withdrawal");
		
		 Gson gson = new Gson();
         CustomUser user = (CustomUser) authentication.getPrincipal();
         log.info("loginInfo:  "+user);
         boolean isValidPassword = passEncoder.matches(vo.getUserPassword(), user.getMember().getUserPassword());
         
         
        log.info("true & fail isValidPassword   :  "+isValidPassword);
        log.info("login ID      :  "+user.getMember().getUserId());
        log.info("login password   :  "+vo.getUserPassword());
        log.info("login Encoding password   :  "+user.getMember().getUserPassword()); 
        log.info(" true & fail   : "+isValidPassword+"  matches   :  "+vo.getUserPassword()+"     :     "+ user.getMember().getUserPassword()); //matches(1234,$2a$10$R4UGHuNESie7gjG2TQhp9OHHHlfxUdWDyMKhXAj5lP8tECLORmIgW)
        
         if (isValidPassword) {                 
             vo.setUserId(user.getMember().getUserId());  
             vo.setUserPassword(user.getMember().getUserPassword());
             service.withdrawal(vo);
             log.info("Delete success");
             
             request.getSession().invalidate();
             log.info("logout success ");
             gson.toJson(new ResponseVO<>(200, "success"));	
             return "redirect:/";    
         }
         log.info("notValidPassword");
         gson.toJson(new ResponseVO<>(400, "fail"));
         return "/member/withdrawal";

	}
	//mypage GET
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void getMypage()	{
		logger.info("get mypage");
	}
	
}

