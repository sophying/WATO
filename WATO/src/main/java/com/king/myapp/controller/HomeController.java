package com.king.myapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject 
	BoardService service; 
	
	/** 
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception  
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 
		String formattedDate = dateFormat.format(date);
		
		List<MainLangugeRankVO> languagerank =  service.langugerank();
		List<StudyEnrollVO> listRank = service.listRank();
		model.addAttribute("languagerank",languagerank); 
		model.addAttribute("listRank",listRank); //스터디 랭크
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
}
