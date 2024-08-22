package com.my.rms_final.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.rms_final.dao.UserDao;
import com.my.rms_final.vo.User;

@Service
public class UserService {

	
	@Autowired
	UserDao userDao;
	
	
	public List<User> findAll() {
		return userDao.findAll();
	}
	
	
	public User findByIdAndPw(User user) {
		return userDao.findByIdAndPw(user);
	}
	
	public User findById(String id) {
		return userDao.findById(id);
	}
	
	public User findByNick(String nick) {
		return userDao.findByNick(nick);
	}
	
	public int save(User u) {
		return userDao.save(u);
	}
	
}
