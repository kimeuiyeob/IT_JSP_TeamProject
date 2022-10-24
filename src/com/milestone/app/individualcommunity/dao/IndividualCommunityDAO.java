package com.milestone.app.individualcommunity.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.individualcommunity.vo.IndividualCommunityDTO;
import com.milestone.app.individualcommunity.vo.IndividualCommunityVO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityDTO;
import com.milestone.mybatis.config.MyBatisConfig;

public class IndividualCommunityDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public IndividualCommunityDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public List<IndividualCommunityDTO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("IndividualCommunity.selectAll", pageMap);
	}

	// 게시물 개수
	public int selectCount() {
		// selectOne 인 이유 :
		return sqlSession.selectOne("IndividualCommunity.selectCount");
	}

	// 게시물 작성
	public void insert(IndividualCommunityVO individualCommunityVO) {
		sqlSession.insert("IndividualCommunity.insert", individualCommunityVO);
	}

	// 페이징 처리, 파일첨부
	public int selectCurrentSequence() {
		return sqlSession.selectOne("IndividualCommunity.selectCurrentSequence");
	}

	// 게시물 상세페이지
	public IndividualCommunityDTO select(int IndividualCommunityBoardNumber) {
		return sqlSession.selectOne("IndividualCommunity.select", IndividualCommunityBoardNumber);
	}

	// 조회수 증가
	public void updateHits(int IndividualCommunityBoardNumber) {
		sqlSession.update("IndividualCommunity.updateHits", IndividualCommunityBoardNumber);
	}

	// 게시물 삭제
	public void delete(int IndividualCommunityBoardNumber) {
		sqlSession.delete("IndividualCommunity.delete", IndividualCommunityBoardNumber);
	}

	// 게시물 수정
	public void update(IndividualCommunityVO individualCommunityVO) {
		sqlSession.update("IndividualCommunity.update", individualCommunityVO);
	}

//	   관리자 개인커뮤
	public List<IndividualCommunityDTO> managerIndiCommunityList(Map<String, Integer> pageMap) {
		return sqlSession.selectList("IndividualCommunity.managerIndiCommunityList", pageMap);
	}

	public int managerIndiCommunitySelectCount() {
		return sqlSession.selectOne("IndividualCommunity.managerIndiCommunitySelectCount");
	}

}
