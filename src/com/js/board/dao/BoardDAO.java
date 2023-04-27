/*
 보드에 관한 필요한 기능 메서드를 작성하는 공간
 SqlSession 객체는 데이터베이스 작업을 수행할 때 사용되는 객체로, 해당 객체를 사용하여 데이터베이스에 쿼리를 보낼 수 있습니다.
 */

package com.js.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.js.board.domain.BoardVO;
import com.js.board.domain.BoardDTO;
import com.js.mybatis.config.MyBatisConfig;

public class BoardDAO {
	public SqlSession sqlSession;

	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	//	게시글 전체 조회
	public List<BoardDTO> selectAll() {
		return sqlSession.selectList("board.selectAll");
	}

	public List<BoardDTO> boardSelectAll() {
		return sqlSession.selectList("board.boardId");
	}
	
	//게시글 추가
		public void insert(BoardVO boardVO) {
			sqlSession.insert("board.insert", boardVO);
		}

	//게시글 조회
		public BoardDTO select(Long boardId) {
			return sqlSession.selectOne("board.select", boardId);
		}

	//게시글 수정
		public void update(BoardVO boardVO) {
			sqlSession.update("board.update", boardVO);
		}

	//게시글 삭제
		public void delete(Long boardId) {
			sqlSession.delete("board.delete", boardId);
		}

	// 아이디 검사
	public boolean checkId(String boardId) {
		return (Integer) sqlSession.selectOne("user_id", boardId) == 1;
	}


}
