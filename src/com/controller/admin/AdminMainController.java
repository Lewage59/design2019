package com.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Auser;
import com.po.Tuser;
import com.service.admin.AdminMainService;
import com.service.admin.AdminService;

@Controller
public class AdminMainController {
	@Autowired
	private AdminMainService adminMainService;
	
	@RequestMapping("/adminIndex")
	public String main(@ModelAttribute Auser auser, Model model, HttpSession session) {
		return adminMainService.mainCenter(auser, model, session);
	}
	/**
	 * �鿴����
	 */
	@RequestMapping("/AcategoryQueryAll")
	public String categoryQueryAll(Model model, HttpSession session,String category) {
		return adminMainService.AcategoryQueryAll(model, session, category);
	}
	/**
	 * �鿴ȫ����ʦ
	 */
	@RequestMapping("/showTeacherAll")
	public String showTeacherAll(Model model, HttpSession session) {
		return adminMainService.showTeacherAll(model, session);
	}
	/**
	 * ��ʼ����ӽ�ʦ
	 */
	@RequestMapping("/teacherInit")
	public String teacherInit(Model model, HttpSession session) {
		return "admin/user_add";
	}
	
	/**
	 * �����ʦ
	 */
	@RequestMapping("/addTeacher")
	public String addTeacher(Model model, HttpSession session,Tuser tuser) {
		return adminMainService.addTeacher(model, session,tuser);
	}
	
}
