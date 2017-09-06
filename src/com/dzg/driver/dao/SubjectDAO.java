package com.dzg.driver.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dzg.driver.entity.Subject;

@Repository
public class SubjectDAO {
	@Resource
	SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
    
	@SuppressWarnings("unchecked")
	public List<Subject> getSubjects(int id) {
		return this.getSession().createCriteria(Subject.class).list();
	}
	@SuppressWarnings("unchecked")
	public List<Subject> getSubjects(int id,int count){
		return this.getSession().createQuery("from Subject where id>?").setParameter(0, id).setMaxResults(count).list();
	}
	public void addSubject(Subject subject){
		this.getSession().save(subject);
	}
	 
	public void deleteSubject(Subject subject){
		this.getSession().delete(subject);
	}
	
	public void updateSubject(Subject subject){
		this.getSession().update(subject);
	}
	public void deleteSubjectByID(int id){
		this.getSession().createQuery("delete Subject where id=?").setParameter(0, id).executeUpdate();
	}
	public void getSubjectByID(int id){
		this.getSession().createQuery("from Subject where id=?").setParameter(0, id).uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<Subject> getSubjects(String exam,Integer page){
		exam=exam.replace("exam", "");
		List<Subject> list=this.getSession().createQuery("from Subject"+exam+" where 1=1").list();
		if (page==null||"".equals(page)) {
			return list.subList(0, 20);
		}
		return list.subList((page.intValue()-1)*20,(page.intValue())*20);
	}

	public Integer getMaxIndex(String exam) {
		exam=exam.replace("exam", "");
		return new Integer(this.getSession().createQuery("from Subject"+exam+" where 1=1").list().size()/20);
	}
}
