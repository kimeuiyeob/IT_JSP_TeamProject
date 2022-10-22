package com.milestone.app.nurseryschoolcommunity;

import java.io.File;
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

public class BoardUpdateOkController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("updateOk컨트롤러 들어옴");
      req.setCharacterEncoding("UTF-8");
      Result result = new Result();
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      NurserySchoolCommunityVO nurserySchoolCommunityVO = new NurserySchoolCommunityVO();
//      FileDAO fileDAO = new FileDAO();
//      FileVO fileVO = new FileVO();
//      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
//      int fileSize = 1024 * 1024 * 5; //5M 
      
//      request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
//      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
      
      String nurserySchoolCommunityTitle = req.getParameter("nurserySchoolCommunityTitle");
      String nurserySchoolCommunityContent = req.getParameter("nurserySchoolCommunityContent");
      int nurserySchoolCommunityNumber = Integer.valueOf(req.getParameter("nurserySchoolCommunityNumber"));
      System.out.println(nurserySchoolCommunityNumber);
      
      
      nurserySchoolCommunityVO.setNurserySchoolCommunityTitle(nurserySchoolCommunityTitle);
      nurserySchoolCommunityVO.setNurserySchoolCommunityContent(nurserySchoolCommunityContent);
      nurserySchoolCommunityVO.setNurserySchoolCommunityNumber(nurserySchoolCommunityNumber);
      
      nurserySchoolCommunityDAO.update(nurserySchoolCommunityVO);
      
//      fileDAO.select(boardNumber).stream().map(file -> req.getSession().getServletContext().getRealPath("/") + "upload/" + file.getFileSystemName())
//      .map(path -> new File(path)).forEach(f -> f.delete());
//      fileDAO.delete(boardNumber);
      
//      화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
//      Enumeration<String> fileNames = multipartRequest.getFileNames();
//      
//      while(fileNames.hasMoreElements()) {
//         String fileName = fileNames.nextElement();
//         String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
//         String fileSystemName = multipartRequest.getFilesystemName(fileName);
//         
//         if(fileOriginalName == null) {continue;}
         
//         fileVO.setFileOriginalName(fileOriginalName);
//         fileVO.setFileSystemName(fileSystemName);
         
//         위에서 추가된 게시글의 번호 가져오기
//         fileVO.setBoardNumber(boardNumber);
         
//         fileDAO.insert(fileVO);
//      }
      
      result.setPath("/board/boardDetailOk.schoolcom?nurserySchoolCommunityNumber="+nurserySchoolCommunityNumber);
      return result;
   }
}