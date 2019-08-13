package com.controller.before;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Wmaterial;
import com.service.before.RegisterService;

@Controller
@RequestMapping
public class RegisterController {
	@Autowired
	private RegisterService registerService;
	/**
	 * 登记著作素材信息初始化
	 */
	@RequestMapping("/WorksMaterialRegisterInit")
	public String WorksMaterialRegisterInit(Model model, HttpSession session) {
		return "before/addWorks";
	}
	/**
	 * 登记立项信息初始化
	 */
	@RequestMapping("/ProjectRegisterInit")
	public String ProjectRegisterInit(Model model, HttpSession session) {
		return "before/addProject";
	}
	/**
	 * 登记论文信息初始化
	 */
	@RequestMapping("/PaperRegisterInit")
	public String paperRegisterInit(Model model, HttpSession session) {
		return "before/addPaper";
	}
	/**
	 * 登记论文信息初始化
	 */
	@RequestMapping("/PatentRegisterInit")
	public String patentRegisterInit(Model model, HttpSession session) {
		return "before/addPatent";
	}
	/**
	 * 登记获奖成果信息初始化
	 */
	@RequestMapping("/AchieveRegisterInit")
	public String achieveRegisterInit(Model model, HttpSession session) {
		return "before/addAchieve";
	}
	
	
	/**
	 * 登记获奖成果信息
	 */
	@RequestMapping("/AchieveRegister")
	public String achieveRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Achievements ach) {
		return registerService.achieveRegister(session, request, ach);
	}
	/**
	 * 登记立项信息
	 */
	@RequestMapping("/ProjectRegister")
	public String projectRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Project project) {
		return registerService.projectRegister(session, request, project);
	}
	/**
	 * 登记专利
	 */
	@RequestMapping("/PatentRegister")
	public String patentRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Patent pa) {
		return registerService.patentRegister(session, request, pa);
	}
	/**
	 * 登记著作素材信息
	 */
	@RequestMapping("/WorksMaterialRegister")
	public String worksMaterialRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Wmaterial wmaterial) {
		return registerService.worksMaterialRegister(session, request, wmaterial);
	}
	/**
	 * 登记论文信息
	 */
	@RequestMapping("/PaperRegister")
	public String paperRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Paper paper) {
		return registerService.paperRegister(session, request, paper);
	}
}
