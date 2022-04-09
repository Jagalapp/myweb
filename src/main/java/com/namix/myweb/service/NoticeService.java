package com.namix.myweb.service;

import java.util.List;

import com.namix.myweb.entity.Notice;

public interface NoticeService {

	List<Notice> getList(int page, String field, String query);

	Notice getNotice(int id);

}
