package com.service.before;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dao.RegisterDao;
import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Wmaterial;
import com.spire.doc.Document;
import com.spire.doc.FileFormat;
import com.util.MyUtil;

@Service("registerService")
@Transactional
public class RegisterServiceImpl implements RegisterService{
	@Autowired
	RegisterDao registerDao;

	@Override
	public String worksMaterialRegister(HttpSession session, HttpServletRequest request, Wmaterial obj) {
		obj.setTid(MyUtil.getUserId(session));		
		//防止文件名重名
		String newFileName = "";
		String newFileName_1 = "";
		String fileName = obj.getMcatalog().getOriginalFilename(); 
		String fileName_1 = obj.getMcover().getOriginalFilename(); 
		//选择了文件
		if(fileName.length() > 0){	
			String realpath = request.getServletContext().getRealPath("img/test");
			//实现文件上传
			String fileType = fileName.substring(fileName.lastIndexOf('.'));
			String fileType_1 = fileName_1.substring(fileName_1.lastIndexOf('.'));
			//防止文件名重名
			newFileName = MyUtil.getStringID() + fileType;
			newFileName_1 =  "a"+MyUtil.getStringID() + fileType_1;
			obj.setCatalog(newFileName);
			obj.setCover(newFileName_1);
			File targetFile = new File(realpath, newFileName); 
			File targetFile_1 = new File(realpath, newFileName_1); 
			if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        } 
			if(!targetFile_1.exists()){  
				targetFile_1.mkdirs();  
	        } 
			//上传 
	        try {   
	        	obj.getMcatalog().transferTo(targetFile);
	        	obj.getMcover().transferTo(targetFile_1);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}		
		registerDao.workInsert(obj);
		return "before/index";
	}

	@Override
	public String patentRegister(HttpSession session, HttpServletRequest request, Patent obj) {
		obj.setTid(MyUtil.getUserId(session));
		//防止文件名重名
				String newFileName = "";
				String fileName = obj.getPcertificate().getOriginalFilename(); 
				//选择了文件
				if(fileName.length() > 0){	
					String realpath = request.getServletContext().getRealPath("img/test");
					//实现文件上传
					String fileType = fileName.substring(fileName.lastIndexOf('.'));
					//防止文件名重名
					newFileName = MyUtil.getStringID() + fileType;
					obj.setCertificate(newFileName);
					File targetFile = new File(realpath, newFileName); 
					if(!targetFile.exists()){  
			            targetFile.mkdirs();  
			        } 
					//上传 
			        try {   
			        	obj.getPcertificate().transferTo(targetFile);
			        } catch (Exception e) {  
			            e.printStackTrace();  
			        }  
				}		
		
		registerDao.patentInsert(obj);
		return "before/index";
	}

