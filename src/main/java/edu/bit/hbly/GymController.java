package edu.bit.hbly;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/gym/*")
public class GymController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/price", method = RequestMethod.GET)
	public String gymPrice(Model model) {
		logger.info("gym price");
		
		return "/gym/price";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String gymAbout(Model model) {
		logger.info("gym about");
		
		return "/gym/about";
	}
	
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	public String gymCourse(Model model) {
		logger.info("gym course");
		
		return "/gym/course";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String gymContact(Model model) {
		logger.info("gym contact");
		
		return "/gym/contact";
	}
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String gymGallery(Model model) {
		logger.info("gym gallery");
		
		return "/gym/gallery";
	}
}
