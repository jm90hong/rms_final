package com.my.rms_final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.my.rms_final.service.UserService;
import com.my.rms_final.vo.User;

@Controller
public class ViewController {
	
	
	@Autowired
	UserService userService;
	
	
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
		
		
		List<User> users = userService.findAll();
		
		model.addAttribute("menu","home");
		model.addAttribute("users",users);
		
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
