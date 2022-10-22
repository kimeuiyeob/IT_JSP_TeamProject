package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityVO;

public class ScboardwriteOkController implements Execute {
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("WriteOkController 들어옴");
      req.setCharacterEncoding("UTF-8");
      Result result = new Result();
      NurserySchoolCommunityVO nurserySchoolCommunityVO = new NurserySchoolCommunityVO();
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      
      System.out.println(req.getSession().getAttribute("nurserySchoolMemberNumber"));
      System.out.println(req.getParameter("nurserySchoolCommunityTitle"));
      System.out.println(req.getParameter("nurserySchoolCommunityContent"));
      
      nurserySchoolCommunityVO.setNurserySchoolMemberNumber((Integer)(req.getSession().getAttribute("nurserySchoolMemberNumber")));
      nurserySchoolCommunityVO.setNurserySchoolCommunityTitle((req.getParameter("nurserySchoolCommunityTitle")));
      nurserySchoolCommunityVO.setNurserySchoolCommunityContent(req.getParameter("nurserySchoolCommunityContent"));
      
      nurserySchoolCommunityDAO.insert(nurserySchoolCommunityVO);
      
      //다시 리스트로 보내줌
      result.setPath("/board/schoolBoard.schoolcom");
      
      //첨부파일해야함
      
      return result;
   }

}