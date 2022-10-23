package com.milestone.app.individualcommunity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individualcommunity.dao.IndividualCommunityDAO;

public class BoardDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    System.out.println("indi커뮤니티 delete컨트롤러 들어옴");  
		IndividualCommunityDAO individualCommunityDAO = new IndividualCommunityDAO();
//	      FileDAO fileDAO = new FileDAO();
	      Result result = new Result();
	      int individualCommunityNumber = Integer.valueOf(req.getParameter("individualCommunityNumber"));
	      
//	      fileDAO.select(boardNumber).stream().map(file -> req.getSession().getServletContext().getRealPath("/") + "upload/" + file.getFileSystemName())
//	      .map(path -> new File(path)).forEach(f -> f.delete());
	      
	      individualCommunityDAO.delete(individualCommunityNumber);
	      
	      //삭제여서 redirect로 해줬음
	      result.setRedirect(true);
	      result.setPath(req.getContextPath() + "/board/indiBoard.indicom");
	      return result;
	   }
}
