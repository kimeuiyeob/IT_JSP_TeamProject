package com.milestone.app.nursery;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class Scmodify2OkController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");

      Result result = new Result();

      NurseryDAO nurseryDAO = new NurseryDAO();
      NurseryVO nurseryVO = new NurseryVO();

      PrintWriter out = resp.getWriter();

      int nurseryMemberNumber = (Integer) req.getSession().getAttribute("nurseryMemberNumber");
      JSONObject myRank = new JSONObject(nurseryDAO.selectInfo(nurseryMemberNumber));

      System.out.println(myRank);

      out.print(myRank.toString());
      out.close();

      return null;
   }

}