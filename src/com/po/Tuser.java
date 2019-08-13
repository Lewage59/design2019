package com.po;
/*
 * 教师个人信息
 */
public class Tuser {
	int tid;
	int tno;
	String tpasswd;
	String tname;
	String inTime;
	String position;
		
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getTpasswd() {
		return tpasswd;
	}
	public void setTpasswd(String tpasswd) {
		this.tpasswd = tpasswd;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getInTime() {
		return inTime;
	}
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
}
