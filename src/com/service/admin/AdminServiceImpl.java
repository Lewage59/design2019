package com.service.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AdminDao;
import com.po.Auser;
import com.po.Tuser;

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDao adminDao;
	@Override
	public String login(Auser auser, Model model, HttpSession session) {
		List<Auser> list = adminDao.login(auser);
		if(list.size() > 0) {
			auser = list.get(0);
		}
		if(auser != null) {
			session.setAttribute("auser", auser);
			model.addAttribute("auser",auser);
			return "forward:/adminIndex";
		}else {
			model.addAttribute("msg", "用户名或密码错误！");
			return "admin/admin_login";
		}
	}

}
