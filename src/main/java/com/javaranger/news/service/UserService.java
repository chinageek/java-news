package com.javaranger.news.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaranger.news.dao.UserDao;
import com.javaranger.news.pojo.User;
@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	public UserDao getDao() {
		return dao;
	}
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	@Transactional
	public List<User> findByLimit(int limit){
		return dao.findByLimit(limit);
	}
	@Transactional
	public boolean insertUser(User user){
		dao.inseartUser(user);
		return true;
	}
	@Transactional
	public boolean deleteById(long id){
		dao.deleteById(id);
		return true;
	}
	@Transactional
	public boolean  updateUser(User user){
		dao.updateUser(user);
		return true;
	}
	@Transactional
	public List<User> findByName(String name){
		return dao.findByName(name);
	}
	@Transactional
	public User findById(long id){
		return dao.findById(id);
	}
	
}
