package com.js.recommend.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class BoardRecommendDAO {
	public SqlSession sqlSession;
	
	public BoardRecommendDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}






















