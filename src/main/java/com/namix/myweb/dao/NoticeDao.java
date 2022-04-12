package com.namix.myweb.dao;

import java.util.List;

import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.ListLike;
import com.namix.myweb.entity.Notice;

public interface NoticeDao {

	List<Notice> getList(int offset, int size, String field, String query);
	Notice getDetail(int id);
	int getCount(String field, String query);
	int getCommentCount(int id);
	int getListLike(int id);
	int updateDetail(Notice notice);
	int writeDetail(Notice notice);
	int deleteDetail(int id);
	int addLike(ListLike listLike);
	int postComment(Comment comment);
}
