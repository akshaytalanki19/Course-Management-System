package com.example.dms.service;

import com.example.dms.model.User;

public interface UserService {
  public String addUser(User u);
  public User checkUserlogin(String email,String pwd);

}
