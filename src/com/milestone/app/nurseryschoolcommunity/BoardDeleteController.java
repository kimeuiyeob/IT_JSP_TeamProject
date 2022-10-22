package com.milestone.app.nurseryschoolcommunity;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;

public class BoardDeleteController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
//      FileDAO fileDAO = new FileDAO();
      Result result = new Result();
      int nurserySchoolCommunityNumber = Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
      
//      fileDAO.select(boardNumber).stream().map(file -> req.getSession().getServletContext().getRealPath("/") + "upload/" + file.getFileSystemName())
//      .map(path -> new File(path)).forEach(f -> f.delete());
      
      nurserySchoolCommunityDAO.delete(nurserySchoolCommunityNumber);
      
      //삭제여서 redirect로 해줬음
      result.setRedirect(true);
      result.setPath(req.getContextPath() + "/board/schoolBoard.schoolcom");
      return result;
   }

}