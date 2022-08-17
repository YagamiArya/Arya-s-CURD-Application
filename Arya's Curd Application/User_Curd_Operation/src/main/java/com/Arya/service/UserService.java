package com.Arya.service;

import java.util.List;

import com.Arya.model.User;

public interface UserService {
	
	User add(User user);
	
	List<User> findAll();
	
	User findById(int id);
	
	User update(User user);
	
	void delete(int id);

}
