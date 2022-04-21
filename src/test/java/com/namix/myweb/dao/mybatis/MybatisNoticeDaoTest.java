package com.namix.myweb.dao.mybatis;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.namix.myweb.dao.NoticeDao;
import com.namix.myweb.entity.NoticeView;

@SpringBootTest
class MybatisNoticeDaoTest {

	@Autowired
	private NoticeDao noticeDao;
	
	@Test
	void test() {
		List<NoticeView> list = noticeDao.getList(0, 1, "listtitle", "");
		System.out.println(list.get(0));
	}

}
