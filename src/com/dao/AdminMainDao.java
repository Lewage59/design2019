package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.po.Tuser;

@Repository("adminMainDao")
@Mapper
public interface AdminMainDao {
	public int allResults();
	public int Audited();
	public int notAudited();
	public int allTeacher();
	
	public List<Map<String, Object>> workQueryAll();
	public List<Map<String, Object>> paperQueryAll();
	public List<Map<String, Object>> projectQueryAll();
	public List<Map<String, Object>> patentQueryAll();
	public List<Map<String, Object>> achieveQueryAll();
	
	public List<Map<String, Object>> showTeacherAll();
	public Tuser addTeacher(Tuser tuser);
}
