package com.service.admin;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AdminMainDao;
import com.po.Auser;
import com.po.Tuser;
import com.util.MyUtil;

@Service("adminMainService")
@Transactional
public class AdminMainServiceImpl implements AdminMainService{
	@Autowired
	private AdminMainDao adminMainDao;	

	@Override
	public String mainCenter(Auser auser, Model model, HttpSession session) {
		int Tsum = adminMainDao.allTeacher();		
		int Sum = adminMainDao.allResults();
		int Ex = adminMainDao.Audited();
		int Uex = adminMainDao.notAudited();
		model.addAttribute("Aex", Ex);
		model.addAttribute("Auex", Uex);
		model.addAttribute("Asum", Sum);
		model.addAttribute("Atsum", Tsum);
		return "admin/admin_index";
	}
	@Override
	public String AcategoryQueryAll(Model model, HttpSession session, String category) {
		List<Map<String, Object>> list;	
		String tname;
		switch (category) {
		case "论文":
			list = adminMainDao.paperQueryAll();
			category = "paper";
			break;
		case "立项":
			list =  adminMainDao.projectQueryAll();
			category = "project";
			break;
		case "专利":
			list = adminMainDao.patentQueryAll();
			category = "patent";
			break;
		case "著作":
			list = adminMainDao.workQueryAll();
			category = "worksMaterial";
			break;
		default:
			list = adminMainDao.achieveQueryAll();
			category = "achievements";
			break;
		}
		model.addAttribute("AqueryAll",list);
		model.addAttribute("AAcategory",category);
		return "admin/gain_manage";
	}
	@Override
	public String showTeacherAll(Model model, HttpSession session){
		List<Map<String, Object>> list;	
		list = adminMainDao.showTeacherAll();
		model.addAttribute("TuserAll",list);
		return "admin/user_manage";
	}
	@Override
	public String addTeacher(Model model, HttpSession session,Tuser tuser){
		adminMainDao.addTeacher(tuser);
		return "forward:/showTeacherAll";
	}
}
