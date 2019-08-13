package com.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Tuser;

@Repository("userDao")
@Mapper
public interface UserDao {
	public List<Tuser> login(Tuser tuser);
}
