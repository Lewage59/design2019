package com.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Wmaterial;

@Repository("indexDao")
@Mapper
public interface IndexDao {
	public int countWsmaterial();
	public int countPaper();
	public int countProject();
	public int countPatent();
	
	public List<Map<String, Object>> workQueryAll();
	public List<Map<String, Object>> paperQueryAll();
	public List<Map<String, Object>> projectQueryAll();
	public List<Map<String, Object>> patentQueryAll();
	public List<Map<String, Object>> achieveQueryAll();
	
	public Achievements singleAchieveQuery(@Param("id") int id);
	public Paper singlePaperQuery(@Param("id")int id);
	public Patent singlePatentQuery(@Param("id")int id);
	public Project singleProjectQuery(@Param("id")int id);
	public Wmaterial singleWmaterialQuery(@Param("id") int id);
	
	public String getTeacherName(@Param("id") int id);
}
