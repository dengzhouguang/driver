package com.dzg.driver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.SubjectDAO;
import com.dzg.driver.entity.Subject;

@Transactional
@Service
public class SubjectService {
	@Autowired
	private SubjectDAO subjectDAO;
    
	public List<Subject> getSubjects(int id, int count) {
		return subjectDAO.getSubjects(id, count);
	}
	public List<Subject> getSubjects(String exam,Integer page){
		return subjectDAO.getSubjects(exam,page);
	}
	public Integer getMaxIndex(String exam){
		return subjectDAO.getMaxIndex(exam);
		
	}
}
