package com.milestone.app.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.banners.vo.BannersVO;
import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.nursery.vo.NurseryVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public MemberDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);

	}

	// 메인페이지 SELECT
	public List<DonationDTO> selectMainAll() {
		return sqlSession.selectList("Member.selectMainAll");
	}

	public List<BannersVO> selectBanner() {
		return sqlSession.selectList("Banners.bannerList");
	}
	
	//도움이 필요한 보육원 메인페이지꺼
	public List<NurseryVO> helpSchoolSelect2() {
		return sqlSession.selectList("NurserySchoolMember.helpSchoolSelect2");
	}

}