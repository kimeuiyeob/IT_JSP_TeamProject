package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;

public class BoardUpdateController implements Execute{

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("update컨트롤러 들어옴");
      
      Result result = new Result();
      NurserySchoolCommunityDAO nurseryCommunityDAO = new NurserySchoolCommunityDAO();
      int nurserySchoolCommunityNumber =Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
      System.out.println(nurserySchoolCommunityNumber);
      
      
      req.setAttribute("board", nurseryCommunityDAO.select(nurserySchoolCommunityNumber));
      result.setPath("/app/board/SchoolBoardModify.jsp");
      return result;
   }

}