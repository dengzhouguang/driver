package com.dzg.driver.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dzg.driver.entity.User;

@Repository
public class UserDAO {
	@Resource
	SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public User getUserById(String id){
		return (User) this.getSession().createQuery("from User where id=?").setParameter(0, id).uniqueResult();
	}
	@SuppressWarnings("unchecked")
	public List<User> getUsers(){
		return this.getSession().createCriteria(User.class).list();
	}
	
	public void saveUser(User user){
		this.getSession().save(user);
	}
	
	public User getUserByUsername(String username){
		return (User) this.getSession().createQuery("from User where username=?").setParameter(0, username).uniqueResult();
	}
	public void addScore(String id, String score) {
		User user=getUserById(id);
		if(user!=null){
		user.setScore(Integer.parseInt(score));
		this.getSession().update(user);
		}
	}
	public void update(User user,String username) {
		String sql="update users set id='"+user.getId()+"',username='"+user.getUsername()+"',password='"+user.getPassword()+"' where username='"+username+"';";
		this.getSession().createSQLQuery(sql).executeUpdate();
	} 
}
