package edu.bit.hbly;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home");
		
		return "home";

	}
	
	@RequestMapping(value = "/policy/terms", method = RequestMethod.GET)
	public String policyTerms(Model model) {
		logger.info("policy Terms");
		
		return "policy/terms";
	}
	
	@RequestMapping(value = "/policy/privacy", method = RequestMethod.GET)
	public String policyPrivacy(Model model) {
		logger.info("policy Privacy");
		
		return "policy/privacy";
	}
	
	@RequestMapping(value = "/policy/commercial", method = RequestMethod.GET)
	public String policyCommercial(Model model) {
		logger.info("policy Commercial");
		
		return "policy/commercial";
	}
	
	@RequestMapping(value = "/policy/youth", method = RequestMethod.GET)
	public String policyYouth(Model model) {
		logger.info("policy Youth");
		
		return "policy/youth";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("home");
		
		return "index";

	}
}
