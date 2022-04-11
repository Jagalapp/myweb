package com.namix.myweb.service;

import com.namix.myweb.entity.User;

public interface UserService {

	// 로그인 요청
	int login(User user);
	
	// 회원가입 요청
	int reg(User user);
	
}
