package com.example.dms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dms.model.Staff;
import com.example.dms.repository.StaffRepository;
@Service
public class StaffServiceimpl implements StaffService{
    @Autowired
    private StaffRepository staffRepository;
	@Override
	public Staff checkStafflogin(String email, String pwd) {
		return staffRepository.checkstafflogin(email,pwd);
	}

}
