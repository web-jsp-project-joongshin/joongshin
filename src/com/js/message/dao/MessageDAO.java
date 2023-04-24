package com.js.message.dao;

import java.util.List;

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
	
	public List<MessageDTO> selectListBySendUserId(Long sendUserId) {
		return sqlSession.selectList("message.selectListBySendUserId", sendUserId);
	}
	
	public List<MessageDTO> selectListByReceiveUserId(Long receiveUserId) {
		return sqlSession.selectList("message.selectListByReceiveUserId", receiveUserId);
	}
}
