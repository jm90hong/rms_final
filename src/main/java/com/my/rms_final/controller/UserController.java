package com.my.rms_final.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.my.rms_final.service.UserService;
import com.my.rms_final.vo.User;

@RestController
@RequestMapping(value="api/user")
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	
	
	@GetMapping("all")
	public List<User> all() {
		
		return userService.findAll();
	}
	
	
	@PostMapping("logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		
		return "ok";
	}
	
	
	
	@PostMapping("login")
	public User login(
				@RequestParam(value="id") String id,
				@RequestParam(value="pw") String pw,
				HttpSession session
			) {
		
		
		
		
		
		User user = new User();
		user.setId(id);
		user.setPw(pw);
		
		User result = userService.findByIdAndPw(user);
		
		
		
		if(result != null) {
			session.setAttribute("user", result);	
		}
		
		
		
		
		return result;
	}
	
	
	@PostMapping("save")
	public String save(
				@RequestParam(value="id") String id,
				@RequestParam(value="pw") String pw,
				@RequestParam(value="nick") String nick,
				@RequestParam(value="address") String address,
				@RequestParam(value="type") String type
				
			) {
		
		String code = RandomStringUtils.randomAlphanumeric(10);
		User user = new User();
		
		user.setId(id);
		user.setAddress(address);
		user.setNick(nick);
		user.setPw(pw);
		user.setType(type);
		user.setUser_code(code);
		
		
		
		User u1 = userService.findById(id);
		if(u1 != null) {
			return "fail-id";
		}
		
		
		User u2 = userService.findByNick(nick);
		if(u2 != null) {
			return "fail-nick";
		}
		
		
		userService.save(user);
		
		return "ok";
	}

}