	@Override
	public String paperRegister(HttpSession session, HttpServletRequest request, Paper obj) {
		obj.setTid(MyUtil.getUserId(session));
		
		//防止文件名重名
				String newFileName = "";
				String newFileName_1 = "";
				String newFileName_2 = "";
				String fileName = obj.getPcatalog().getOriginalFilename(); 
				String fileName_1 = obj.getPcover().getOriginalFilename(); 
				String fileName_2 = obj.getPtext().getOriginalFilename();
				String fileName_3 = obj.getPtext().getOriginalFilename();
				//选择了文件
				if(fileName.length() > 0){	
					String realpath = request.getServletContext().getRealPath("img/test");
					//实现文件上传
					String fileType = fileName.substring(fileName.lastIndexOf('.'));
					String fileType_1 = fileName_1.substring(fileName_1.lastIndexOf('.'));
					String fileType_2 = fileName_2.substring(fileName_2.lastIndexOf('.'));
					String fileType_3 = fileName_3.substring(0,fileName_3.indexOf('.'));
					//防止文件名重名
					newFileName = MyUtil.getStringID() + fileType;
					newFileName_1 = "a"+MyUtil.getStringID() + fileType_1;
					newFileName_2 = MyUtil.getStringID() + fileType_2;
					
					
					
					obj.setCatalog(newFileName);
					obj.setCover(newFileName_1);
					obj.setText(fileType_3+".pdf");
					File targetFile = new File(realpath, newFileName); 
					File targetFile_1 = new File(realpath, newFileName_1); 
					File targetFile_2 = new File(realpath, newFileName_2); 
					if(!targetFile.exists()){  
			            targetFile.mkdirs();  
			        } 
					if(!targetFile_1.exists()){  
						targetFile_1.mkdirs();  
			        } 
					if(!targetFile_2.exists()){  
						targetFile_2.mkdirs();  
			        } 
					//上传 
			        try {   
			        	obj.getPcatalog().transferTo(targetFile);
			        	obj.getPcover().transferTo(targetFile_1);
			        	obj.getPtext().transferTo(targetFile_2);
			        } catch (Exception e) {  
			            e.printStackTrace();  
			        }  
			        System.out.println(obj.getText());
			        Document document = new Document();
			        System.out.println("2");
			        document.loadFromFile("D:\\All Users//Tomcat 9.0//webapps//design2019//img//test//"+newFileName_2);
			        //保存结果文件D:\All Users\Tomcat 9.0\webapps\design2019\img\test
			        document.saveToFile("D:\\All Users//Tomcat 9.0//webapps//design2019//img//test//"+fileType_3+".pdf", FileFormat.PDF);
				}
		
		registerDao.paperInsert(obj);
		return "before/index";
	}

	@Override
	public String achieveRegister(HttpSession session, HttpServletRequest request, Achievements obj) {
		obj.setTid(MyUtil.getUserId(session));
		//防止文件名重名
		String newFileName = "";
		String fileName = obj.getAcertificate().getOriginalFilename(); 
		//选择了文件
		if(fileName.length() > 0){	
			String realpath = request.getServletContext().getRealPath("img/test");
			//实现文件上传
			String fileType = fileName.substring(fileName.lastIndexOf('.'));
			//防止文件名重名
			newFileName = MyUtil.getStringID() + fileType;
			obj.setCertificate(newFileName);
			File targetFile = new File(realpath, newFileName); 
			if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        } 
			//上传 
	        try {   
	        	obj.getAcertificate().transferTo(targetFile);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}		
		
		registerDao.achieveInsert(obj);	
		return "before/index";
	}

	@Override
	public String projectRegister(HttpSession session, HttpServletRequest request, Project obj) {
		obj.setTid(MyUtil.getUserId(session));
		//防止文件名重名
			String newFileName = "";
			String newFileName_1 = "";
			String fileName = obj.getPdeclaration().getOriginalFilename(); 
			String fileName_1 = obj.getPprove().getOriginalFilename(); 
				//选择了文件
			if(fileName.length() > 0){	
				String realpath = request.getServletContext().getRealPath("img/test");
				//实现文件上传
				String fileType = fileName.substring(fileName.lastIndexOf('.'));
				String fileType_1 = fileName_1.substring(fileName_1.lastIndexOf('.'));
				//防止文件名重名
				newFileName = MyUtil.getStringID() + fileType;
				newFileName_1 =  "a"+MyUtil.getStringID() + fileType_1;
				obj.setDeclaration(newFileName);
				obj.setProve(newFileName_1);
				File targetFile = new File(realpath, newFileName); 
				File targetFile_1 = new File(realpath, newFileName_1); 
				if(!targetFile.exists()){  
		            targetFile.mkdirs();  
		        } 
				if(!targetFile_1.exists()){  
					targetFile_1.mkdirs();  
			    } 
				//上传 
		        try {   
		        	obj.getPdeclaration().transferTo(targetFile);
		        	obj.getPprove().transferTo(targetFile_1);
		        } catch (Exception e) {  
		         e.printStackTrace();  
		        }  
				}		
		
		registerDao.projectInsert(obj);
		return "before/index";
	}

}
