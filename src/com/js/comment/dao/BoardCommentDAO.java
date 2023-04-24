/*�븘�슂�븳 �꽌鍮꾩뒪 硫붿꽌�뱶 李쎄퀬*/
package com.js.comment.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class BoardCommentDAO {
	public SqlSession sqlSession;
	
	public BoardCommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
}






















