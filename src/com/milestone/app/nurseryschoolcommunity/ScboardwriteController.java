package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.file.dao.FileDAO;
import com.milestone.app.file.vo.FileVO;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ScboardwriteController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("WriteOkController 들어옴");

      req.setCharacterEncoding("UTF-8");
      
      return null;
      }
}