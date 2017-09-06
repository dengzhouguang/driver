package com.dzg.driver.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dzg.driver.entity.ExamName;

@Repository
public class ExamNameDAO {
	@Resource
	SessionFactory sessionFactory;
	public org.hibernate.Session getSession(){
		return sessionFactory.getCurrentSession();
	}
    @SuppressWarnings("unchecked")
	public List<ExamName> getExamNames(int page){
    List<ExamName>list=this.getSession().createCriteria(ExamName.class).list();
    list=list.subList((page-1)*50, page*50);
	return  list;
    }
	@SuppressWarnings("unchecked")
	public List<ExamName> getExamNamesByLike(String like) {
		return this.getSession().createQuery("FROM  ExamName AS t WHERE t.name LIKE ?").setParameter(0,"%"+like+"%").list();
	}
	public int getMaxPage(){
		@SuppressWarnings("unchecked")
		List<ExamName>list=this.getSession().createCriteria(ExamName.class).list();
		return list.size()/50;
	}
}
