package com.milestone.app.donation.dao;

import java.util.List;

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
	
	//기부현황DAO
	public List<DonationDTO> selectDonationStatus() {
		return sqlSession.selectList("Donation.selectDonationStatus");
	}
	
	//	관리자 기부내역DAO
	public List<DonationDTO> managerSelectDonationHistory() {
		return sqlSession.selectList("Donation.managerSelectDonationHistory");
	}
	
	// 물품기부
	public void donationProduct(DonationVO donationVO) {
		sqlSession.insert("Donation.donationProduct",donationVO);
	}
	
	
}