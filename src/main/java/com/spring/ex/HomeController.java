package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("form")
	public String form() {
		return "form";
	}
	
	@RequestMapping(value="input1")
	public String result1(Model model,HttpServletRequest request) {
		String title = request.getParameter("title");
		String singer = request.getParameter("singer");
		String price = request.getParameter("price");
		model.addAttribute("title",title);
		model.addAttribute("singer",singer);
		model.addAttribute("price",price);
		return "music/result1";
	}
	
	@RequestMapping(value="input2")
	public String result2(
			@RequestParam("title") String title,
			@RequestParam("singer") String singer,
			@RequestParam("price") String price,
			Model model
			) {
		
		MusicBean music = new MusicBean(title,singer,price);
		model.addAttribute("music", music);
		return "music/result2";
	}
	
	@RequestMapping(value="input3")
	public String result3(MusicBean music) {
		return "music/result3";
	}
	
	@RequestMapping(value="input4")
	public String result4( @ModelAttribute("m") MusicBean music) {
		return "music/result4";
	}
	
}
