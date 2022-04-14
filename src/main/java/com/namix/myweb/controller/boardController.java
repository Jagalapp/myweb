package com.namix.myweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.Notice;
import com.namix.myweb.service.NoticeService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;

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
	
	@GetMapping("detail")
	public String detail(Model model, @RequestParam("id") Integer id) {
		
		  Notice notice = noticeService.getDetail(id);
		  int commentCount = noticeService.getCommentCount(id);
		  int listLike = noticeService.getListLike(id);
		  List<Comment> comment = noticeService.getComment(id);
		  
		  model.addAttribute("n", notice);
		  model.addAttribute("commentCount", commentCount);
		  model.addAttribute("listLike", listLike);
		  model.addAttribute("comment", comment);
		
		return "board.detail";
	}
	
	@PostMapping("detail")
	public String postComment(Model model, @RequestParam("id") Integer id,
				@RequestParam("commentContent") String commentContent) {
		
		return "board.detail";
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
