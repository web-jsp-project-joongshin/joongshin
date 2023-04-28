package com.js.file.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.js.file.domain.ResumeFileVO;
import com.js.mybatis.config.MyBatisConfig;

public class ResumeFileDAO {
	public SqlSession sqlSession;
	
	public ResumeFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	이력서 사진 조회
	public List<ResumeFileVO> selectResumeFiles(Long userId) {
		return sqlSession.selectList("resumeFile.selectByUserId", userId);
	}
	
//	파일 사진 추가
	public void insert(ResumeFileVO fileVO) {
		sqlSession.insert("resumeFile.insert", fileVO);
	}
}
