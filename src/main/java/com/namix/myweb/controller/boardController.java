package com.namix.myweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.namix.myweb.entity.Notice;
import com.namix.myweb.service.NoticeService;
import com.namix.myweb.service.UserService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private UserService userService;

	@GetMapping("list")
	public String list(Model model, @RequestParam(value="p", defaultValue="1") Integer page,
			 @RequestParam(value="f", defaultValue="listTitle") String field,
	 			@RequestParam(value="q", defaultValue="") String query){
		
		List<Notice> list = noticeService.getList(page, field, query);
		int count = noticeService.getCount(field, query);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board.list";
	}
	
	@RequestMapping("detail")
	public String detail(Model model, @RequestParam("id") Integer id) {
		
		
		/*
		 * Notice notice = noticeService.getDetail(17);
		 * 
		 * model.addAttribute("n", notice);
		 */
		 
		
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
