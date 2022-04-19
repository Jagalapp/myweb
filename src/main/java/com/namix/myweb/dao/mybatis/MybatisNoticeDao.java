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
	public int addLike(int id, String userId) {
		return noticeDaoMapper.addLike(id, userId);
	}

	@Override
	public int postComment(String userId, String commentContent, int id) {
		return noticeDaoMapper.postComment(userId, commentContent, id);
	}

	@Override
	public int updateDetail(int id, String listTitle, String listContent) {
		return noticeDaoMapper.updateDetail(id, listTitle, listContent);
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

	@Override
	public int deleteComment(int cId) {
		return noticeDaoMapper.deleteComment(cId);
	}

	@Override
	public int usersLikeCheck(String userId, int id) {
		return noticeDaoMapper.usersLikeCheck(userId, id);
	}

}
