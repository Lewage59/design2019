package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.po.Tuser;
import com.service.before.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	public UserService userService;
	/**
	 * ´¦ÀíµÇÂ¼
	 */
	@RequestMapping("/login")
	public String login(@ModelAttribute Tuser tuser, HttpSession session, Model model){
		return userService.login(tuser, model, session);
	}
	
}
