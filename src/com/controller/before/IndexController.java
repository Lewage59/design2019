package com.controller.before;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.service.before.IndexService;


@Controller
@RequestMapping
public class IndexController {
	@Autowired
	private IndexService indexService;
	/**
	 * 转到首页
	 */
	@RequestMapping("/before")
	public String before(Model model, HttpSession session) {
		return indexService.before(model, session);
	}
	/**
	 * 登录界面
	 */
	@RequestMapping("/login")
	public String login(Model model) {
		return indexService.login(model);
	}
	/**
	 * 查看分类
	 */
	@RequestMapping("/categoryQueryAll")
	public String categoryQueryAll(Model model, HttpSession session,String category) {
		return indexService.categoryQueryAll(model, session, category);
	}
	/**
	 * 转到查看详情页
	 */
	@RequestMapping("/Detail")
	public String detail(Model model,int id,String category) {
		return indexService.detail(model, id, category);
	}
}
