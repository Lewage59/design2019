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
	 * ת����ҳ
	 */
	@RequestMapping("/before")
	public String before(Model model, HttpSession session) {
		return indexService.before(model, session);
	}
	/**
	 * ��¼����
	 */
	@RequestMapping("/login")
	public String login(Model model) {
		return indexService.login(model);
	}
	/**
	 * �鿴����
	 */
	@RequestMapping("/categoryQueryAll")
	public String categoryQueryAll(Model model, HttpSession session,String category) {
		return indexService.categoryQueryAll(model, session, category);
	}
	/**
	 * ת���鿴����ҳ
	 */
	@RequestMapping("/Detail")
	public String detail(Model model,int id,String category) {
		return indexService.detail(model, id, category);
	}
}
