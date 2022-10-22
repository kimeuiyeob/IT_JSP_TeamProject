package com.milestone.app.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.file.vo.FileVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class FileDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public FileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public void insert(FileVO fileVO) {
		sqlSession.insert("nurserySchoolCommunityFile.insert", fileVO);
	}
	
	public List<FileVO> select(int boardNumber){
		return sqlSession.selectList("nurserySchoolCommunityFile.select", boardNumber);
	}
	
	public void delete(int boardNumber) {
		sqlSession.delete("nurserySchoolCommunityFile.delete", boardNumber);
	}
}







