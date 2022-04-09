package com.namix.myweb.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.namix.myweb.entity.Notice;

@Mapper
public interface NoticeDao {

	@Select("select * from list where ${field} like '%${query}%' order by listId desc limit #{offset}, #{size}")
	List<Notice> getList(int offset, int size, String field, String query);
	
	Notice getNotice(int id);

}
