package com.king.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/User/*")
public class UserController {
	
	
	@RequestMapping(value="/search")
	public String search() {
		System.out.print("컨트롤러 서치");
		return "/search";
	} 
	
	/*
	 * @RequestMapping(value="/searchResult", method = RequestMethod.POST) public
	 * String searchResult(@RequestParam("searchKey") String searchKey , Model
	 * model) { System.out.print("controller searchResult ");
	 * model.addAttribute("searchResult", userservice.searchResult(searchKey));
	 * return "/searchResult"; }
	 */
	
}
