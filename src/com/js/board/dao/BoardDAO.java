/*
 보드에 관한 필요한 기능 메서드를 작성하는 공간
 SqlSession 객체는 데이터베이스 작업을 수행할 때 사용되는 객체로, 해당 객체를 사용하여 데이터베이스에 쿼리를 보낼 수 있습니다.
 */

package com.js.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.js.board.domain.BoardDTO;
import com.js.board.domain.BoardVO;
import com.js.board.domain.Search;
import com.js.mybatis.config.MyBatisConfig;

public class BoardDAO {
public SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 전체 조회
	public List<BoardDTO> selectAll(){
		return sqlSession.selectList("board.selectAll");
	}
//	효석:게시판에서 이용자 유저 전체 조회	
	public List<BoardDTO> comuSelectAll(HashMap<String, Object> pagable){
		return sqlSession.selectList("board.comuSelectAll", pagable);
	}
	
//	효석:게시판에서 주니어 유저 전체 조회	
	public List<BoardDTO> comujuniSelectAll(HashMap<String, Object> pagable){
		return sqlSession.selectList("board.comujuniSelectAll", pagable);
	}
	
	public List<BoardDTO> boardSelectAll() {
		return sqlSession.selectList("board.boardSelectAll");
	}
	
	
	public int getTotal(Search search) {
		return sqlSession.selectOne("board.getTotal", search);
	}
	
	
	//게시글 추가
	public void insert(BoardVO boardVO) {
		sqlSession.insert("board.insert", boardVO);
	}
	
	// 	효석: 게시글 작성
		public void comuinsert(BoardVO boardVO) {
			sqlSession.insert("board.comuinsert", boardVO);
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

	// 아이디 검사
	public boolean checkId(Long boardId) {
		return (Integer) sqlSession.selectOne("user_id", boardId) == 1;
	}
	
	//답변 상태
	public void updateBoard(BoardVO boardVO) {
		sqlSession.update("board.updateBoard", boardVO);
	}

//	문의 게시글 추가
	public void reqInsert(BoardVO boardVO) {
		sqlSession.insert("board.reqInsert", boardVO);
	}

	//	문의 게시판 게시글 전체 조회
	public List<BoardDTO> reqSelectAll(){
		return sqlSession.selectList("board.reqSelectAll");
	}
	
	// 우람: 문의게시판 유저 전체 조회
	public List<BoardDTO> listSelectUser(HashMap<String, Object> pagable){
		return sqlSession.selectList("board.listSelectUser", pagable);
	} 
	
	// 우람: 문의게시판 주니어 전체 조회
	public List<BoardDTO> listjuniSelectAll(HashMap<String, Object> pagable){
		return sqlSession.selectList("board.listjuniSelectAll", pagable);
	}
}




















