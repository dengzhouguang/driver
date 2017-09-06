package com.dzg.driver.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.ExerciseDAO;
import com.dzg.driver.entity.Exercise;

@Transactional
@Service
public class ExerciseService {
	@Autowired
	private ExerciseDAO exerciseDAO;

	public List<Exercise> getExercises(int startId, int count) {
		return exerciseDAO.getExercises(startId, count);
	}

	public List<Exercise> getExercises() {
		return exerciseDAO.getExercises();

	}
}
