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
	List<Comment> getComment(int id);
	int addLike(ListLike listLike);
	int postComment(Comment comment);
	int updateDetail(int id, String listTitle, String listContent);
	int writeDetail(String listTitle, String listContent, String userId);
	int getUsersLastListId(String userId);
	int deleteDetail(int id);
}
