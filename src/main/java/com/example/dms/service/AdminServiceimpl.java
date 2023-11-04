package com.example.dms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dms.model.Admin;
import com.example.dms.model.User;
import com.example.dms.repository.AdminRepository;
import com.example.dms.repository.UserRepository;
@Service
public class AdminServiceimpl implements AdminService{
	@Autowired
    public AdminRepository adminRepository;
	public UserRepository userRepository;
	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		return adminRepository.checkadminlogin(auname,apwd);
	}
	@Override
	public long usercount() {
		return userRepository.count();
	}
	@Override
	public List<User> viewlAllUsers() {
		return userRepository.findAll();
	}
	@Override
	public void deleteuser(int uid) {
		// TODO Auto-generated method stub
		
	}

}
