package edu.bit.hbly;


import java.security.Principal;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.CustomUser;
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
	
	@Inject
	private BCryptPasswordEncoder passEncoder;
	
	//ȸ������ GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup()	{
		logger.info("get signup");
	}
	
	//ȸ������ POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO vo)	throws Exception{
		logger.info("post signup");
		
		service.signUp(vo);
		return "redirect:/";
		}
		
		
	//�α���  get
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String getSignin() {
		logger.info("get signin");
		 
		return "member/signin";
		}
	
	//ȸ������ ���� get
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify() throws Exception{
		logger.info("get modify");
	}
	
	//ȸ������ ���� POST
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(MemberVO vo) throws Exception{
		logger.info("post modify");
		
		service.modify(vo);
		return "redirect:/";
	}

	//ȸ��Ż�� get
	@RequestMapping(value= "/withdrawal", method = RequestMethod.GET)
	public void getWithdrawal() throws Exception{
		logger.info("get withdrawal");
	}
	
	//ȸ��Ż�� post
	@RequestMapping(value= "/withdrawal", method = RequestMethod.POST)
	public String withdrawal(MemberVO vo, Authentication authentication, RedirectAttributes rttr)throws Exception{
		logger.info("post withdrawal");
		
		
		CustomUser user = (CustomUser)authentication.getPrincipal();
		String userPassword = user.getMember().getUserPassword();
		String voPassword = vo.getUserPassword();
		

		if(!(userPassword.equals(voPassword))) {
			rttr.addFlashAttribute("msg", false);
			System.out.println("����Ӵ�?");
			return "redirect:/member/withdrawal";
			
		}
		
		service.withdrawal(vo);
		return "redirect:/";
		
	}

}
