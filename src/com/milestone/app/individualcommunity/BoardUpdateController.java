package com.milestone.app.individualcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individualcommunity.dao.IndividualCommunityDAO;

public class BoardUpdateController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      System.out.println("update컨트롤러 들어옴");
	      
	      Result result = new Result();
	      IndividualCommunityDAO individualCommunityDAO = new IndividualCommunityDAO();
	      int individualCommunityNumber =Integer.valueOf(req.getParameter("individualCommunityNumber"));
	      System.out.println(individualCommunityNumber);
	      
	      
	      req.setAttribute("board", individualCommunityDAO.select(individualCommunityNumber));
	      result.setPath("/app/board/IndividualBoardModify.jsp");
	      return result;
	   }

}
