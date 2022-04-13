package com.namix.myweb.dao;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;

import com.namix.myweb.entity.User;

@AutoConfigureTestDatabase(replace = Replace.NONE)
@MybatisTest
class UserDaoTest {
	
	@Autowired
	private UserDao userDao;

	@Test
	void test() {
		System.out.println("hello");
		
		User user = new User();
	}

}
