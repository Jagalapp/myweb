package com.namix.myweb.service;

import java.util.List;

import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.ListLike;
import com.namix.myweb.entity.Notice;

public interface NoticeService {

	// 글 리스트 요청
	List<Notice> getList();
	List<Notice> getList(String field, String query);
	List<Notice> getList(int page, String field, String query);
	// 디테일 뷰 요청
	Notice getDetail(int id);
	// 글 개수 요청
	int getCount();
	int getCount(String field, String query);
	// 댓글 개수 요청
	int getCommentCount(int id);
	// 좋아요 개수 요청
	int getListLike(int id);
	//댓글 요청
	List<Comment> getComment(int id);
	// 글 좋아요 클릭 요청
	int addLIke(ListLike listLike);
	// 댓글 등록 요청
	int postComment(String userId, String commentContent, int id);
	// 글 작성 요청
	int writeDetail(String listTitle, String listContent, String userId);
	// 유저의 가장 최근 글 요청
	int getUsersLastListId(String userId);
	// 글 수정 요청
	int updateDetail(int id, String listTitle, String listContent);
	// 글 삭제 요청
	int deleteDetail(int id);
	// 댓글 삭제 요청
	int deleteComment(int cId);

}
