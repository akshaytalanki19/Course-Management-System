package com.example.dms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dms.model.User;
import com.example.dms.repository.UserRepository;
@Service
public class USerServiceImpl implements UserService{
   @Autowired
	private UserRepository userRepository;
	@Override
	public String addUser(User u) {
		userRepository.save(u);
		return null;
	}
	@Override
	public User checkUserlogin(String email,String pwd) {
		
		return userRepository.checkUserlogin(email,pwd);
	}

}
