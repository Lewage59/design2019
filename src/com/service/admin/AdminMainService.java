package com.service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Auser;
import com.po.Tuser;

public interface AdminMainService {
	public String mainCenter(Auser auser, Model model, HttpSession session);
	public String AcategoryQueryAll(Model model, HttpSession session,String category);
	public String showTeacherAll(Model model, HttpSession session);
	public String addTeacher(Model model, HttpSession session,Tuser tuser);
}
