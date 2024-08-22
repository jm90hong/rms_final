package com.my.rms_final.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.rms_final.vo.User;

@Repository
public class UserDao {

	
	@Autowired
	SqlSession s;
	
	public List<User> findAll() {
		return s.selectList("UserMapper.findAll");
	}
	
	
	public User findByIdAndPw(User user) {
		return s.selectOne("UserMapper.findByIdAndPw",user);
	}
	
	public User findById(String id) {
		return s.selectOne("UserMapper.findById",id);
	}
	
	public User findByNick(String nick) {
		return s.selectOne("UserMapper.findByNick",nick);
	}
	
	
	public int save(User u) {
		return s.insert("UserMapper.save",u);
	}
}
