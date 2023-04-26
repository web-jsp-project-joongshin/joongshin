package com.js.mypage.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.js.board.domain.BoardDTO;
import com.js.comment.domain.BoardCommentDTO;
import com.js.mybatis.config.MyBatisConfig;
import com.js.user.domain.UserVO;

public class MypageDAO {
	public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	내가 쓴 글 조회
	public List<BoardDTO> selectAllBoardList(Long userId) {
		return sqlSession.selectList("mypage.selectAllBoardList", userId);
	}
	
//	내가 쓴 댓글 조회
	public List<BoardCommentDTO> selectAllCommentList(HashMap<String, Object> pagable) {
		return sqlSession.selectList("mypage.selectAllCommentList", pagable);
	}
	
//	내가 쓴 댓글 전체 개수 조회
	public int getTotalCommentList(Long userId) {
		return sqlSession.selectOne("mypage.getTotalCommentList", userId);
	}
	
//	마이페이지 메인에서 해당 유저가 주니어인지, 고객인지 조회
//	주니어 일 경우 return 1, 고객일 경우 return 0
	public int getUserType(Long userId) {
		return sqlSession.selectOne("mypage.getUserType", userId);
	}
	
//	사용자 정보 조회
	public UserVO getUserInfo(Long userId) {
		return sqlSession.selectOne("mypage.getUserInfo", userId);
	}
}
