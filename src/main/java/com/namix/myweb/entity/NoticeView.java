package com.namix.myweb.entity;

public class NoticeView extends Notice{
	
	private int commentNumber;
	private int likeNumber;
	
	public NoticeView() {
		
	}
	
	public NoticeView(int commentNumber, int likeNumber) {
		this.commentNumber = commentNumber;
		this.likeNumber = likeNumber;
	}

	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public int getLikeNumber() {
		return likeNumber;
	}

	public void setLikeNumber(int likeNumber) {
		this.likeNumber = likeNumber;
	}
	
	
	
}
