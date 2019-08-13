package com.service.before;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Wmaterial;


public interface RegisterService {
	public String worksMaterialRegister(HttpSession session, HttpServletRequest request,Wmaterial obj);
	public String patentRegister(HttpSession session, HttpServletRequest request,Patent obj);
	public String paperRegister(HttpSession session, HttpServletRequest request,Paper obj);
	public String achieveRegister(HttpSession session, HttpServletRequest request,Achievements obj);
	public String projectRegister(HttpSession session, HttpServletRequest request,Project obj);
}
