package com.dao;

import com.pojo.User;

public interface UserDao 
{
	public void add(User user);
	public String getPassword(String username);
}
