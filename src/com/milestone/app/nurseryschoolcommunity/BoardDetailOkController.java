package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.file.dao.FileDAO;
import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;

public class BoardDetailOkController implements Execute{


   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("디테일 들어옴");
      
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      Result result = new Result();
      FileDAO fileDAO = new FileDAO();
      int nurserySchoolCommunityNumber = Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
      
      req.setAttribute("board", nurserySchoolCommunityDAO.select(nurserySchoolCommunityNumber));
      req.setAttribute("files", fileDAO.select(nurserySchoolCommunityNumber));
      System.out.println("커뮤니티 넘버 : "+nurserySchoolCommunityNumber);

      
      //상세보기로 이동했을 때 조회수가 증가해야하므로,
      //BoardDetail.jsp로 넘어가는 때 조회수 증가
      nurserySchoolCommunityDAO.updateHits(nurserySchoolCommunityNumber);
      result.setPath("/app/board/schoolBoardDetail.jsp");

      return result;
   }

}