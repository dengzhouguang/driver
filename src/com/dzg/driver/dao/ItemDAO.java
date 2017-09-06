package com.dzg.driver.dao;

import java.util.Comparator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dzg.driver.entity.Item;

@Repository
public class ItemDAO {
	@Resource
	SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
    public List<Item> getItems(String DBName){
        String sql="select * from "+DBName+";";
        SQLQuery query= this.getSession().createSQLQuery(sql).addEntity(Item.class);
        @SuppressWarnings("unchecked")
		List<Item> list=query.list();
        list.sort(new Comparator<Item>() {
			@Override
			public int compare(Item o1, Item o2) {
				return Integer.parseInt(o1.getNum())-Integer.parseInt(o2.getNum()); 
			}
		});
		return list;
    }
}
