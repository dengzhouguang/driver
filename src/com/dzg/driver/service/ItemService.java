package com.dzg.driver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dzg.driver.dao.ItemDAO;
import com.dzg.driver.entity.Item;

@Transactional
@Service
public class ItemService {
@Autowired
private ItemDAO itemDAO;
public List<Item> getItems(String DBName){
	return itemDAO.getItems(DBName);
}

}
