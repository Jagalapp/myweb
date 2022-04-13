package com.namix.myweb.entity;

import java.util.Date;

public class Notice {

	private int listId;
	private String listTitle;
	private String listContent;
	private Date listDate;
	private int listHit;
	private String userId;
	
	public Notice() {
		
	}
	
	public Notice(int listId, String listTitle, String listContent, Date listDate, int listHit, String userId) {
		this.listId = listId;
		this.listTitle = listTitle;
		this.listContent = listContent;
		this.listDate = listDate;
		this.listHit = listHit;
		this.userId = userId;
	}
	public int getListId() {
		return listId;
	}
	public void setListId(int listId) {
		this.listId = listId;
	}
	public String getListTitle() {
		return listTitle;
	}
	public void setListTitle(String listTitle) {
		this.listTitle = listTitle;
	}
	public String getListContent() {
		return listContent;
	}
	public void setListContent(String listContent) {
		this.listContent = listContent;
	}
	public Date getListDate() {
		return listDate;
	}
	public void setListDate(Date listDate) {
		this.listDate = listDate;
	}
	public int getListHit() {
		return listHit;
	}
	public void setListHit(int listHit) {
		this.listHit = listHit;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
