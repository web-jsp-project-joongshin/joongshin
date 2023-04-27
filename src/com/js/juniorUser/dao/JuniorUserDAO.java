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
}






















