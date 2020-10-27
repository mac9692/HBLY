package edu.bit.hbly;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.CustomUser;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.hbly.vo.ResponseVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	@Inject
	private BCryptPasswordEncoder passEncoder;

	// 1. sign up

	// member sign up GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");
	}

//	// member sign up GET
//	@RequestMapping(value = "/signup2", method = RequestMethod.GET)
//	public void getSignup2() throws Exception {
//		logger.info("get signup2");
//	}


	// member sign up POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO vo) throws Exception{
		logger.info("post signup");
		
		service.signUp(vo);

		return "redirect:/";
	}

	// member sign up GET - id(email) check (Ajax)
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	@ResponseBody
	public int checkId(@RequestParam("userId") String userId) throws Exception {
		logger.info("get checkId");
			
		return service.checkId(userId);
	}

	// member sign up GET - nickname check (Ajax)
	@RequestMapping(value = "/checkNickname", method = RequestMethod.GET)
	@ResponseBody
	public int checkNickname(@RequestParam("userNickname") String userNickname) throws Exception {
		logger.info("get checkNickname");
		
		return service.checkNickname(userNickname);
	}

	// member sign up POST - phonenumber check / certification cellphone -- 1
	@RequestMapping(value = "/sms", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> certificationCellphone(@RequestBody String jsonData) throws Exception {
		logger.info("post certificationCellphone");

		ResponseEntity<String> responseEntity = service.certificationCellphone(jsonData);

		return responseEntity;
	}



	// 2. sign in

	// member sign in GET
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public void getSignin() throws Exception {
		logger.info("get signin");
	}

	// member sign in2 GET - daun
	@RequestMapping(value = "/signin2", method = RequestMethod.GET)
	public void getSignin2() throws Exception {
		logger.info("get signin2");
	}
	
	
	// member idInqury GET - daun
	@RequestMapping(value = "/idInqury", method = RequestMethod.GET)
	public void idInqury() throws Exception {
		logger.info("get idInqury");
	}
	
	// member idInqury POST - checkNamePhoneNumber(Ajax) - daun 
	@RequestMapping(value = "/checkNamePhoneNumber", method = RequestMethod.POST)
	@ResponseBody
	public int checkNamePhoneNumber(@RequestBody MemberVO memberVO) throws Exception {
		logger.info("POST checkNamePhoneNumber");
		
		List<MemberVO> idList = service.checkNamePhoneNumber(memberVO);
		if(idList.size()==0) { //list가 비었을때, 일치하는 회원 없을때
			return 0;
		}
		return 1;
	}
	
	// member idInqury POST - daun
	@RequestMapping(value = "/idInqury", method = RequestMethod.POST)
	public String idInqury(MemberVO memberVO,Model model)	throws Exception{
		logger.info("post idInqury");
		
		List<MemberVO> idList = service.checkNamePhoneNumber(memberVO);
		model.addAttribute("idList", idList);	
		
		return "/member/idInquryList";
	}
	
	// member pwInqury GET - daun
	@RequestMapping(value = "/pwInqury", method = RequestMethod.GET)
	public void getPwInqury() throws Exception {
		logger.info("get pwInqury");
	}

	// member pwInqury POST - daun
	@RequestMapping(value = "/pwInquryCheck", method = RequestMethod.POST)
	public void postPwInqury(@RequestParam("userId") String userId,HttpSession session ) throws Exception {
		logger.info("POST pwInquryCheck");
		System.out.println(userId);
		session.setAttribute("userId",userId);
		
	}
	
	// member pwInqury POST - daun
	@RequestMapping(value = "/pwInquryModify", method = RequestMethod.POST)
	public void pwInquryModify() throws Exception {
		logger.info("POST pwInquryCheck");
	}	
	
	// member pwInqury POST - daun
	@RequestMapping(value = "/pwInqurySuccess", method = RequestMethod.POST)
	@Transactional
	public String pwInqurySuccess(MemberVO memberVO,HttpSession session) throws Exception {
		logger.info("POST pwInqurySuccess");
		
		memberVO.setUserId((String) session.getAttribute("userId"));
		session.removeAttribute("userId");		
		service.pwInqurySuccess(memberVO);
		return "redirect:/member/signin";
	}	
	
	//modify get
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify() throws Exception {
		logger.info("get modify");
	}
	
	//modify POST
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(MemberVO vo, HttpServletRequest request) throws Exception{
		logger.info("post modify");

		System.out.println(vo.getUserId()+":"+vo.getUserPassword()+":"+vo.getUserAddress1()+":"+vo.getUserNickname());

		service.modify(vo);
		request.getSession().invalidate();
		return "redirect:/";
	}

	//withdrawal get
	@RequestMapping(value= "/withdrawal", method = RequestMethod.GET)
	public void getWithdrawal() throws Exception{
		logger.info("get withdrawal");
		
	}
	
	// withdrawal post
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
	public void getMypage() throws Exception{
		logger.info("get mypage");
	}
	
	//pwChk POST
	@RequestMapping(value= "/pwChk", method = RequestMethod.POST)
	public String PwChk(MemberVO vo, Authentication authentication, HttpServletRequest request) throws Exception{
		log.info("post pwChk");
         
		Gson gson = new Gson();
	    CustomUser user = (CustomUser) authentication.getPrincipal();
//	    boolean isValidPassword = false;
	   
	    boolean isValidPassword = passEncoder.matches(vo.getUserPassword(), user.getMember().getUserPassword());
	    

//	    try {
//	    	isValidPassword = passEncoder.matches(vo.getUserPassword(), user.getMember().getUserPassword());
//	    }catch (Exception e) {System.out.println("아니요..에러나요: "+e.getMessage());}
//  
	       
	    if (isValidPassword) {                 
	    		  
	        gson.toJson(new ResponseVO<>(200, "success"));	
	        
	        System.out.println(isValidPassword+"여기왔냥?");
			return "redirect:/member/modify";
	    }
	        
	gson.toJson(new ResponseVO<>(400, "fail"));
	return "redirect:/member/mypage";
	
			
	}
		
	//accessDenied GET
	@RequestMapping(value= "/accessDenied", method = RequestMethod.GET)
	public void getAccessDenied() {
		log.info("get accessDenied");
	}
	
}

