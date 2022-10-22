package com.milestone.app.comments;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.JSONArray;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.comments.dao.CommentsDAO;

public class ListOkController implements Execute{

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("ListOk컨트롤러");
      
      resp.setContentType("text/html;charset=utf-8");
      int nurserySchoolCommunityNumber = Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
      CommentsDAO commentsDAO = new CommentsDAO();
      PrintWriter out = resp.getWriter();
      JSONArray comments = new JSONArray();
      
      commentsDAO.selectAll(nurserySchoolCommunityNumber).forEach(commentsVO -> {JSONObject comment = new JSONObject(commentsVO); comments.put(comment);});
      
      out.print(comments);
      out.close();
      
      return null;
   }
   
}