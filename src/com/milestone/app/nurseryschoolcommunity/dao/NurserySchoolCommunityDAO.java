package com.milestone.app.nurseryschoolcommunity.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.nursery.vo.NurseryVO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityDTO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class NurserySchoolCommunityDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public NurserySchoolCommunityDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public List<NurserySchoolCommunityDTO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("NurserySchoolCommunity.selectAll", pageMap);
	}

	// 게시물 개수
	public int selectCount() {
		// selectOne 인 이유 :
		return sqlSession.selectOne("NurserySchoolCommunity.selectCount");
	}

	// 게시물 작성
	public void insert(NurserySchoolCommunityVO nurserySchoolCommunityVO) {
		sqlSession.insert("NurserySchoolCommunity.insert", nurserySchoolCommunityVO);
	}

	// 페이징 처리, 파일첨부
	public int selectCurrentSequence() {
		return sqlSession.selectOne("NurserySchoolCommunity.selectCurrentSequence");
	}

	// 게시물 상세페이지
	public NurserySchoolCommunityDTO select(int nurserySchoolCommunityBoardNumber) {
		return sqlSession.selectOne("NurserySchoolCommunity.select", nurserySchoolCommunityBoardNumber);
	}

	// 조회수 증가
	public void updateHits(int nurserySchoolCommunityBoardNumber) {
		sqlSession.update("NurserySchoolCommunity.updateHits", nurserySchoolCommunityBoardNumber);
	}

	// 게시물 삭제
	public void delete(int nurserySchoolCommunityBoardNumber) {
		sqlSession.delete("NurserySchoolCommunity.delete", nurserySchoolCommunityBoardNumber);
	}

	// 게시물 수정
	public void update(NurserySchoolCommunityVO nurserySchoolCommunityVO) {
		sqlSession.update("NurserySchoolCommunity.update", nurserySchoolCommunityVO);
	}

// 관리자 페이지 보육원 커뮤니티
	public List<NurserySchoolCommunityDTO> managerSchoolCommunityList(Map<String, Integer> pageMap) {
		return sqlSession.selectList("NurserySchoolCommunity.managerSchoolCommunityList", pageMap);
	}

	public int managerSchoolCommunitySelectCount() {
		return sqlSession.selectOne("NurserySchoolCommunity.managerSchoolCommunitySelectCount");
	}
}