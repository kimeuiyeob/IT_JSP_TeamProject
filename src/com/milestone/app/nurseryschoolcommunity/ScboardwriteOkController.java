package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.file.dao.FileDAO;
import com.milestone.app.file.vo.FileVO;
import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ScboardwriteOkController implements Execute {
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("WriteOkController 들어옴");
      req.setCharacterEncoding("UTF-8");
      
      Result result = new Result();
      NurserySchoolCommunityVO nurserySchoolCommunityVO = new NurserySchoolCommunityVO();
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      FileVO fileVO = new FileVO();
      FileDAO fileDAO = new FileDAO();
      int currentSequence = 0;
      
      // +"upload/" 전까지가 WebContent 경로이다.
      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
      int fileSize = 1024 * 1024 * 5; //5M 
      
      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
      
      nurserySchoolCommunityVO.setNurserySchoolMemberNumber((Integer)(req.getSession().getAttribute("nurserySchoolMemberNumber")));
      nurserySchoolCommunityVO.setNurserySchoolCommunityTitle((multipartRequest.getParameter("nurserySchoolCommunityTitle")));
      nurserySchoolCommunityVO.setNurserySchoolCommunityContent(multipartRequest.getParameter("nurserySchoolCommunityContent"));
      
      //게시글 추가
      nurserySchoolCommunityDAO.insert(nurserySchoolCommunityVO);
      currentSequence = nurserySchoolCommunityDAO.selectCurrentSequence();
      
      //화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
      Enumeration<String> fileNames = multipartRequest.getFileNames();	//Enumeration은 순서가 대충 있는set임
      
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
			//위에서 추가된 게시글의 번호 가져오기
			fileVO.setNurserySchoolCommunityNumber(currentSequence);
			
			fileDAO.insert(fileVO);
		}
      //다시 리스트로 보내줌
      result.setPath("/board/schoolBoard.schoolcom");
      
      return result;
   }

}