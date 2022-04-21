package com.namix.myweb.dao;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;

import com.namix.myweb.entity.NoticeView;

@AutoConfigureTestDatabase(replace = Replace.NONE)
@MybatisTest
class NoticeDaoTest {

	@Autowired
	private NoticeDao noticeDao;
	
	@Test
	void test() {
		System.out.println("hello");
		
		List<NoticeView> list = noticeDao.getList(1, 1, "listTitle", "");
		
		System.out.println(list.get(0));
	}

}
