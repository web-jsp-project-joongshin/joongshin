package com.js.message.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.js.message.domain.MessageDTO;
import com.js.message.domain.MessageVO;
import com.js.mybatis.config.MyBatisConfig;

public class MessageDAO {
	private SqlSession sqlSession;

	public MessageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(MessageVO messageVO) {
		sqlSession.insert("message.insert", messageVO);
	}
	
	public MessageDTO selectOne(Map<String, Object> messageData) {
		return sqlSession.selectOne("message.selectOne", messageData);
	}
	
	public List<MessageDTO> selectList(Map<String, Object> searchData) {
		return sqlSession.selectList("message.selectList", searchData);
	}
	
	public List<MessageDTO> selectListByReceiveUserId(Long receiveUserId) {
		return sqlSession.selectList("message.selectListByReceiveUserId", receiveUserId);
	}
}
