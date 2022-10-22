package com.milestone.app.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.donation.vo.DonationVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public MemberDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);

	}
	
	//메인페이지 SELECT
	public List<DonationDTO> selectMainAll() {
		return sqlSession.selectList("Member.selectMainAll");
	}
	
	
}