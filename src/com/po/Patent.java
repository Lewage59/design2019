package com.po;
/*
 * 保存专利信息
 */

import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

public class Patent {
	int pid;
	int tid;
	String pName;
	String level;
	Data time;
	String certificate;
	MultipartFile Pcertificate;
	String host;
	String participant;
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
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Data getTime() {
		return time;
	}
	public void setTime(Data time) {
		this.time = time;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
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
	public MultipartFile getPcertificate() {
		return Pcertificate;
	}
	public void setPcertificate(MultipartFile pcertificate) {
		Pcertificate = pcertificate;
	}

}
