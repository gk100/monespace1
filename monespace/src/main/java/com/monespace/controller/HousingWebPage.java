package com.monespace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HousingWebPage {
	@RequestMapping("/")
	public String hello() {

		return "index";
	}
	
	@RequestMapping("/aboutUs")
	public String aboutUs() {
		
		return "aboutUs";
	}
	
	@RequestMapping("/contactUs")
	public String contactUs() {
		
		return "contactUs";
	}
	
	@RequestMapping("/welcome")
	public String welcomepage() {
		return "welcome";
	}
	
	@RequestMapping("/403")
	public String unAuthaurizedaccess() {
		return "403";
	}
	
}
