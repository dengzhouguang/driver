package com.dzg.driver.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dzg.driver.entity.Subject;
import com.dzg.driver.service.SubjectService;

@Controller
@RequestMapping(value = "/exam")
public class SubjectController {
	@Autowired
	private SubjectService service;
	@RequestMapping(value = "/{exam}/{page}")
	public String getSubjectsFromExam1(@PathVariable("exam") String exam, @PathVariable("page") Integer page,
			Map<String, List<Subject>> subjects, Model model) {
		List<Subject> list = service.getSubjects(exam, page);
		Integer maxInteger = service.getMaxIndex(exam);
		subjects.put("list", list);
		for (int i = 0; i < list.size(); i++)
			if (((Subject) list.get(i)).getOption3().contains("null")) {
				((Subject) list.get(i)).setOption3(null);
			};
		model.addAttribute("exam", exam.replace("exam", ""));
		model.addAttribute("page", page);
		model.addAttribute("maxIndex", maxInteger);
		return "practice";
	}
}
