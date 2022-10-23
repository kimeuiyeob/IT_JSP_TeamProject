package com.milestone.app.individualcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individualFile.dao.IndividualFileDAO;
import com.milestone.app.individualcommunity.dao.IndividualCommunityDAO;

public class BoardDetailOkController implements Execute{
	   @Override
	   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      System.out.println("디테일 들어옴");
	      
	      IndividualCommunityDAO individualCommunityDAO = new IndividualCommunityDAO();
	      Result result = new Result();
	      IndividualFileDAO individualFileDAO = new IndividualFileDAO();
	      int individualCommunityNumber = Integer.valueOf(req.getParameter("individualCommunityNumber"));
	      
	      req.setAttribute("board", individualCommunityDAO.select(individualCommunityNumber));
	      req.setAttribute("files", individualFileDAO.select(individualCommunityNumber));
	      System.out.println("커뮤니티 넘버 : "+individualCommunityNumber);

	      
	      //상세보기로 이동했을 때 조회수가 증가해야하므로,
	      //BoardDetail.jsp로 넘어가는 때 조회수 증가
	      individualCommunityDAO.updateHits(individualCommunityNumber);
	      result.setPath("/app/board/indiBoardDetail.jsp");

	      return result;
	   }
}
