package com.milestone.app.comments.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.milestone.app.comments.vo.CommentsVO;
import com.milestone.mybatis.config.MyBatisConfig;

public class CommentsDAO {

      SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
      SqlSession sqlSession;

      // sqlSessionFactoory를 생성해줘야한다.
      public CommentsDAO() { 
         sqlSession = sqlSessionFactory.openSession(true);
   }
      
      public List<CommentsVO> selectAll(int nurserySchoolCommunityNumber) {
         return sqlSession.selectList("Comments.selectAll", nurserySchoolCommunityNumber);
      }
      
      public void insert(CommentsVO commentsVO) {
         sqlSession.insert("Comments.insert", commentsVO);
      }
   
}