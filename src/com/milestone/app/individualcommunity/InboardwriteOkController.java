package com.milestone.app.individualcommunity;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individualFile.dao.IndividualFileDAO;
import com.milestone.app.individualFile.vo.IndividualFileVO;
import com.milestone.app.individualcommunity.dao.IndividualCommunityDAO;
import com.milestone.app.individualcommunity.vo.IndividualCommunityVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class InboardwriteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      System.out.println("WriteOkController 들어옴");
	      req.setCharacterEncoding("UTF-8");
	      
	      Result result = new Result();
	      IndividualCommunityVO individualCommunityVO = new IndividualCommunityVO();
	      IndividualCommunityDAO individualCommunityDAO = new IndividualCommunityDAO();
	      IndividualFileVO individualFileVO = new IndividualFileVO();
	      IndividualFileDAO individualFileDAO = new IndividualFileDAO();
	      int currentSequence = 0;
	      
	      // +"upload/" 전까지가 WebContent 경로이다.
	      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	      int fileSize = 1024 * 1024 * 5; //5M 
	      
	      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
	      
	      individualCommunityVO.setIndividualMemberNumber((Integer)(req.getSession().getAttribute("individualMemberNumber")));
	      individualCommunityVO.setIndividualCommunityTitle((multipartRequest.getParameter("individualCommunityTitle")));
	      individualCommunityVO.setIndividualCommunityContent(multipartRequest.getParameter("individualCommunityContent"));
	      
	      //게시글 추가
	      individualCommunityDAO.insert(individualCommunityVO);
	      currentSequence = individualCommunityDAO.selectCurrentSequence();
	      
	      //화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
	      Enumeration<String> fileNames = multipartRequest.getFileNames();	//Enumeration은 순서가 대충 있는set임
	      
			while(fileNames.hasMoreElements()) {
				String fileName = fileNames.nextElement();
				String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
				String fileSystemName = multipartRequest.getFilesystemName(fileName);
				
				if(fileOriginalName == null) {continue;}
				
				individualFileVO.setFileOriginalName(fileOriginalName);
				individualFileVO.setFileSystemName(fileSystemName);
				
				//위에서 추가된 게시글의 번호 가져오기
				individualFileVO.setIndividualCommunityNumber(currentSequence);
				
				individualFileDAO.insert(individualFileVO);
			}
	      //다시 리스트로 보내줌
	      result.setPath("/board/indiBoard.indicom");
	      
	      return result;
	}

}
