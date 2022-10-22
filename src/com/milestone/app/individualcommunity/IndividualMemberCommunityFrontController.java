package com.milestone.app.individualcommunity;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;
import com.milestone.app.individual.Login2Controller;

public class IndividualMemberCommunityFrontController extends HttpServlet{

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
		
		//==============================개인 게시판================================	
		
		if(request.equals("/board/inboardOk.indicom")) { //개인커뮤니티 화면 디비 조회
			result = new InboardOkController().execute(req, resp);
		} else if (request.equals("/board/inboardwrite.indicom")){ //개인커뮤니티 글작성 디비 삽입
			result = new InboardwriteController().execute(req, resp);	
		} else if (request.equals("/board/inboardwriteOk.indicom")){ //개인커뮤니티 글작성 디비 삽입
			result = new InboardwriteOkController().execute(req, resp);
		} else if (request.equals("/board/boardDetailOk.indicom")){ //개인커뮤니티 상세페이지 디비조회
			result = new BoardDetailOkController().execute(req, resp);
		} 
		
		//==================================================================
		
		if (result != null) { //일괄처리!!!
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}
		

	}
}
