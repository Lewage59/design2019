package com.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.po.Tuser;

@Repository("userCenterDao")
@Mapper
public interface UserCenterDao {
	public Tuser userCenter(Integer bid);
	public Tuser alterInfo(Tuser tuser);
	
	public int allResults(int tid);
	public int Audited(int tid);
	public int notAudited(int tid);
	
	public List<Map<String, Object>> workQuery(int tid);
	public List<Map<String, Object>> paperQuery(int tid);
	public List<Map<String, Object>> projectQuery(int tid);
	public List<Map<String, Object>> patentQuery(int tid);
	public List<Map<String, Object>> achieveQuery(int tid);
}