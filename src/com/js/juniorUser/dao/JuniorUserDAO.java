/*필요한 서비스 메서드 창고*/
package com.js.juniorUser.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.js.juniorUser.domain.JuniorUserDTO;
import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class JuniorUserDAO {
	public SqlSession sqlSession;
	
	public JuniorUserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<JuniorUserDTO> selectJuniorAll() {
		return sqlSession.selectList("user.selectJuniorAll");
	} 

//	회원가입
	public void insert(JuniorUserDTO juniorUserDTO) {
		sqlSession.insert("juniorUser.insert", juniorUserDTO);
	}
	
//	이메일 중복검사
	public String selectEmail(String userEmail) {
		return sqlSession.selectOne("juniorUser.selectEmail", userEmail);
	}
	
//	로그인
	public Long login(String userEmail, String userPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("userEmail", userEmail);
		loginMap.put("userPassword", userPassword);
		
		return sqlSession.selectOne("juniorUser.login", loginMap);
	}


}






















