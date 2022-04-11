package com.namix.myweb.dao;

import com.namix.myweb.entity.User;

public interface UserDao {

	int login(User user);
	int reg(User user);	
	
}
