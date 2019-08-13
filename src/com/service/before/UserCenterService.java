package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Pchievement;
import com.po.Tuser;

public interface UserCenterService {
	public String userCenter(HttpSession session, Model model);
	public String alterUserInfo(Tuser tuser,HttpSession session, Model model);
	public String categoryQuery(Model model, HttpSession session, Pchievement pch);
}
