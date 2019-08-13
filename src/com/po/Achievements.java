package com.po;
/*
 * 保存获奖成果信息
 */

import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

public class Achievements {
	int wid;
	int tid;
	String aName;
	String level;
	Data getTime;
	String certificate;
	MultipartFile Acertificate;
	int examine;
	
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Data getGetTime() {
		return getTime;
	}
	public void setGetTime(Data getTime) {
		this.getTime = getTime;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public int getExamine() {
		return examine;
	}
	public void setExamine(int examine) {
		this.examine = examine;
	}
	public MultipartFile getAcertificate() {
		return Acertificate;
	}
	public void setAcertificate(MultipartFile acertificate) {
		Acertificate = acertificate;
	}
	

}
