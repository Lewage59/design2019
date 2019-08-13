package com.service.before;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.dao.UserDao;
import com.po.Tuser;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Override
	public String login(Tuser user, Model model, HttpSession session) {
		Tuser tuser = null;
		List<Tuser> list = userDao.login(user);
		if(list.size() > 0) {
			tuser = list.get(0);
		}
		if(tuser != null) {
			session.setAttribute("tuser", tuser);
			model.addAttribute("tuser", tuser);
			return "forward:/before";
		}else {
			model.addAttribute("msg", "用户名或密码错误！");
			return "before/login";
		}
	}
	
}
