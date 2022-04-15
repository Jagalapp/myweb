package com.namix.myweb.dao;

import com.namix.myweb.entity.User;

public interface UserDao {

	User login(String userId, String userPassword);
	int reg(String regId,String regPassword,String regName,String regEmail,String regGender);	
	
}
