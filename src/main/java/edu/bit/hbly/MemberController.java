package edu.bit.hbly;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	// 1. sign up

	// member sign up GET
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");
	}

	// member sign up2 GET - daun
	@RequestMapping(value = "/signup2", method = RequestMethod.GET)
	public void getSignup2() throws Exception {
		logger.info("get signup2");
	}

	// member sign up POST
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signup");

		String inputPassword = vo.getUserPassword();
		String password = bcryptPasswordEncoder.encode(inputPassword);
		vo.setUserPassword(password);

		service.signup(vo);

		return "redirect:/";
	}

	// member sign up GET - id(email) check (Ajax)
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	@ResponseBody
	public void checkId(@RequestParam("userId") String userId) throws Exception {
		logger.info("get checkId");
		service.checkId(userId);
	}

	// member sign up GET - nickname check (Ajax)
	@RequestMapping(value = "/checkNickname", method = RequestMethod.GET)
	public void checkNickname(@RequestParam("userNickname") String userNickname) throws Exception {
		logger.info("get checkNickname");
		service.checkNickname(userNickname);
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
	
	// �α��� post
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post signin");

		MemberVO login = service.signin(vo);
		HttpSession session = req.getSession();

		boolean passwordMatch = bcryptPasswordEncoder.matches(vo.getUserPassword(), login.getUserPassword());

		if (login != null && passwordMatch) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/signin";
		}

		return "redirect:/";
	}
	
	// member idInqury GET - daun
	@RequestMapping(value = "/idInqury", method = RequestMethod.GET)
	public void idInqury() throws Exception {
		logger.info("get idInqury");
	}
	
	// member pwInqury GET - daun
	@RequestMapping(value = "/pwInqury", method = RequestMethod.GET)
	public void pwInqury() throws Exception {
		logger.info("get pwInqury");
	}
	// �α׾ƿ�
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signout(HttpSession session) throws Exception {
		logger.info("get logout");

		service.signout(session);

		return "redirect:/";
	}

}
