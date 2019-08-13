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
	 * �Ǽ������ز���Ϣ��ʼ��
	 */
	@RequestMapping("/WorksMaterialRegisterInit")
	public String WorksMaterialRegisterInit(Model model, HttpSession session) {
		return "before/addWorks";
	}
	/**
	 * �Ǽ�������Ϣ��ʼ��
	 */
	@RequestMapping("/ProjectRegisterInit")
	public String ProjectRegisterInit(Model model, HttpSession session) {
		return "before/addProject";
	}
	/**
	 * �Ǽ�������Ϣ��ʼ��
	 */
	@RequestMapping("/PaperRegisterInit")
	public String paperRegisterInit(Model model, HttpSession session) {
		return "before/addPaper";
	}
	/**
	 * �Ǽ�������Ϣ��ʼ��
	 */
	@RequestMapping("/PatentRegisterInit")
	public String patentRegisterInit(Model model, HttpSession session) {
		return "before/addPatent";
	}
	/**
	 * �Ǽǻ񽱳ɹ���Ϣ��ʼ��
	 */
	@RequestMapping("/AchieveRegisterInit")
	public String achieveRegisterInit(Model model, HttpSession session) {
		return "before/addAchieve";
	}
	
	
	/**
	 * �Ǽǻ񽱳ɹ���Ϣ
	 */
	@RequestMapping("/AchieveRegister")
	public String achieveRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Achievements ach) {
		return registerService.achieveRegister(session, request, ach);
	}
	/**
	 * �Ǽ�������Ϣ
	 */
	@RequestMapping("/ProjectRegister")
	public String projectRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Project project) {
		return registerService.projectRegister(session, request, project);
	}
	/**
	 * �Ǽ�ר��
	 */
	@RequestMapping("/PatentRegister")
	public String patentRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Patent pa) {
		return registerService.patentRegister(session, request, pa);
	}
	/**
	 * �Ǽ������ز���Ϣ
	 */
	@RequestMapping("/WorksMaterialRegister")
	public String worksMaterialRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Wmaterial wmaterial) {
		return registerService.worksMaterialRegister(session, request, wmaterial);
	}
	/**
	 * �Ǽ�������Ϣ
	 */
	@RequestMapping("/PaperRegister")
	public String paperRegister(HttpSession session, HttpServletRequest request,@ModelAttribute Paper paper) {
		return registerService.paperRegister(session, request, paper);
	}
}
