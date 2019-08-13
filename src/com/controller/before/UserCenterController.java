package com.controller.before;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.po.Pchievement;
import com.po.Tuser;
import com.service.before.UserCenterService;



@Controller
public class UserCenterController{
	@Autowired
	private UserCenterService userCenterService;
	/*
	 * 个人信息查询
	 */
	@RequestMapping("/userCenter")
	public String userCenter(HttpSession session, Model model) {
		return userCenterService.userCenter(session, model);
	}
	/*
	 * 修改个人信息
	 */
	@RequestMapping("/alterUserInfo")
	public String alterUserInfo(Tuser tuser,HttpSession session, Model model) {
		return userCenterService.alterUserInfo(tuser,session, model);
	}
	/*
	 * 我的成果
	 */
	@RequestMapping("/myGain")
	public String myGain(Tuser tuser,HttpSession session, Model model) {
		return "before/gainCenter";
	}
	/*
	 * 个人信息内分类查询
	 */
	@RequestMapping("/categoryQuery")
	public String categoryQuery(Model model, HttpSession session, Pchievement pch) {
		return userCenterService.categoryQuery(model, session, pch);
	}
}
