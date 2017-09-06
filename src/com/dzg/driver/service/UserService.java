package com.dzg.driver.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.UserDAO;
import com.dzg.driver.entity.User;

@Transactional
@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;

	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	public User getUserById(String id) {
		return userDAO.getUserById(id);
	}
	public User getUserByUsername(String username){
		return userDAO.getUserByUsername(username);
	}
	public void saveUser(User user){
		userDAO.saveUser(user);
	}
    public void update(User user,String username) {
		userDAO.update(user,username);
	}
	public void addScore(String id,String score) {
		userDAO.addScore(id,score);
	}

}
