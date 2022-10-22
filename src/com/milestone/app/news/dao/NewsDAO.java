package com.milestone.app.news.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.news.vo.NewsVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class NewsDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public NewsDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);

	}
	
		//NewsDAO
		public List<NewsVO> selectNewsList() {
			return sqlSession.selectList("News.selectNewsList");
		}
		
		public NewsVO select(int newsNumber) {
			return sqlSession.selectOne("News.select",newsNumber);
		}
		
}
