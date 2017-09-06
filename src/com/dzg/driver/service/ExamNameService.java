package com.dzg.driver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.ExamNameDAO;
import com.dzg.driver.entity.ExamName;

@Transactional
@Service
public class ExamNameService {
	@Autowired
	private ExamNameDAO examNameDAO;

	public List<ExamName> getExamNames(int page) {
		return examNameDAO.getExamNames(page);
	}

	public List<ExamName> getExamNames(String like) {
		return examNameDAO.getExamNamesByLike(like);
	}

	public int getMaxPage() {
		return examNameDAO.getMaxPage();
	}
}
