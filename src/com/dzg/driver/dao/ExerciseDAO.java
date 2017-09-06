package com.dzg.driver.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dzg.driver.entity.Exercise;

@Repository
public class ExerciseDAO {
	@Resource
	private SessionFactory sessionFactory;
    private Session getSession(){
    	return sessionFactory.getCurrentSession();
    }
	@SuppressWarnings("unchecked")
	public List<Exercise> getExercises() {
		return this.getSession().createCriteria(Exercise.class).list();
	}
	@SuppressWarnings("unchecked")
	public List<Exercise> getExercises(int startid,int count){
		return this.getSession().createQuery("from Exercise where id>?").setParameter(0, startid).setMaxResults(count).list();
	}
}
