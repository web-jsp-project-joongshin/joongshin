/*�븘�슂�븳 �꽌鍮꾩뒪 硫붿꽌�뱶 李쎄퀬*/
package com.js.boardTag.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class BoardTagDAO {
	public SqlSession sqlSession;
	
	public BoardTagDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}






















