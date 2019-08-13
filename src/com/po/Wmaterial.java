package com.po;
/*
 * 用于保存教师著作素材信息
 */

import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

public class Wmaterial {
	int tid;
	int wid;
	String bname;
	String author;
	Data pTime;
	String pressName;
	String information;
	String edition;
	MultipartFile Mcatalog;
	MultipartFile Mcover;
	String catalog;
	String cover;
	String prizeWin;
	int examine;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Data getpTime() {
		return pTime;
	}
	public void setpTime(Data pTime) {
		this.pTime = pTime;
	}
	public String getPressName() {
		return pressName;
	}
	public void setPressName(String pressName) {
		this.pressName = pressName;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public MultipartFile getMcatalog() {
		return Mcatalog;
	}
	public void setMcatalog(MultipartFile mcatalog) {
		Mcatalog = mcatalog;
	}
	public MultipartFile getMcover() {
		return Mcover;
	}
	public void setMcover(MultipartFile mcover) {
		Mcover = mcover;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getPrizeWin() {
		return prizeWin;
	}
	public void setPrizeWin(String prizeWin) {
		this.prizeWin = prizeWin;
	}
	public int getExamine() {
		return examine;
	}
	public void setExamine(int examine) {
		this.examine = examine;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	
	
	
	
}
