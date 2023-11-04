package com.example.dms.service;

import java.util.List;

import com.example.dms.model.Admin;
import com.example.dms.model.User;

public interface AdminService
{
  public Admin checkadminlogin(String auname,String apwd);
  public long usercount();
  public List<User> viewlAllUsers();
  public void deleteuser(int uid);

}
