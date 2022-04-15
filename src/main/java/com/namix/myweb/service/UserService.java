package com.namix.myweb.service;

import com.namix.myweb.entity.User;

public interface UserService {

	// 로그인 요청
	User login(String userId, String userPassword );
	
	// 회원가입 요청
	int reg(String regId,String regPassword,String regName,String regEmail,String regGender);
	
}
