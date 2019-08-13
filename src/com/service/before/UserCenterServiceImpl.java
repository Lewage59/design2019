package com.service.before;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.UserCenterDao;
import com.po.Pchievement;
import com.po.Tuser;
import com.util.MyUtil;

@Service("userCenterService")
@Transactional
public class UserCenterServiceImpl implements UserCenterService{

	@Autowired
	private UserCenterDao userCenterDao;
	
	/*
	 * 用户中心
	 */
	@Override
	public String userCenter(HttpSession session, Model model) {
		int tid = MyUtil.getUserId(session);		
		int Sum = userCenterDao.allResults(tid);
		int Ex = userCenterDao.Audited(tid);
		int Uex = userCenterDao.notAudited(tid);
		model.addAttribute("Ex", Ex);
		model.addAttribute("Uex", Uex);
		model.addAttribute("Sum", Sum);
		model.addAttribute("userCenter", userCenterDao.userCenter(MyUtil.getUserId(session)));

		return "before/myCenter";
	}
	/*
	 * 修改用户信息
	 */
	@Override
	public String alterUserInfo(Tuser tuser,HttpSession session, Model model) {
		userCenterDao.alterInfo(tuser);
		String msg = "修改成功";
		model.addAttribute("msg",msg);
		return "forward:/userCenter";
	}
	/*
	 * 分类查询
	 */
	@Override
	public String categoryQuery(Model model, HttpSession session, Pchievement pch) {

		pch.setTid(MyUtil.getUserId(session));
		String tname = MyUtil.getUserName(session);
		List<Map<String, Object>> list;		
		String category;
		switch (pch.getCategory()) {
		case "论文":
			list = userCenterDao.paperQuery(MyUtil.getUserId(session));
			category = "paper";
			break;
		case "立项":
			list =  userCenterDao.projectQuery(MyUtil.getUserId(session));
			category = "project";
			break;
		case "专利":
			list = userCenterDao.patentQuery(MyUtil.getUserId(session));
			category = "patent";
			break;
		case "著作":
			list = userCenterDao.workQuery(MyUtil.getUserId(session));
			category = "worksMaterial";
			break;
		default:
			list = userCenterDao.achieveQuery(MyUtil.getUserId(session));
			category = "achievements";
			break;
		}
		
		
		
		model.addAttribute("obj",list);
		model.addAttribute("Ucategory",category);
		model.addAttribute("tname",tname);
		return "before/gainCenter";
	}
	
}
