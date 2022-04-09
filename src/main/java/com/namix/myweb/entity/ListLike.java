package com.namix.myweb.entity;

public class ListLike {

	private int listLikeId;
	private int listId;
	private String userId;
	
	public ListLike() {
		
	}

	public ListLike(int listLikeId, int listId, String userId) {
		super();
		this.listLikeId = listLikeId;
		this.listId = listId;
		this.userId = userId;
	}

	public int getListLikeId() {
		return listLikeId;
	}

	public void setListLikeId(int listLikeId) {
		this.listLikeId = listLikeId;
	}

	public int getListId() {
		return listId;
	}

	public void setListId(int listId) {
		this.listId = listId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
