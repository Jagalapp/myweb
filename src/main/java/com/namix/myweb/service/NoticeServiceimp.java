package com.namix.myweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namix.myweb.dao.NoticeDao;
import com.namix.myweb.entity.Notice;

@Service
public class NoticeServiceimp implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<Notice> getList(int page , String field, String query) {
		
		int size = 10;
		int offset = 0+(page-1)*size;
		
		List<Notice> list = noticeDao.getList(offset, size, field, query);
		
		return list;
	}

	@Override
	public Notice getNotice(int id) {

		Notice notice = noticeDao.getNotice(id);
		
		return notice;
	}

}
