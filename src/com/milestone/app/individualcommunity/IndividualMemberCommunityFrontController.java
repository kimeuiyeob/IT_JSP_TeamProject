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
		      System.out.println("개인커뮤 프론트컨트롤러 들어옴");
		      String requestURI = req.getRequestURI();
		      String contextPath = req.getContextPath();
		      String request = requestURI.substring(contextPath.length());

		      System.out.println(request);
		      Result result = null;
		      System.out.println(req.getSession().getAttribute("individualMemberId"));
		      
		      // ==============================보육원 게시판================================

		      if (request.equals("/board/indiBoard.indicom")) { // 커뮤니티 화면 디비 조회
		         result = new IndiBoardOkController().execute(req, resp);
		      } else if (request.equals("/board/boardwrite.indicom")) { // 커뮤니티 글작성 디비 삽입
		         result = new Result();
//		         프론트 컨트롤러가 아닌 (.bo)화면으로 바로 이동시킬 때, 쿼리스트링을 작성하면, param객체에 담기지않고 
//		         request객체에 담겨서 전송된다
		         result.setPath("/app/board/indiBoardWrite.jsp?individualMemberId="+req.getSession().getAttribute("individualMemberId"));
		      } else if (request.equals("/board/inboardwriteOk.indicom")) { //게시글 작성 디비 조회
		         result = new InboardwriteOkController().execute(req, resp);
		      } else if (request.equals("/board/boardDetailOk.indicom")) {    //게시글 상세보기
		         result = new BoardDetailOkController().execute(req, resp);
		      } else if(request.equals("/board/boardUpdate.indicom")) {      //게시글 수정
		         result = new BoardUpdateController().execute(req, resp);
		      } else if(request.equals("/board/boardUpateOk.indicom")) {   //게시글 수정완료
		         result = new BoardUpdateOkController().execute(req, resp);
		      } else if(request.equals("/board/boardDeleteOk.indicom")) {   //커뮤니티 게시글 삭제
		         result = new BoardDeleteController().execute(req, resp);
		      }

		      // ==================================================================

		      //selectAll로 목록 뽑아아왓으면 result로 담아주기
		      if (result != null) { // 일괄처리!!!
		         if (result.isRedirect()) {
		            resp.sendRedirect(result.getPath());
		         } else {
		            RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
		            dispatcher.forward(req, resp);
		         }
		      }

		   }
}
