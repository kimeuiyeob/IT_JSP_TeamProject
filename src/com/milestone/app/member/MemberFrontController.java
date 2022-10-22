package com.milestone.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;
import com.milestone.app.banners.DeleteOkController;
import com.milestone.app.notice.FilterOkController;

public class MemberFrontController extends HttpServlet {

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

		// ======================로그인 공용창=======================

		if (request.equals("/member/login.me")) {
			result = new Result();
			result.setPath("/app/login/login1.jsp");
		}

		// ======================메인 페이지=======================
		else if (request.equals("/member/index.me")) {
			result = new IndexController().execute(req, resp);
		} else if (request.equals("/member/statistics.me")) {  //통계!!
			result = new StatisticsController().execute(req, resp);
		} else if (request.equals("/member/banner.me")) {  //통계!!
			result = new BannerOkController().execute(req, resp); 
		}
		// =====================회원 목록 관리===========================

		else if (request.equals("/management/deleteOk.me")) {
			result = new DeleteOkController().execute(req, resp);
		} else if (request.equals("/management/filterOk.me")) {
			result = new FilterOkController().execute(req, resp);
		} else if (request.equals("/management/userList.me")) {
			result = new UserListController().execute(req, resp);
		}

		// =======================================================

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
