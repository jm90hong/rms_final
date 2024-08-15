package com.my.rms_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {
	
	
	
	@GetMapping("/login")
	public String login() {	
		
		return "login";
	}
	
	
	
	
	@GetMapping("/join-user")
	public String joinUser() {	
		
		return "join-user";
	}
	
	
	@GetMapping("/")
	public String home(Model model) {
		
		
		model.addAttribute("menu","home");
		
		return "home";
	}
	
	@GetMapping("/js")
	public String js(Model model) {
		
		model.addAttribute("menu","js");
		
		return "js";
	}
	
	@GetMapping("/item")
	public String item(Model model) {
		
		model.addAttribute("menu","item");
		
		return "item";
	}
	

	@GetMapping("/service")
	public String service(Model model) {
		
		model.addAttribute("menu","service");
		
		return "service";
	}
	
}
