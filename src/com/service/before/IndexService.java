package com.service.before;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;

public interface IndexService {
	public String before(Model model, HttpSession session);
	public String login(Model model);
	public String categoryQueryAll(Model model, HttpSession session,String category);
	public String detail(Model model,int id,String category);
}
