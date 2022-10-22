package com.milestone.app.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.notice.vo.NoticeVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class NoticeDAO {

	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public NoticeDAO() { // sqlSessionFactoory를 생성해줘야한다.
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public List<NoticeVO> selectNotice() {// NoticeDAO
		return sqlSession.selectList("Notice.selectNotice");
	}
	
//	관리자페이지 공지사항 목록DAO
	public List<NoticeVO> selectNoticeManager(Map<String, Integer> pageMap) {// NoticeDAO
		return sqlSession.selectList("Notice.selectNoticeManager", pageMap);
	}
    // 게시물 개수
	public int noticeSelectCount() {
		return sqlSession.selectOne("Notice.noticeSelectCount");
	}
	
//	공지사항 추가DAO
	public void noticeInsert(NoticeVO noticeVO) {
		sqlSession.insert("Notice.noticeInsert", noticeVO);
	}
	
//	공지사항 삭제DAO
	public void noticeDelete(int noticeNumber) {
		sqlSession.delete("Notice.noticeDelete");
	}
	
//	공지사항 수정DAO
	public void noticeUpdate(NoticeVO noticeVO) {
		sqlSession.update("Notice.noticeUpdate");
	}	
	
//	공지사항 분류별 필터DAO
	public List<NoticeVO> noticeSortClassification() {
		return sqlSession.selectList("Notice.noticeSortClassification");
	}
	
//	공지사항 날짜별 정렬DAO
	public List<NoticeVO> noticeSortDate() {
		return sqlSession.selectList("Notice.noticeSortDate");
	}
	
}
