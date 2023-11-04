package com.example.dms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.dms.model.Staff;
@Repository
public interface StaffRepository extends JpaRepository<Staff, Integer>{
    @Query("select s from Staff s where username=?1 and password=?2")
	public Staff checkstafflogin(String email, String pwd);

}
