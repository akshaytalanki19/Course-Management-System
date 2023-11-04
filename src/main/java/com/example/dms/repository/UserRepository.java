package com.example.dms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.dms.model.User;

import jakarta.transaction.Transactional;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	
	@Query("select u from User u where email=?1 and password=?2")
	public User checkUserlogin(String email,String pwd);
	
	@Query("SELECT COUNT(u) FROM User u")
    public long countUsers();
	
	@Query("select u from User u")
	public List<User> findAll();
	
	@Query("select u from User u where id=?1")
	public List<User> findById(int id);
}
