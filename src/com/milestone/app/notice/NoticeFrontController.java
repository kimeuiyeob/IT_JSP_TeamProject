package com.milestone.app.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;

public class NoticeFrontController extends HttpServlet {

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

		// ==============================공지사항 관리자================================

		if (request.equals("/management/managerNoticeListOk.notice")) {
			result = new ManagerNoticeListOkController().execute(req, resp);
		} else if (request.equals("/management/writeOk.notice")) {
			result = new ManagerWriteOkController().execute(req, resp);
		} else if (request.equals("/management/update.notice")) {
			result = new ManagerUpdateController().execute(req, resp);
		} else if (request.equals("/management/updateOk.notice")) {
			result = new ManagerUpdateOkController().execute(req, resp);
		} else if (request.equals("/management/deleteOk.notice")) {
			result = new ManagerDeleteOkController().execute(req, resp);
		} else if (request.equals("/management/filterOk.notice")) {
			result = new ManagerFilterOkController().execute(req, resp);

			// ==============================공지사항 ================================
		} else if (request.equals("/member/noticeListOk.notice")) {
			result = new NoticeListOkController().execute(req, resp);
		}

		// ==================================================================

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
