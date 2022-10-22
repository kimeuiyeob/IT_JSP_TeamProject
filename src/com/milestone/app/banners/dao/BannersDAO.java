package com.milestone.app.banners.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.banners.vo.BannersVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class BannersDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public BannersDAO() { //sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	관리자페이지 배너 목록DAO
	public List<BannersVO> bannerList() {
		return sqlSession.selectList("Banners.bannerList");
	}
	
//	메인페이지 자동슬라이드 불러오는거
	public List<BannersVO> bannersList() {
		return sqlSession.selectList("Banners.bannersList");
	}
}
