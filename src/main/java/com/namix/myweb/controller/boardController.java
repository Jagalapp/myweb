package com.namix.myweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("boardCotroller")
@RequestMapping("/board/")
public class boardController {

	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("test", "hellohello");
		return "board/list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		return "board/detail";
	}
	
	@RequestMapping("login")
	public String login() {
		return "board/login";
	}
	
	@RequestMapping("reg")
	public String reg() {
		return "board/reg";
	}
	
	@RequestMapping("updateDetail")
	public String updateDetail() {
		return "board/updateDetail";
	}
	
	@RequestMapping("writeDetail")
	public String writeDetail() {
		return "board/writeDetail";
	}
	
}
