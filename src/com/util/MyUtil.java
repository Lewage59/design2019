package com.util;
/*
 * 工具类
 */

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import com.po.Tuser;

public class MyUtil {
	
	/**
	 * 获得用户ID
	 */
	public static Integer getUserId(HttpSession session) {
		Tuser tuser = (Tuser)session.getAttribute("tuser");
		return tuser.getTid();
	}
	/**
	 * 获得用户名字
	 */
	public static String getUserName(HttpSession session) {
		Tuser tuser = (Tuser)session.getAttribute("tuser");
		return tuser.getTname();
	}
	/**
	 * 获得时间字符串
	 */
	public static String getStringID(){
		String id=null;
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		id=sdf.format(date);
		return id;
	}
	
}
