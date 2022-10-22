package com.milestone.app.comments;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.comments.dao.CommentsDAO;
import com.milestone.app.comments.vo.CommentsVO;

public class WriteOkController implements Execute{

   @Override   
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("WriteOk컨트롤러");
      
      CommentsDAO commentDAO = new CommentsDAO();
      CommentsVO commentVO = new CommentsVO();

      
      String content = req.getParameter("commentContent");
      int nurserySchoolCommunityNumber = Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
//      int nurserySchoolMemberNumber = Integer.valueOf(req.getSession("nurserySchoolMemberNumber"));
      
      req.getSession().getAttribute("");
      

      
      System.out.println(content);
      System.out.println(nurserySchoolCommunityNumber);
//      System.out.println(nurserySchoolMemberNumber);
      
      commentVO.setContent(content);
      commentVO.setNurserySchoolCommunityNumber(nurserySchoolCommunityNumber);
      commentVO.setNurserySchoolMemberNumber((Integer)(req.getSession().getAttribute("nurserySchoolMemberNumber")));
      
      commentDAO.insert(commentVO);
      
      return null;
   }

}