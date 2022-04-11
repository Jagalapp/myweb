package com.namix.myweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.namix.myweb.entity.Notice;
import com.namix.myweb.service.NoticeService;
import com.namix.myweb.service.UserService;

@Controller("boardCotroller")
@RequestMapping("/board/")
public class boardController {
	
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private UserService userService;

	@RequestMapping("list")
	public String list(Model model) {
		
		int page = 1;
		String field = "listTitle";
		String query = "";
		
		List<Notice> list = noticeService.getList();
		
		model.addAttribute("list", list);
		
		return "board.list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		
		Notice notice = noticeService.getDetail(3);
		
		return "board.detail";
	}
	
	@RequestMapping("login")
	public String login() {
		return "board.login";
	}
	
	@RequestMapping("reg")
	public String reg() {
		return "board.reg";
	}
	
	@RequestMapping("updateDetail")
	public String updateDetail() {
		return "board.updateDetail";
	}
	
	@RequestMapping("writeDetail")
	public String writeDetail() {
		return "board.writeDetail";
	}
	
}
