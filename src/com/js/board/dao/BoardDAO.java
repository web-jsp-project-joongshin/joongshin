package com.js.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.js.board.domain.BoardDTO;
import com.js.board.domain.Search;
import com.js.mybatis.config.MyBatisConfig;

public class BoardDAO {
	public SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 전체 조회
	public List<BoardDTO> selectAll(HashMap<String, Object> pagable){
		return sqlSession.selectList("board.selectAll", pagable);
	}
	
//	전체 게시글 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("board.getTotal", search);
	}
	
////	게시글 추가
//	public void insert(BoardVO boardVO) {
//		sqlSession.insert("board.insert", boardVO);
//	}
//	
////	게시글 조회
//	public BoardDTO select(Long boardId) {
//		return sqlSession.selectOne("board.select", boardId);
//	}
	
	
}




















