package com.js.adminUser.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class AdminUserDAO {
	public SqlSession sqlSession;
	
	public AdminUserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public Long login(String memberIdentification, String memberPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberIdentification", memberIdentification);
		loginMap.put("memberPassword", memberPassword);
		
		return sqlSession.selectOne("member.login", loginMap);
	}
}






















