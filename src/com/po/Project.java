package com.po;
/*
 * 保存立项信息
 */

import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

public class Project {
	int pid;
	int tid;
	String host;
	String pName;
	String declaration;
	String prove;
	MultipartFile Pdeclaration;
	MultipartFile Pprove;
	Data time;
	String level;
	String participant;
	String itemCategory;
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
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getDeclaration() {
		return declaration;
	}
	public void setDeclaration(String declaration) {
		this.declaration = declaration;
	}
	public String getProve() {
		return prove;
	}
	public void setProve(String prove) {
		this.prove = prove;
	}
	public Data getTime() {
		return time;
	}
	public void setTime(Data time) {
		this.time = time;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getParticipant() {
		return participant;
	}
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	public int getExamine() {
		return examine;
	}
	public void setExamine(int examine) {
		this.examine = examine;
	}
	public MultipartFile getPdeclaration() {
		return Pdeclaration;
	}
	public void setPdeclaration(MultipartFile pdeclaration) {
		Pdeclaration = pdeclaration;
	}
	public MultipartFile getPprove() {
		return Pprove;
	}
	public void setPprove(MultipartFile pprove) {
		Pprove = pprove;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
}
