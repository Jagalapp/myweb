package com.namix.myweb.dao;

import java.util.List;

import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.Notice;
import com.namix.myweb.entity.NoticeView;

public interface NoticeDao {

	List<NoticeView> getList(int offset, int size, String field, String query);
	NoticeView getDetail(int id);
	int getCount(String field, String query);
	int getCommentCount(int id);
	int getListLike(int id);
	List<Comment> getComment(int id);
	int addLike(int id, String userId);
	int postComment(String userId, String commentContent, int id);
	int updateDetail(int id, String listTitle, String listContent);
	int writeDetail(String listTitle, String listContent, String userId);
	int getUsersLastListId(String userId);
	int deleteDetail(int id);
	int deleteComment(int cId);
	int usersLikeCheck(String userId, int id);
	int addHit(int id);
	Notice getPrevDetail(Integer id);
	Notice getNextDetail(Integer id);
}
