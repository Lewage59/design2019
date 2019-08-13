package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Achievements;
import com.po.Paper;
import com.po.Patent;
import com.po.Project;
import com.po.Wmaterial;

@Repository("registerDao")
@Mapper
public interface RegisterDao {
	public Wmaterial workInsert(Wmaterial wmaterial);
	public Paper paperInsert(Paper paper);
	public Project projectInsert(Project project);
	public Patent patentInsert(Patent patent);
	public Achievements achieveInsert(Achievements ach);
}
