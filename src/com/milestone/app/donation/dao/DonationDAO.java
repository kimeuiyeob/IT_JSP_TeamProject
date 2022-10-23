package com.milestone.app.donation.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.donation.vo.DonationVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class DonationDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public DonationDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);

	}

	// 기부현황DAO
	public List<DonationDTO> selectDonationStatus() {
		return sqlSession.selectList("Donation.selectDonationStatus");
	}

	// 관리자 기부내역DAO
	public List<DonationDTO> managerSelectDonationHistory(Map<String, Integer> pageMap) {
		return sqlSession.selectList("Donation.managerSelectDonationHistory", pageMap);
	}

	// 게시물 개수
	public int donationSelectCount() {
		return sqlSession.selectOne("Donation.donationSelectCount");
	}

	// 물품기부
	public void donationProduct(DonationVO donationVO) {
		sqlSession.insert("Donation.donationProduct", donationVO);
	}
	// 기부금기부
	public void donationMoney(DonationVO donationVO) {
		sqlSession.insert("Donation.donationMoney", donationVO);
	}

}