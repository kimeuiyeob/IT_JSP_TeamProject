package com.milestone.app.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;
import com.milestone.app.individual.Login2Controller;

public class NewsFrontController extends HttpServlet {

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

		// ======================뉴스창=======================

		if (request.equals("/news/news.news")) { //뉴스 
			result = new Result();
			result.setPath("/app/news/news.jsp");
			
		} else if (request.equals("/news/newsListOk.news")) { //뉴스 전체목록 디비조회
			result = new NewsListOkController().execute(req, resp);
			
		} else if (request.equals("/news/newsDetailOk.news")) { //뉴스 상세페이지 디비조회
			result = new NewsDetailOkController().execute(req, resp);
		}
		
		// ===================================================

		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}

	}
}
