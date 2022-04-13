package com.namix.myweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namix.myweb.dao.NoticeDao;
import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.ListLike;
import com.namix.myweb.entity.Notice;

@Service
public class NoticeServiceimp implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	// 글 리스트 요청
	@Override
	public List<Notice> getList() {
		return getList(1, "listTitle", "");
	}
	@Override
	public List<Notice> getList(String field, String query) {
		return getList(1, field, query);
	}
	@Override
	public List<Notice> getList(int page , String field, String query) {
		
		int size = 10;
		int offset = 0+(page-1)*size;
		
		List<Notice> list = noticeDao.getList(offset, size, field, query);
		
		return list;
	}
	
	// 디테일 뷰 요청
	@Override
	public Notice getDetail(int id) {
		
		Notice notice = noticeDao.getDetail(id);
		
		return notice;
	}
	
	// 글 개수 요청
	@Override
	public int getCount() {
		return getCount("title", "");
	}
	@Override
	public int getCount(String field, String query) {
		return noticeDao.getCount(field, query);
	}
	
	// 댓글 개수 요청
	@Override
	public int getCommentCount(int id) {
		return noticeDao.getCommentCount(id);
	}
	
	// 좋아요 개수 요청
	@Override
	public int getListLike(int id) {
		return noticeDao.getListLike(id);
	}
	
	// 댓글 요청
	@Override
	public List<Comment> getComment(int id) {
		return noticeDao.getComment(id);
	}
	
	// 좋아요 클릭 요청
	@Override
	public int addLIke(ListLike listLike) {
		return noticeDao.addLike(listLike);
	}

	// 댓글 작성 요청
	@Override
	public int postComment(Comment comment) {
		return noticeDao.postComment(comment);
	}

	// 글 작성 요청
	@Override
	public int writeDetail(Notice notice) {
		return noticeDao.writeDetail(notice);
	}

	// 글 수정 요청
	@Override
	public int updateDetail(Notice notice) {
		return noticeDao.updateDetail(notice);
	}

	// 글 삭제 요청
	@Override
	public int deleteDetail(int id) {
		return noticeDao.deleteDetail(id);
	}

}
