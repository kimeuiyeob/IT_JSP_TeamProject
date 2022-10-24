package com.milestone.app.community;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;
import com.milestone.app.individualcommunity.IndiBoardOkController;

public class CommunityFrontController extends HttpServlet {

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

		// ======================관리자 커뮤=======================
		if (request.equals("/management/communityManager.manager")) { // 커뮤니티 화면 디비 조회
			result = new CommunityListOkController().execute(req, resp);

			// ======================메인 페이지=======================

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
}
