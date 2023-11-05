package com.example.dms.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dms.model.Admin;
import com.example.dms.model.User;
import com.example.dms.repository.AdminRepository;
import com.example.dms.repository.UserRepository;

@Service
public class AdminServiceimpl implements AdminService{
	private final AdminRepository adminRepository;
    private final UserRepository userRepository;

    @Autowired
    public AdminServiceimpl(AdminRepository adminRepository, UserRepository userRepository) {
        this.adminRepository = adminRepository;
        this.userRepository = userRepository;
    }
	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		return adminRepository.checkadminlogin(auname,apwd);
	}
	@Override
	public long usercount() {
		return userRepository.count();
	}
	@Override
	public List<User> viewUsers() {
		return userRepository.findAll();
	}
	@Override
	public void deleteuser(int uid) {
		
		Optional<User> obj=userRepository.findById(uid);
		if(obj.isPresent())
		{
			User u=obj.get();
			userRepository.delete(uid);
		}
		
	}
	@Override
	public User viewempbyid(int uid) {
    Optional<User> obj = userRepository.findById(uid);    
	    
	    if(obj.isPresent())
	    {
	       User user = obj.get();
	      return user;
	    }
	    else
	    {
	      return null;
	    }
	}

}
