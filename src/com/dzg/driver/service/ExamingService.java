package com.dzg.driver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.ExamingDAO;
import com.dzg.driver.entity.Examing;

@Transactional
@Service
public class ExamingService {
	@Autowired
	private ExamingDAO examingDAO;
	public void saveExaming(Examing examing){
		examingDAO.saveExaming(examing);
	}
	public void update(Examing examing,String id){
		examingDAO.updata(examing, id);
	}
	public Examing query(String id){
		return examingDAO.query(id);
	}
	public void delete(String  id){
		examingDAO.delete(id);
	}
	public List<Examing> getExams(){
		return examingDAO.getExamings();
	}
	public void updataIdById(String id,String oldId){
		examingDAO.updataIdById(id,oldId);
	}
}
