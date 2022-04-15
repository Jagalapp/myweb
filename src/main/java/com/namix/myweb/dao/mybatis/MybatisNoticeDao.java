package com.namix.myweb.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.namix.myweb.dao.NoticeDao;
import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.ListLike;
import com.namix.myweb.entity.Notice;

@Repository
public class MybatisNoticeDao implements NoticeDao {

	private NoticeDao noticeDaoMapper;
	
	@Autowired
	public MybatisNoticeDao(SqlSession sqlSession) {
		noticeDaoMapper = sqlSession.getMapper(NoticeDao.class);		
	}
	
	@Override
	public List<Notice> getList(int offset, int size, String field, String query) {
		return noticeDaoMapper.getList(offset, size, field, query);
	}

	@Override
	public Notice getDetail(int id) {
		return noticeDaoMapper.getDetail(id);
	}

	@Override
	public int getCount(String field, String query) {
		return noticeDaoMapper.getCount(field, query);
	}
	
	@Override
	public int getCommentCount(int id) {
		return noticeDaoMapper.getCommentCount(id);
	}

	@Override
	public int getListLike(int id) {
		return noticeDaoMapper.getListLike(id);
	}
	
	@Override
	public List<Comment> getComment(int id) {
		return noticeDaoMapper.getComment(id);
	}

	@Override
	public int addLike(ListLike listLike) {
		return noticeDaoMapper.addLike(listLike);
	}

	@Override
	public int postComment(Comment comment) {
		return noticeDaoMapper.postComment(comment);
	}

	@Override
	public int updateDetail(Notice notice) {
		return noticeDaoMapper.updateDetail(notice);
	}

	@Override
	public int writeDetail(String listTitle, String listContent, String userId) {
		return noticeDaoMapper.writeDetail(listTitle, listContent, userId);
	}

	@Override
	public int getUsersLastListId(String userId) {
		return noticeDaoMapper.getUsersLastListId(userId);
	}
	
	@Override
	public int deleteDetail(int id) {
		return noticeDaoMapper.deleteDetail(id);
	}

}
