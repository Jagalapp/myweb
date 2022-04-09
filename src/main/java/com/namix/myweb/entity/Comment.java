package com.namix.myweb.entity;

import java.util.Date;

public class Comment {

	private int commentId;
	private String commentContent;
	private Date commentDate;
	private String userId;
	private int listId;
	
	private Comment() {
		
	}

	public Comment(int commentId, String commentContent, Date commentDate, String userId, int listId) {
		super();
		this.commentId = commentId;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.userId = userId;
		this.listId = listId;
	}

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getListId() {
		return listId;
	}

	public void setListId(int listId) {
		this.listId = listId;
	}
	
}
