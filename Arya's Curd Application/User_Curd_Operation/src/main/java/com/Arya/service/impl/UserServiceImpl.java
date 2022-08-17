package com.Arya.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arya.model.User;
import com.Arya.repo.UserRepository;
import com.Arya.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	public UserRepository userRepository;

	@Override
	public User add(User user) {
		User savedUser = userRepository.save(user);
		return savedUser;
	}

	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public User findById(int id) {
		User user = userRepository.findById(id).get();
		return user;
	}

	@Override
	public User update(User user) {
		User updatedUser = userRepository.save(user);
		return updatedUser;
	}

	@Override
	public void delete(int id) {
		Optional<User> user = userRepository.findById(id);
		if(user.isPresent()) {
			userRepository.delete(user.get());
		}
	}

}




