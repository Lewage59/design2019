package com.service.before;


import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.dao.IndexDao;
import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Tuser;
import com.po.Wmaterial;
import com.util.MyUtil;

@Service("indexService")
public class IndexServiceImpl implements IndexService{

	@Autowired
	IndexDao indexDao;
	
	@Override
	public String before(Model model, HttpSession session) {
		model.addAttribute("Paper",indexDao.countPaper());
		model.addAttribute("Patent",indexDao.countPatent());
		model.addAttribute("Project",indexDao.countProject());
		model.addAttribute("Wsmaterial",indexDao.countWsmaterial());
		return "before/index";
	}

	@Override
	public String login(Model model) {
		model.addAttribute("Tuser", new Tuser());
		return "before/login";
	}

	@Override
	public String categoryQueryAll(Model model, HttpSession session, String category) {
		List<Map<String, Object>> list;	
		switch (category) {
		case "论文":
			list = indexDao.paperQueryAll();
			category = "paper";
			break;
		case "立项":
			list =  indexDao.projectQueryAll();
			category = "project";
			break;
		case "专利":
			list = indexDao.patentQueryAll();
			category = "patent";
			break;
		case "著作":
			list = indexDao.workQueryAll();
			category = "worksMaterial";
			break;
		default:
			list = indexDao.achieveQueryAll();
			category = "achievements";
			break;
		}
		model.addAttribute("queryAll",list);
		model.addAttribute("Acategory",category);
		return "before/allType";
	}
	
	@Override
	public String detail(Model model,int id,String category) {
		  String tname;
		  switch (category) {
		  case "论文":
		   Paper paper = indexDao.singlePaperQuery(id);
		   tname = indexDao.getTeacherName(paper.getTid());
		   category = "paper";
		   model.addAttribute("qtname",tname);
		   model.addAttribute("obj",paper);
		   break;
		  case "立项":
		   Project project=  indexDao.singleProjectQuery(id);
		   category = "project";
		   tname = indexDao.getTeacherName(project.getTid());
		   model.addAttribute("qtname",tname);
		   model.addAttribute("obj",project);
		   break;
		  case "专利":
		   Patent patent = indexDao.singlePatentQuery(id);
		   category = "patent";
		   tname = indexDao.getTeacherName(patent.getTid());
		   model.addAttribute("qtname",tname);
		   model.addAttribute("obj",patent);;
		   break;
		  case "著作":
		   Wmaterial wmaterial = indexDao.singleWmaterialQuery(id);
		   category = "worksMaterial";
		   tname = indexDao.getTeacherName(wmaterial.getTid());
		   model.addAttribute("qtname",tname);
		   model.addAttribute("obj",wmaterial);
		   break;
		  default:
		   Achievements achievements = indexDao.singleAchieveQuery(id);
		   category = "achievements";
		   tname = indexDao.getTeacherName(achievements.getTid());
		   model.addAttribute("qtname",tname);
		   model.addAttribute("obj",achievements);
		   break;
		  }
		  model.addAttribute("Bcategory",category);
		  return "before/gainDetail";
	 }

}
