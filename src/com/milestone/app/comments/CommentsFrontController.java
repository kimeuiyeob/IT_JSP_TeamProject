package com.milestone.app.comments;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;

public class CommentsFrontController extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI();
      String contextPath = req.getContextPath();
      String request = requestURI.substring(contextPath.length());
      Result result = null;
      
      System.out.println("프론트 들어옴");

//      댓글목록
      if(request.equals("/schoolComments/listOk.comments")) {
         result = new ListOkController().execute(req, resp);
      }
//      댓글 추가
      else if(request.equals("/schoolComments/writeOk.comments")) {
         
         new WriteOkController().execute(req, resp);
      }
//      댓글 삭제
//      댓글 수정
   }
}