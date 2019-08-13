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
	 * ������Ϣ��ѯ
	 */
	@RequestMapping("/userCenter")
	public String userCenter(HttpSession session, Model model) {
		return userCenterService.userCenter(session, model);
	}
	/*
	 * �޸ĸ�����Ϣ
	 */
	@RequestMapping("/alterUserInfo")
	public String alterUserInfo(Tuser tuser,HttpSession session, Model model) {
		return userCenterService.alterUserInfo(tuser,session, model);
	}
	/*
	 * �ҵĳɹ�
	 */
	@RequestMapping("/myGain")
	public String myGain(Tuser tuser,HttpSession session, Model model) {
		return "before/gainCenter";
	}
	/*
	 * ������Ϣ�ڷ����ѯ
	 */
	@RequestMapping("/categoryQuery")
	public String categoryQuery(Model model, HttpSession session, Pchievement pch) {
		return userCenterService.categoryQuery(model, session, pch);
	}
}
