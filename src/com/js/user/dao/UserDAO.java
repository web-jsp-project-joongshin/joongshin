/*필요한 서비스 메서드 창고*/
package com.js.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class UserDAO {
	public SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원가입
	public void insert(UserVO userVO) {
		sqlSession.insert("user.insert", userVO);
	}
	
//	이메일 중복검사
	public String selectEmail(String userEmail) {
		return sqlSession.selectOne("user.selectEmail", userEmail);
	}
	
//	로그인
	public Long login(String userEmail, String userPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("userEmail", userEmail);
		loginMap.put("userPassword", userPassword);
		
		return sqlSession.selectOne("user.login", loginMap);
	}
}






















