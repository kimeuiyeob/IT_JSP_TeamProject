package com.milestone.app.nursery.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.individual.vo.IndividualVO;
import com.milestone.app.news.vo.NewsVO;
import com.milestone.app.nursery.vo.NurseryVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class NurseryDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public NurseryDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public int checkId(String nurserySchoolMemberId) {
		return sqlSession.selectOne("NurserySchoolMember.checkId", nurserySchoolMemberId);
	}

	public int checkPhoneNumber(String nurserySchoolMemberPhoneNumber) {
		return sqlSession.selectOne("NurserySchoolMember.checkPhoneNumber", nurserySchoolMemberPhoneNumber);
	}

	public void join(NurseryVO nurseryVO) {
		sqlSession.insert("NurserySchoolMember.join", nurseryVO);
	}

	public int login(NurseryVO nurseryVO) {
		return sqlSession.selectOne("NurserySchoolMember.login", nurseryVO);
	}

	public String findId(NurseryVO nurseryVO) {
		return sqlSession.selectOne("NurserySchoolMember.findId", nurseryVO);
	}

	public int findPw(NurseryVO nurseryVO) {
		return sqlSession.selectOne("NurserySchoolMember.findPw", nurseryVO);
	}

	public void updatePw(NurseryVO nurseryVO) {
		sqlSession.update("NurserySchoolMember.updatePw", nurseryVO);
	}

//	보육원 목록DAO
	public List<NurseryVO> selectSchoolList(Map<String, Integer> pageMap) {// NurseryDAO
		return sqlSession.selectList("NurserySchoolMember.selectSchoolList", pageMap);
	}

//	도움이 필요한 보육원DAO
	public List<NurseryVO> helpSchoolSelect() {
		return sqlSession.selectList("NurserySchoolMember.helpSchoolSelect");
	}

//	보육원 목록 검색DAO
	public List<NurseryVO> sortSchoolList() {
		return sqlSession.selectList("NurserySchoolMember.sortSchoolList");
	}

	// 게시물 개수
	public int schoolSelectCount() {
		return sqlSession.selectOne("NurserySchoolMember.schoolSelectCount");
	}

//	기부하기(보육원 상세페이지)
	public NurseryVO selectDetail(int nurserySchoolMemberNumber) {
		return sqlSession.selectOne("NurserySchoolMember.selectDetail", nurserySchoolMemberNumber);
	}

//	비밀번호 체크
	public int checkPassword(String nurserySchoolMemberPassword) {
		return sqlSession.selectOne("NurserySchoolMember.checkPassword", nurserySchoolMemberPassword);
	}

//	회원정보 수정 초기값
	public NurseryVO selectInfo(int nurseryMemberNumber) {
		return sqlSession.selectOne("NurserySchoolMember.selectInfo", nurseryMemberNumber);
	}

//	메인페이지 보육원 목록 불러오기
	public List<NurseryVO> mainSchoolSearch() {
		return sqlSession.selectList("NurserySchoolMember.mainSchoolSearch");
	}

	// 관리자 페이지 보육원 회원
	public List<NurseryVO> managerSchoolList(Map<String, Integer> pageMap) {
		return sqlSession.selectList("NurserySchoolMember.managerSchoolList", pageMap);
	}

	public int managerSchoolSelectCount() {
		return sqlSession.selectOne("NurserySchoolMember.managerSchoolSelectCount");
	}

	// 최근로그인
	public void updateRecentLogin(NurseryVO nurseryVO) {
		sqlSession.update("NurserySchoolMember.updateRecentLogin", nurseryVO);
	}
}
