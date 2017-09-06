package com.dzg.driver.model;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.dzg.driver.entity.Examing;
import com.dzg.driver.service.ExamingService;
import com.dzg.driver.service.UserService;

public class ExamThread {
    @Autowired ExamingService service;
    @Autowired UserService userService;
    public void init(){
    	new Thread(new Runnable() {
			@Override
			public void run() {
				while (true) {
					List<Examing> list=service.getExams();
					long currentLong=new Date().getTime();
					for (Examing examing:list) {
						if (currentLong>Long.parseLong(examing.getTime())+30*60*1000+10) {
							userService.addScore(examing.getId(),"0");
							service.delete(examing.getId());
						}
					}
					try {
					Thread.sleep(5000);
					} catch (Exception e) {
						e.printStackTrace();
					}
					}
			}
		}).start();
    }
}
