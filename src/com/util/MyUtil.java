package com.util;
/*
 * ������
 */

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import com.po.Tuser;

public class MyUtil {
	
	/**
	 * ����û�ID
	 */
	public static Integer getUserId(HttpSession session) {
		Tuser tuser = (Tuser)session.getAttribute("tuser");
		return tuser.getTid();
	}
	/**
	 * ����û�����
	 */
	public static String getUserName(HttpSession session) {
		Tuser tuser = (Tuser)session.getAttribute("tuser");
		return tuser.getTname();
	}
	/**
	 * ���ʱ���ַ���
	 */
	public static String getStringID(){
		String id=null;
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		id=sdf.format(date);
		return id;
	}
	
}
