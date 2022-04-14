package com.namix.myweb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.namix.myweb.entity.User;
import com.namix.myweb.script.ScriptClass;
import com.namix.myweb.service.UserService;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("login")
	public String login() {
		return "board.login";
	}
	
	@PostMapping("login")
	public void postLogin(Model model, @RequestParam("userId") String userId, HttpServletResponse response,
				@RequestParam("userPassword") String userPassword, HttpSession session) throws IOException {
		
		User user = userService.login(userId, userPassword);
		
		if(user == null) {
			ScriptClass.alert(response, "아이디나 비밀번호가 올바르지 않습니다.");
			ScriptClass.historyBack(response);
		}else {
			session.setAttribute("user", user);
			ScriptClass.alertAndMove(response, "로그인 완료", "/board/list");
		}		
	}
	
	@GetMapping("logout")
	public void logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.invalidate();
		ScriptClass.alertAndMove(response, "로그아웃 완료", "/board/list");
	}
	
	@RequestMapping("reg")
	public String reg() {
		return "board.reg";
	}
	
}
