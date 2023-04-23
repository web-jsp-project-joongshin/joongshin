/*
 MyBatis를 사용할 때 설정을 담당하는 클래스인 MyBatisConfig. 
 MyBatis의 SqlSessionFactory를 생성하고, 이를 반환하는 역할을 한다. 
 SqlSessionFactory는 MyBatis에서 SqlSession을 생성하기 위한 인터페이스이다. 
 SqlSession은 실제 DB와의 커넥션을 맺고 쿼리를 수행하는 객체다.
 config.xml 파일을 읽어와 SqlSessionFactory를 생성하고, 
 이를 통해 SqlSession을 생성할 수 있도록 해준다.
  */

package com.js.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/js/mybatis/config/config.xml";
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
