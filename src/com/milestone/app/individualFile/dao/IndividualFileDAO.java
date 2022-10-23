package com.milestone.app.individualFile.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.individualFile.vo.IndividualFileVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class IndividualFileDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public IndividualFileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public void insert(IndividualFileVO individualFileVO) {
		sqlSession.insert("IndividualCommunityFile.insert", individualFileVO);
	}
	
	public List<IndividualFileVO> select(int boardNumber){
		return sqlSession.selectList("IndividualCommunityFile.select", boardNumber);
	}
	
	public void delete(int boardNumber) {
		sqlSession.delete("IndividualCommunityFile.delete", boardNumber);
	}
}
