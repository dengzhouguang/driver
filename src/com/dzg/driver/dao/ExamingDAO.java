package com.dzg.driver.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.dzg.driver.entity.Examing;

@Repository
public class ExamingDAO {
	@Resource
	SessionFactory sessionFactory;
	public org.hibernate.Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public Examing query(String id){
		return (Examing) this.getSession().createQuery("from Examing where id=?").setParameter(0, id).uniqueResult();
	}
	public void saveExaming(Examing examing){
		this.getSession().save(examing);
	}
	public void updata(Examing examing ,String id){
		String sql="update examing set id='"+examing.getId()+"',examid='"+examing.getExamId()+"',time='"+examing.getTime()+"' where id='"+id+"';";
		this.getSession().createSQLQuery(sql).executeUpdate();
	}
	public void updataIdById(String id ,String oldid){
		String sql="update examing set id='"+id+"' where id='"+oldid+"';";
		this.getSession().createSQLQuery(sql).executeUpdate();
	}
	public void delete(String id){
		this.getSession().delete(query(id));
	}
	@SuppressWarnings("unchecked")
	public List<Examing> getExamings(){
		return this.getSession().createCriteria(Examing.class).list();
	}
}
