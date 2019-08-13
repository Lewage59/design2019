package com.po;
/*
 * 保存教师论文信息
 */

import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

public class Paper {
	int pid;
	int tid;
	String author;
	String subject;
	Data time;
	String catalog;
	MultipartFile pcatalog;
	MultipartFile pcover;
	MultipartFile ptext;
	String cover;
	String magazineName;
	String edition;
	String artcleName;
	String pcategory;
	String text;
	int examine;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Data getTime() {
		return time;
	}
	public void setTime(Data time) {
		this.time = time;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public MultipartFile getPcatalog() {
		return pcatalog;
	}
	public void setPcatalog(MultipartFile pcatalog) {
		this.pcatalog = pcatalog;
	}
	public MultipartFile getPcover() {
		return pcover;
	}
	public void setPcover(MultipartFile pcover) {
		this.pcover = pcover;
	}
	public MultipartFile getPtext() {
		return ptext;
	}
	public void setPtext(MultipartFile ptext) {
		this.ptext = ptext;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getMagazineName() {
		return magazineName;
	}
	public void setMagazineName(String magazineName) {
		this.magazineName = magazineName;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public String getArtcleName() {
		return artcleName;
	}
	public void setArtcleName(String artcleName) {
		this.artcleName = artcleName;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getExamine() {
		return examine;
	}
	public void setExamine(int examine) {
		this.examine = examine;
	}
	
	
}
