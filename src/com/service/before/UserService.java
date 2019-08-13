package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Tuser;


public interface UserService {
	public String login(Tuser tuser,Model model, HttpSession session);
}
