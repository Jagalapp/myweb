package com.namix.myweb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.namix.myweb.entity.Comment;
import com.namix.myweb.entity.Notice;
import com.namix.myweb.entity.User;
import com.namix.myweb.script.ScriptClass;
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
	
	@GetMapping("login")
	public String login() {
		return "board.login";
	}
	
	@PostMapping("login")
	public String postLogin(Model model, @RequestParam("userId") String userId, HttpServletResponse response,
				@RequestParam("userPassword") String userPassword, HttpSession session) throws IOException {
		
		User user = userService.login(userId, userPassword);
		
		if(user == null) {
			ScriptClass.alert(response, "아이디 혹은 비밀번호가 올바르지 않습니다.");
			return "redirect:login";
		}else {
			ScriptClass.alert(response, "로그인 성공");
			session.setAttribute("user", user);
			return "redirect:list";
		}		
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
